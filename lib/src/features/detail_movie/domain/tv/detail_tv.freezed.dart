// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_tv.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return _Season.fromJson(json);
}

/// @nodoc
mixin _$Season {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_date')
  String? get airDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'episode_count')
  int? get episodeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'season_number')
  int? get seasonNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;

  /// Serializes this Season to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SeasonCopyWith<Season> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonCopyWith<$Res> {
  factory $SeasonCopyWith(Season value, $Res Function(Season) then) =
      _$SeasonCopyWithImpl<$Res, Season>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'air_date') String? airDate,
      @JsonKey(name: 'episode_count') int? episodeCount,
      @JsonKey(name: 'season_number') int? seasonNumber,
      @JsonKey(name: 'vote_average') double? voteAverage});
}

/// @nodoc
class _$SeasonCopyWithImpl<$Res, $Val extends Season>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? airDate = freezed,
    Object? episodeCount = freezed,
    Object? seasonNumber = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      airDate: freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeCount: freezed == episodeCount
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      seasonNumber: freezed == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SeasonImplCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$$SeasonImplCopyWith(
          _$SeasonImpl value, $Res Function(_$SeasonImpl) then) =
      __$$SeasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'air_date') String? airDate,
      @JsonKey(name: 'episode_count') int? episodeCount,
      @JsonKey(name: 'season_number') int? seasonNumber,
      @JsonKey(name: 'vote_average') double? voteAverage});
}

/// @nodoc
class __$$SeasonImplCopyWithImpl<$Res>
    extends _$SeasonCopyWithImpl<$Res, _$SeasonImpl>
    implements _$$SeasonImplCopyWith<$Res> {
  __$$SeasonImplCopyWithImpl(
      _$SeasonImpl _value, $Res Function(_$SeasonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? airDate = freezed,
    Object? episodeCount = freezed,
    Object? seasonNumber = freezed,
    Object? voteAverage = freezed,
  }) {
    return _then(_$SeasonImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      airDate: freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episodeCount: freezed == episodeCount
          ? _value.episodeCount
          : episodeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      seasonNumber: freezed == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      voteAverage: freezed == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SeasonImpl implements _Season {
  _$SeasonImpl(
      {required this.id,
      this.name,
      this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'air_date') this.airDate,
      @JsonKey(name: 'episode_count') this.episodeCount,
      @JsonKey(name: 'season_number') this.seasonNumber,
      @JsonKey(name: 'vote_average') this.voteAverage});

  factory _$SeasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$SeasonImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  @JsonKey(name: 'air_date')
  final String? airDate;
  @override
  @JsonKey(name: 'episode_count')
  final int? episodeCount;
  @override
  @JsonKey(name: 'season_number')
  final int? seasonNumber;
  @override
  @JsonKey(name: 'vote_average')
  final double? voteAverage;

  @override
  String toString() {
    return 'Season(id: $id, name: $name, overview: $overview, posterPath: $posterPath, airDate: $airDate, episodeCount: $episodeCount, seasonNumber: $seasonNumber, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SeasonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episodeCount, episodeCount) ||
                other.episodeCount == episodeCount) &&
            (identical(other.seasonNumber, seasonNumber) ||
                other.seasonNumber == seasonNumber) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, overview, posterPath,
      airDate, episodeCount, seasonNumber, voteAverage);

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      __$$SeasonImplCopyWithImpl<_$SeasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SeasonImplToJson(
      this,
    );
  }
}

abstract class _Season implements Season {
  factory _Season(
      {required final int id,
      final String? name,
      final String? overview,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'air_date') final String? airDate,
      @JsonKey(name: 'episode_count') final int? episodeCount,
      @JsonKey(name: 'season_number') final int? seasonNumber,
      @JsonKey(name: 'vote_average') final double? voteAverage}) = _$SeasonImpl;

  factory _Season.fromJson(Map<String, dynamic> json) = _$SeasonImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  @JsonKey(name: 'air_date')
  String? get airDate;
  @override
  @JsonKey(name: 'episode_count')
  int? get episodeCount;
  @override
  @JsonKey(name: 'season_number')
  int? get seasonNumber;
  @override
  @JsonKey(name: 'vote_average')
  double? get voteAverage;

  /// Create a copy of Season
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SeasonImplCopyWith<_$SeasonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailTv _$DetailTvFromJson(Map<String, dynamic> json) {
  return _DetailTv.fromJson(json);
}

