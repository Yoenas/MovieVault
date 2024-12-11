// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Genres _$GenresFromJson(Map<String, dynamic> json) {
  return _Genres.fromJson(json);
}

/// @nodoc
mixin _$Genres {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Genres to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenresCopyWith<Genres> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresCopyWith<$Res> {
  factory $GenresCopyWith(Genres value, $Res Function(Genres) then) =
      _$GenresCopyWithImpl<$Res, Genres>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GenresCopyWithImpl<$Res, $Val extends Genres>
    implements $GenresCopyWith<$Res> {
  _$GenresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenresImplCopyWith<$Res> implements $GenresCopyWith<$Res> {
  factory _$$GenresImplCopyWith(
          _$GenresImpl value, $Res Function(_$GenresImpl) then) =
      __$$GenresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$GenresImplCopyWithImpl<$Res>
    extends _$GenresCopyWithImpl<$Res, _$GenresImpl>
    implements _$$GenresImplCopyWith<$Res> {
  __$$GenresImplCopyWithImpl(
      _$GenresImpl _value, $Res Function(_$GenresImpl) _then)
      : super(_value, _then);

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GenresImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenresImpl implements _Genres {
  _$GenresImpl({required this.id, required this.name});

  factory _$GenresImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenresImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Genres(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenresImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenresImplCopyWith<_$GenresImpl> get copyWith =>
      __$$GenresImplCopyWithImpl<_$GenresImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenresImplToJson(
      this,
    );
  }
}

abstract class _Genres implements Genres {
  factory _Genres({required final int id, required final String name}) =
      _$GenresImpl;

  factory _Genres.fromJson(Map<String, dynamic> json) = _$GenresImpl.fromJson;

  @override
  int get id;
  @override
  String get name;

  /// Create a copy of Genres
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenresImplCopyWith<_$GenresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailMovie _$DetailMovieFromJson(Map<String, dynamic> json) {
  return _DetailMovie.fromJson(json);
}

/// @nodoc
mixin _$DetailMovie {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String? get originalTitle => throw _privateConstructorUsedError;
  List<Genres> get genres => throw _privateConstructorUsedError;

  /// Serializes this DetailMovie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailMovieCopyWith<DetailMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailMovieCopyWith<$Res> {
  factory $DetailMovieCopyWith(
          DetailMovie value, $Res Function(DetailMovie) then) =
      _$DetailMovieCopyWithImpl<$Res, DetailMovie>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? overview,
      int? runtime,
      String? status,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      List<Genres> genres});
}

/// @nodoc
class _$DetailMovieCopyWithImpl<$Res, $Val extends DetailMovie>
    implements $DetailMovieCopyWith<$Res> {
  _$DetailMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailMovie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? genres = null,
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
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailMovieImplCopyWith<$Res>
    implements $DetailMovieCopyWith<$Res> {
  factory _$$DetailMovieImplCopyWith(
          _$DetailMovieImpl value, $Res Function(_$DetailMovieImpl) then) =
      __$$DetailMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? overview,
      int? runtime,
      String? status,
      @JsonKey(name: 'release_date') String? releaseDate,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_title') String? originalTitle,
      List<Genres> genres});
}

/// @nodoc
class __$$DetailMovieImplCopyWithImpl<$Res>
    extends _$DetailMovieCopyWithImpl<$Res, _$DetailMovieImpl>
    implements _$$DetailMovieImplCopyWith<$Res> {
  __$$DetailMovieImplCopyWithImpl(
      _$DetailMovieImpl _value, $Res Function(_$DetailMovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailMovie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? overview = freezed,
    Object? runtime = freezed,
    Object? status = freezed,
    Object? releaseDate = freezed,
    Object? voteAverage = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? originalTitle = freezed,
    Object? genres = null,
  }) {
    return _then(_$DetailMovieImpl(
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
      runtime: freezed == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      originalLanguage: freezed == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailMovieImpl implements _DetailMovie {
  _$DetailMovieImpl(
      {required this.id,
      required this.title,
      this.overview,
      this.runtime,
      this.status,
      @JsonKey(name: 'release_date') this.releaseDate,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_title') this.originalTitle,
      final List<Genres> genres = const []})
      : _genres = genres;

  factory _$DetailMovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailMovieImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? overview;
  @override
  final int? runtime;
  @override
  final String? status;
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
  @JsonKey(name: 'original_language')
  final String? originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final List<Genres> _genres;
  @override
  @JsonKey()
  List<Genres> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  @override
  String toString() {
    return 'DetailMovie(id: $id, title: $title, overview: $overview, runtime: $runtime, status: $status, releaseDate: $releaseDate, voteAverage: $voteAverage, backdropPath: $backdropPath, posterPath: $posterPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genres: $genres)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailMovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.runtime, runtime) || other.runtime == runtime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            const DeepCollectionEquality().equals(other._genres, _genres));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      overview,
      runtime,
      status,
      releaseDate,
      voteAverage,
      backdropPath,
      posterPath,
      originalLanguage,
      originalTitle,
      const DeepCollectionEquality().hash(_genres));

  /// Create a copy of DetailMovie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailMovieImplCopyWith<_$DetailMovieImpl> get copyWith =>
      __$$DetailMovieImplCopyWithImpl<_$DetailMovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailMovieImplToJson(
      this,
    );
  }
}

abstract class _DetailMovie implements DetailMovie {
  factory _DetailMovie(
      {required final int id,
      required final String title,
      final String? overview,
      final int? runtime,
      final String? status,
      @JsonKey(name: 'release_date') final String? releaseDate,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'original_title') final String? originalTitle,
      final List<Genres> genres}) = _$DetailMovieImpl;

  factory _DetailMovie.fromJson(Map<String, dynamic> json) =
      _$DetailMovieImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get overview;
  @override
  int? get runtime;
  @override
  String? get status;
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
  @JsonKey(name: 'original_language')
  String? get originalLanguage;
  @override
  @JsonKey(name: 'original_title')
  String? get originalTitle;
  @override
  List<Genres> get genres;

  /// Create a copy of DetailMovie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailMovieImplCopyWith<_$DetailMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
