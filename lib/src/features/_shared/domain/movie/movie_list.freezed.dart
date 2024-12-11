// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
// update any properties as needed
// after update run the code generator again:
// dart run build_runner build -d
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_type')
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds => throw _privateConstructorUsedError;

  /// Serializes this Movie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'media_type') String? mediaType,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      @JsonKey(name: 'genre_ids') List<int> genreIds});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? genreIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? overview,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'media_type') String? mediaType,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      @JsonKey(name: 'genre_ids') List<int> genreIds});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? mediaType = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? genreIds = null,
  }) {
    return _then(_$MovieImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl implements _Movie {
  _$MovieImpl(
      {required this.id,
      required this.title,
      this.overview,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'media_type') this.mediaType,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_title') this.originalTitle,
      @JsonKey(name: 'genre_ids') final List<int> genreIds = const []})
      : _genreIds = genreIds;

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

// update any properties as needed
// after update run the code generator again:
// dart run build_runner build -d
  @override
  final int id;
  @override
  final String title;
  @override
  final String? overview;
  @override
  @JsonKey(name: 'release_date')
  final String? releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'media_type')
  final String? mediaType;
  @override
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final List<int> _genreIds;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, overview: $overview, releaseDate: $releaseDate, voteAverage: $voteAverage, backdropPath: $backdropPath, posterPath: $posterPath, mediaType: $mediaType, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      overview,
      releaseDate,
      voteAverage,
      backdropPath,
      posterPath,
      mediaType,
      originalLanguage,
      originalTitle,
      const DeepCollectionEquality().hash(_genreIds));

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  factory _Movie(
      {required final int id,
      required final String title,
      final String? overview,
      @JsonKey(name: 'release_date') final String? releaseDate,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'media_type') final String? mediaType,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'original_title') final String? originalTitle,
      @JsonKey(name: 'genre_ids') final List<int> genreIds}) = _$MovieImpl;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

// update any properties as needed
// after update run the code generator again:
// dart run build_runner build -d
  @override
  int get id;
  @override
  String get title;
  @override
  String? get overview;
  @override
  @JsonKey(name: 'release_date')
  String? get releaseDate;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'media_type')
  String? get mediaType;
  @override
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  @JsonKey(name: 'genre_ids')
  List<int> get genreIds;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieList _$MovieListFromJson(Map<String, dynamic> json) {
  return _MovieList.fromJson(json);
}

/// @nodoc
mixin _$MovieList {
  List<Movie> get results => throw _privateConstructorUsedError;

  /// Serializes this MovieList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListCopyWith<MovieList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListCopyWith<$Res> {
  factory $MovieListCopyWith(MovieList value, $Res Function(MovieList) then) =
      _$MovieListCopyWithImpl<$Res, MovieList>;
  @useResult
  $Res call({List<Movie> results});
}

/// @nodoc
class _$MovieListCopyWithImpl<$Res, $Val extends MovieList>
    implements $MovieListCopyWith<$Res> {
  _$MovieListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieListImplCopyWith<$Res>
    implements $MovieListCopyWith<$Res> {
  factory _$$MovieListImplCopyWith(
          _$MovieListImpl value, $Res Function(_$MovieListImpl) then) =
      __$$MovieListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Movie> results});
}

/// @nodoc
class __$$MovieListImplCopyWithImpl<$Res>
    extends _$MovieListCopyWithImpl<$Res, _$MovieListImpl>
    implements _$$MovieListImplCopyWith<$Res> {
  __$$MovieListImplCopyWithImpl(
      _$MovieListImpl _value, $Res Function(_$MovieListImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$MovieListImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListImpl implements _MovieList {
  _$MovieListImpl({required final List<Movie> results}) : _results = results;

  factory _$MovieListImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListImplFromJson(json);

  final List<Movie> _results;
  @override
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MovieList(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListImplCopyWith<_$MovieListImpl> get copyWith =>
      __$$MovieListImplCopyWithImpl<_$MovieListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListImplToJson(
      this,
    );
  }
}

abstract class _MovieList implements MovieList {
  factory _MovieList({required final List<Movie> results}) = _$MovieListImpl;

  factory _MovieList.fromJson(Map<String, dynamic> json) =
      _$MovieListImpl.fromJson;

  @override
  List<Movie> get results;

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListImplCopyWith<_$MovieListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