/// @nodoc
mixin _$DetailTv {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  double? get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String? get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_air_date')
  String? get firstAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_production')
  bool? get inProduction => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_air_date')
  String? get lastAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_episodes')
  int? get numberOfEpisodes => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_seasons')
  int? get numberOfSeasons => throw _privateConstructorUsedError;
  @JsonKey(name: 'episode_run_time')
  List<int> get episodeRunTime => throw _privateConstructorUsedError;
  List<Genres> get genres => throw _privateConstructorUsedError;
  List<Season> get seasons => throw _privateConstructorUsedError;

  /// Serializes this DetailTv to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailTv
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailTvCopyWith<DetailTv> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTvCopyWith<$Res> {
  factory $DetailTvCopyWith(DetailTv value, $Res Function(DetailTv) then) =
      _$DetailTvCopyWithImpl<$Res, DetailTv>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? overview,
      String? status,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_name') String? originalName,
      @JsonKey(name: 'first_air_date') String? firstAirDate,
      @JsonKey(name: 'in_production') bool? inProduction,
      @JsonKey(name: 'last_air_date') String? lastAirDate,
      @JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int? numberOfSeasons,
      @JsonKey(name: 'episode_run_time') List<int> episodeRunTime,
      List<Genres> genres,
      List<Season> seasons});
}

/// @nodoc
class _$DetailTvCopyWithImpl<$Res, $Val extends DetailTv>
    implements $DetailTvCopyWith<$Res> {
  _$DetailTvCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTv
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? overview = freezed,
    Object? status = freezed,
    Object? voteAverage = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? originalName = freezed,
    Object? firstAirDate = freezed,
    Object? inProduction = freezed,
    Object? lastAirDate = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? episodeRunTime = null,
    Object? genres = null,
    Object? seasons = null,
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
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inProduction: freezed == inProduction
          ? _value.inProduction
          : inProduction // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      episodeRunTime: null == episodeRunTime
          ? _value.episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<int>,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>,
      seasons: null == seasons
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailTvImplCopyWith<$Res>
    implements $DetailTvCopyWith<$Res> {
  factory _$$DetailTvImplCopyWith(
          _$DetailTvImpl value, $Res Function(_$DetailTvImpl) then) =
      __$$DetailTvImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? overview,
      String? status,
      @JsonKey(name: 'vote_average') double? voteAverage,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      @JsonKey(name: 'poster_path') String? posterPath,
      @JsonKey(name: 'original_language') String? originalLanguage,
      @JsonKey(name: 'original_name') String? originalName,
      @JsonKey(name: 'first_air_date') String? firstAirDate,
      @JsonKey(name: 'in_production') bool? inProduction,
      @JsonKey(name: 'last_air_date') String? lastAirDate,
      @JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') int? numberOfSeasons,
      @JsonKey(name: 'episode_run_time') List<int> episodeRunTime,
      List<Genres> genres,
      List<Season> seasons});
}

