// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrendingList _$TrendingListFromJson(Map<String, dynamic> json) {
  return _TrendingList.fromJson(json);
}

/// @nodoc
mixin _$TrendingList {
  List<Trending> get results => throw _privateConstructorUsedError;

  /// Serializes this TrendingList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrendingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrendingListCopyWith<TrendingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingListCopyWith<$Res> {
  factory $TrendingListCopyWith(
          TrendingList value, $Res Function(TrendingList) then) =
      _$TrendingListCopyWithImpl<$Res, TrendingList>;
  @useResult
  $Res call({List<Trending> results});
}

/// @nodoc
class _$TrendingListCopyWithImpl<$Res, $Val extends TrendingList>
    implements $TrendingListCopyWith<$Res> {
  _$TrendingListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrendingList
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
              as List<Trending>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingListImplCopyWith<$Res>
    implements $TrendingListCopyWith<$Res> {
  factory _$$TrendingListImplCopyWith(
          _$TrendingListImpl value, $Res Function(_$TrendingListImpl) then) =
      __$$TrendingListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Trending> results});
}

/// @nodoc
class __$$TrendingListImplCopyWithImpl<$Res>
    extends _$TrendingListCopyWithImpl<$Res, _$TrendingListImpl>
    implements _$$TrendingListImplCopyWith<$Res> {
  __$$TrendingListImplCopyWithImpl(
      _$TrendingListImpl _value, $Res Function(_$TrendingListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrendingList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$TrendingListImpl(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Trending>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingListImpl implements _TrendingList {
  const _$TrendingListImpl({required final List<Trending> results})
      : _results = results;

  factory _$TrendingListImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingListImplFromJson(json);

  final List<Trending> _results;
  @override
  List<Trending> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'TrendingList(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingListImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  /// Create a copy of TrendingList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingListImplCopyWith<_$TrendingListImpl> get copyWith =>
      __$$TrendingListImplCopyWithImpl<_$TrendingListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingListImplToJson(
      this,
    );
  }
}

abstract class _TrendingList implements TrendingList {
  const factory _TrendingList({required final List<Trending> results}) =
      _$TrendingListImpl;

  factory _TrendingList.fromJson(Map<String, dynamic> json) =
      _$TrendingListImpl.fromJson;

  @override
  List<Trending> get results;

  /// Create a copy of TrendingList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendingListImplCopyWith<_$TrendingListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Trending _$TrendingFromJson(Map<String, dynamic> json) {
  return _Trending.fromJson(json);
}

/// @nodoc
mixin _$Trending {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int>? get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: "first_air_date")
  String? get firstAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: "media_type")
  String? get mediaType => throw _privateConstructorUsedError;

  /// Serializes this Trending to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Trending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrendingCopyWith<Trending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingCopyWith<$Res> {
  factory $TrendingCopyWith(Trending value, $Res Function(Trending) then) =
      _$TrendingCopyWithImpl<$Res, Trending>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "genre_ids") List<int>? genreIds,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "first_air_date") String? firstAirDate,
      @JsonKey(name: "media_type") String? mediaType});
}

/// @nodoc
class _$TrendingCopyWithImpl<$Res, $Val extends Trending>
    implements $TrendingCopyWith<$Res> {
  _$TrendingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Trending
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? overview = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? popularity = freezed,
    Object? voteAverage = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? releaseDate = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? firstAirDate = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
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
      genreIds: freezed == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingImplCopyWith<$Res>
    implements $TrendingCopyWith<$Res> {
  factory _$$TrendingImplCopyWith(
          _$TrendingImpl value, $Res Function(_$TrendingImpl) then) =
      __$$TrendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "original_language") String? originalLanguage,
      @JsonKey(name: "genre_ids") List<int>? genreIds,
      @JsonKey(name: "popularity") double? popularity,
      @JsonKey(name: "vote_average") double? voteAverage,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "release_date") String? releaseDate,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "first_air_date") String? firstAirDate,
      @JsonKey(name: "media_type") String? mediaType});
}

