import 'dart:async';

import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper; // Singleton object of the class
  static Database? _database;
  static final _dbName = 'movie_vault.db';
  static final _dbVersion = 1;
  static final _moviesTable = 'movies';
  static final _tvSeriesTable = 'tv';

  DatabaseHelper._createInstance();
  factory DatabaseHelper() {
    //initializing the object
    _databaseHelper ??= DatabaseHelper._createInstance();
    return _databaseHelper!;
  }

  // Getter for our database
  Future<Database> get database async {
    _database ??= await initializeDatabase();
    return _database!;
  }

  // Function to initialize the database
  Future<Database> initializeDatabase() async {
    final dbPath = await sql.getDatabasesPath();
    final db = await sql.openDatabase(
      path.join(dbPath, _dbName),
      version: _dbVersion,
      onCreate: _createTable,
    );
    return db;
  }

  FutureOr<void> _createTable(db, version) async {
    Batch batch = db.batch();
    batch.execute('''
      CREATE TABLE $_moviesTable (
        id INTEGER PRIMARY KEY NOT NULL,
        backdrop_path TEXT NOT NULL,
        overview TEXT NOT NULL,
        poster_path TEXT NOT NULL,
        media_type TEXT NOT NULL,
        genre_ids TEXT NOT NULL,
        title TEXT NOT NULL,
        runtime STRING NOT NULL,
        added_on TEXT NOT NULL,
        is_watched INT NOT NULL
        )
        ''');
    batch.execute('''
      CREATE TABLE $_tvSeriesTable (
        id INTEGER PRIMARY KEY NOT NULL,
        backdrop_path TEXT NOT NULL,
        overview TEXT NOT NULL,
        poster_path TEXT NOT NULL,
        media_type TEXT NOT NULL,
        genre_ids TEXT NOT NULL,
        title TEXT NOT NULL,
        runtime STRING NOT NULL,
        added_on TEXT NOT NULL,
        is_watched INT NOT NULL
        )
        ''');
    await batch.commit();
  }

  Future<void> insertItem({
    required String mediaType,
    required Map<String, dynamic> dataMapper,
  }) async {
    final db = await database;
    db.insert(
      mediaType == 'MOVIE' ? _moviesTable : _tvSeriesTable,
      dataMapper,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  Future<T> fetchWatchList<T>({
    required String mediaType,
    required T Function(List<Map<String, Object?>> data) mapper,
  }) async {
    final db = await database;
    final data = await db.query(
      mediaType == 'MOVIE' ? _moviesTable : _tvSeriesTable,
      orderBy: 'added_on DESC',
    );
    return mapper(data);
  }

  Future<T> getItemById<T>({
    required int id,
    required String mediaType,
    required T Function(List<Map<String, Object?>> data) mapper,
  }) async {
    final db = await database;
    final data = await db.query(
      mediaType == 'MOVIE' ? _moviesTable : _tvSeriesTable,
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );
    return mapper(data);
  }

  Future<void> removeItem({
    required int id,
    required String mediaType,
  }) async {
    final db = await database;
    db.delete(
      mediaType == 'MOVIE' ? _moviesTable : _tvSeriesTable,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> restoreItem({
    required String mediaType,
    required Map<String, dynamic> mapper,
  }) async {
    final db = await database;
    db.insert(
      mediaType == 'MOVIE' ? _moviesTable : _tvSeriesTable,
      mapper,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  Future<void> updateStatusIsWatched({
    required int id,
    required String mediaType,
    required Map<String, dynamic> mapper,
  }) async {
    final db = await database;
    db.update(
      mediaType == 'MOVIE' ? _moviesTable : _tvSeriesTable,
      mapper,
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