/// @nodoc
class __$$DetailTvImplCopyWithImpl<$Res>
    extends _$DetailTvCopyWithImpl<$Res, _$DetailTvImpl>
    implements _$$DetailTvImplCopyWith<$Res> {
  __$$DetailTvImplCopyWithImpl(
      _$DetailTvImpl _value, $Res Function(_$DetailTvImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTv
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? overview = freezed,
    Object? status = freezed,
    Object? voteAverage = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
    Object? originalLanguage = freezed,
    Object? originalName = freezed,
    Object? firstAirDate = freezed,
    Object? inProduction = freezed,
    Object? lastAirDate = freezed,
    Object? numberOfEpisodes = freezed,
    Object? numberOfSeasons = freezed,
    Object? episodeRunTime = null,
    Object? genres = null,
    Object? seasons = null,
  }) {
    return _then(_$DetailTvImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: freezed == firstAirDate
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      inProduction: freezed == inProduction
          ? _value.inProduction
          : inProduction // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastAirDate: freezed == lastAirDate
          ? _value.lastAirDate
          : lastAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfEpisodes: freezed == numberOfEpisodes
          ? _value.numberOfEpisodes
          : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfSeasons: freezed == numberOfSeasons
          ? _value.numberOfSeasons
          : numberOfSeasons // ignore: cast_nullable_to_non_nullable
              as int?,
      episodeRunTime: null == episodeRunTime
          ? _value._episodeRunTime
          : episodeRunTime // ignore: cast_nullable_to_non_nullable
              as List<int>,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genres>,
      seasons: null == seasons
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as List<Season>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTvImpl implements _DetailTv {
  _$DetailTvImpl(
      {required this.id,
      required this.name,
      this.overview,
      this.status,
      @JsonKey(name: 'vote_average') this.voteAverage,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      @JsonKey(name: 'poster_path') this.posterPath,
      @JsonKey(name: 'original_language') this.originalLanguage,
      @JsonKey(name: 'original_name') this.originalName,
      @JsonKey(name: 'first_air_date') this.firstAirDate,
      @JsonKey(name: 'in_production') this.inProduction,
      @JsonKey(name: 'last_air_date') this.lastAirDate,
      @JsonKey(name: 'number_of_episodes') this.numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') this.numberOfSeasons,
      @JsonKey(name: 'episode_run_time')
      final List<int> episodeRunTime = const [],
      final List<Genres> genres = const [],
      final List<Season> seasons = const []})
      : _episodeRunTime = episodeRunTime,
        _genres = genres,
        _seasons = seasons;

  factory _$DetailTvImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTvImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? overview;
  @override
  final String? status;
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
  @JsonKey(name: 'original_name')
  final String? originalName;
  @override
  @JsonKey(name: 'first_air_date')
  final String? firstAirDate;
  @override
  @JsonKey(name: 'in_production')
  final bool? inProduction;
  @override
  @JsonKey(name: 'last_air_date')
  final String? lastAirDate;
  @override
  @JsonKey(name: 'number_of_episodes')
  final int? numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  final int? numberOfSeasons;
  final List<int> _episodeRunTime;
  @override
  @JsonKey(name: 'episode_run_time')
  List<int> get episodeRunTime {
    if (_episodeRunTime is EqualUnmodifiableListView) return _episodeRunTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episodeRunTime);
  }

  final List<Genres> _genres;
  @override
  @JsonKey()
  List<Genres> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<Season> _seasons;
  @override
  @JsonKey()
  List<Season> get seasons {
    if (_seasons is EqualUnmodifiableListView) return _seasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seasons);
  }

  @override
  String toString() {
    return 'DetailTv(id: $id, name: $name, overview: $overview, status: $status, voteAverage: $voteAverage, backdropPath: $backdropPath, posterPath: $posterPath, originalLanguage: $originalLanguage, originalName: $originalName, firstAirDate: $firstAirDate, inProduction: $inProduction, lastAirDate: $lastAirDate, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, episodeRunTime: $episodeRunTime, genres: $genres, seasons: $seasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTvImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.firstAirDate, firstAirDate) ||
                other.firstAirDate == firstAirDate) &&
            (identical(other.inProduction, inProduction) ||
                other.inProduction == inProduction) &&
            (identical(other.lastAirDate, lastAirDate) ||
                other.lastAirDate == lastAirDate) &&
            (identical(other.numberOfEpisodes, numberOfEpisodes) ||
                other.numberOfEpisodes == numberOfEpisodes) &&
            (identical(other.numberOfSeasons, numberOfSeasons) ||
                other.numberOfSeasons == numberOfSeasons) &&
            const DeepCollectionEquality()
                .equals(other._episodeRunTime, _episodeRunTime) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      overview,
      status,
      voteAverage,
      backdropPath,
      posterPath,
      originalLanguage,
      originalName,
      firstAirDate,
      inProduction,
      lastAirDate,
      numberOfEpisodes,
      numberOfSeasons,
      const DeepCollectionEquality().hash(_episodeRunTime),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_seasons));

  /// Create a copy of DetailTv
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTvImplCopyWith<_$DetailTvImpl> get copyWith =>
      __$$DetailTvImplCopyWithImpl<_$DetailTvImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTvImplToJson(
      this,
    );
  }
}

abstract class _DetailTv implements DetailTv {
  factory _DetailTv(
      {required final int id,
      required final String name,
      final String? overview,
      final String? status,
      @JsonKey(name: 'vote_average') final double? voteAverage,
      @JsonKey(name: 'backdrop_path') final String? backdropPath,
      @JsonKey(name: 'poster_path') final String? posterPath,
      @JsonKey(name: 'original_language') final String? originalLanguage,
      @JsonKey(name: 'original_name') final String? originalName,
      @JsonKey(name: 'first_air_date') final String? firstAirDate,
      @JsonKey(name: 'in_production') final bool? inProduction,
      @JsonKey(name: 'last_air_date') final String? lastAirDate,
      @JsonKey(name: 'number_of_episodes') final int? numberOfEpisodes,
      @JsonKey(name: 'number_of_seasons') final int? numberOfSeasons,
      @JsonKey(name: 'episode_run_time') final List<int> episodeRunTime,
      final List<Genres> genres,
      final List<Season> seasons}) = _$DetailTvImpl;

  factory _DetailTv.fromJson(Map<String, dynamic> json) =
      _$DetailTvImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get overview;
  @override
  String? get status;
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
  @JsonKey(name: 'original_name')
  String? get originalName;
  @override
  @JsonKey(name: 'first_air_date')
  String? get firstAirDate;
  @override
  @JsonKey(name: 'in_production')
  bool? get inProduction;
  @override
  @JsonKey(name: 'last_air_date')
  String? get lastAirDate;
  @override
  @JsonKey(name: 'number_of_episodes')
  int? get numberOfEpisodes;
  @override
  @JsonKey(name: 'number_of_seasons')
  int? get numberOfSeasons;
  @override
  @JsonKey(name: 'episode_run_time')
  List<int> get episodeRunTime;
  @override
  List<Genres> get genres;
  @override
  List<Season> get seasons;

  /// Create a copy of DetailTv
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailTvImplCopyWith<_$DetailTvImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