/// @nodoc
class __$$TrendingImplCopyWithImpl<$Res>
    extends _$TrendingCopyWithImpl<$Res, _$TrendingImpl>
    implements _$$TrendingImplCopyWith<$Res> {
  __$$TrendingImplCopyWithImpl(
      _$TrendingImpl _value, $Res Function(_$TrendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Trending
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? overview = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? genreIds = freezed,
    Object? popularity = freezed,
    Object? voteAverage = freezed,
    Object? title = freezed,
    Object? originalTitle = freezed,
    Object? releaseDate = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? firstAirDate = freezed,
    Object? mediaType = freezed,
  }) {
    return _then(_$TrendingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
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
      genreIds: freezed == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: freezed == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrendingImpl implements _Trending {
  const _$TrendingImpl(
      {required this.id,
      @JsonKey(name: "overview") this.overview,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "original_language") this.originalLanguage,
      @JsonKey(name: "genre_ids") final List<int>? genreIds,
      @JsonKey(name: "popularity") this.popularity,
      @JsonKey(name: "vote_average") this.voteAverage,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "original_title") this.originalTitle,
      @JsonKey(name: "release_date") this.releaseDate,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "original_name") this.originalName,
      @JsonKey(name: "first_air_date") this.firstAirDate,
      @JsonKey(name: "media_type") this.mediaType})
      : _genreIds = genreIds;

  factory _$TrendingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrendingImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "overview")
  final String? overview;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "original_language")
  final String? originalLanguage;
  final List<int>? _genreIds;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genreIds {
    final value = _genreIds;
    if (value == null) return null;
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "popularity")
  final double? popularity;
  @override
  @JsonKey(name: "vote_average")
  final double? voteAverage;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @override
  @JsonKey(name: "release_date")
  final String? releaseDate;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "original_name")
  final String? originalName;
  @override
  @JsonKey(name: "first_air_date")
  final String? firstAirDate;
  @override
  @JsonKey(name: "media_type")
  final String? mediaType;

  @override
  String toString() {
    return 'Trending(id: $id, overview: $overview, backdropPath: $backdropPath, posterPath: $posterPath, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, voteAverage: $voteAverage, title: $title, originalTitle: $originalTitle, releaseDate: $releaseDate, name: $name, originalName: $originalName, firstAirDate: $firstAirDate, mediaType: $mediaType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      overview,
      backdropPath,
      posterPath,
      originalLanguage,
      const DeepCollectionEquality().hash(_genreIds),
      popularity,
      voteAverage,
      title,
      originalTitle,
      releaseDate,
      name,
      originalName,
      firstAirDate,
      mediaType);

  /// Create a copy of Trending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingImplCopyWith<_$TrendingImpl> get copyWith =>
      __$$TrendingImplCopyWithImpl<_$TrendingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrendingImplToJson(
      this,
    );
  }
}

abstract class _Trending implements Trending {
  const factory _Trending(
      {required final int id,
      @JsonKey(name: "overview") final String? overview,
      @JsonKey(name: "backdrop_path") final String? backdropPath,
      @JsonKey(name: "poster_path") final String? posterPath,
      @JsonKey(name: "original_language") final String? originalLanguage,
      @JsonKey(name: "genre_ids") final List<int>? genreIds,
      @JsonKey(name: "popularity") final double? popularity,
      @JsonKey(name: "vote_average") final double? voteAverage,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "original_title") final String? originalTitle,
      @JsonKey(name: "release_date") final String? releaseDate,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "original_name") final String? originalName,
      @JsonKey(name: "first_air_date") final String? firstAirDate,
      @JsonKey(name: "media_type") final String? mediaType}) = _$TrendingImpl;

  factory _Trending.fromJson(Map<String, dynamic> json) =
      _$TrendingImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "original_language")
  String? get originalLanguage;
  @override
  @JsonKey(name: "genre_ids")
  List<int>? get genreIds;
  @override
  @JsonKey(name: "popularity")
  double? get popularity;
  @override
  @JsonKey(name: "vote_average")
  double? get voteAverage;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "original_title")
  String? get originalTitle;
  @override
  @JsonKey(name: "release_date")
  String? get releaseDate;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "original_name")
  String? get originalName;
  @override
  @JsonKey(name: "first_air_date")
  String? get firstAirDate;
  @override
  @JsonKey(name: "media_type")
  String? get mediaType;

  /// Create a copy of Trending
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrendingImplCopyWith<_$TrendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
