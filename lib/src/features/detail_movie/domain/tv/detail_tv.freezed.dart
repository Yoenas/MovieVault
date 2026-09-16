// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_tv.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Season {

 int get id; String? get name; String? get overview;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'air_date') String? get airDate;@JsonKey(name: 'episode_count') int? get episodeCount;@JsonKey(name: 'season_number') int? get seasonNumber;@JsonKey(name: 'vote_average') double? get voteAverage;
/// Create a copy of Season
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SeasonCopyWith<Season> get copyWith => _$SeasonCopyWithImpl<Season>(this as Season, _$identity);

  /// Serializes this Season to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Season;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Season&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.posterPath, _this.posterPath) || other.posterPath == _this.posterPath)&&(identical(other.airDate, _this.airDate) || other.airDate == _this.airDate)&&(identical(other.episodeCount, _this.episodeCount) || other.episodeCount == _this.episodeCount)&&(identical(other.seasonNumber, _this.seasonNumber) || other.seasonNumber == _this.seasonNumber)&&(identical(other.voteAverage, _this.voteAverage) || other.voteAverage == _this.voteAverage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Season;
  return Object.hash(runtimeType,_this.id,_this.name,_this.overview,_this.posterPath,_this.airDate,_this.episodeCount,_this.seasonNumber,_this.voteAverage);
}

@override
String toString() {
  final _this = this as Season;
  return 'Season(id: ${_this.id}, name: ${_this.name}, overview: ${_this.overview}, posterPath: ${_this.posterPath}, airDate: ${_this.airDate}, episodeCount: ${_this.episodeCount}, seasonNumber: ${_this.seasonNumber}, voteAverage: ${_this.voteAverage})';
}


}

/// @nodoc
abstract mixin class $SeasonCopyWith<$Res>  {
  factory $SeasonCopyWith(Season value, $Res Function(Season) _then) = _$SeasonCopyWithImpl;
@useResult
$Res call({
 int id, String? name, String? overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'air_date') String? airDate,@JsonKey(name: 'episode_count') int? episodeCount,@JsonKey(name: 'season_number') int? seasonNumber,@JsonKey(name: 'vote_average') double? voteAverage
});




}
/// @nodoc
class _$SeasonCopyWithImpl<$Res>
    implements $SeasonCopyWith<$Res> {
  _$SeasonCopyWithImpl(this._self, this._then);

  final Season _self;
  final $Res Function(Season) _then;

/// Create a copy of Season
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? overview = freezed,Object? posterPath = freezed,Object? airDate = freezed,Object? episodeCount = freezed,Object? seasonNumber = freezed,Object? voteAverage = freezed,}) {
  return _then(Season(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,airDate: freezed == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String?,episodeCount: freezed == episodeCount ? _self.episodeCount : episodeCount // ignore: cast_nullable_to_non_nullable
as int?,seasonNumber: freezed == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [Season].
extension SeasonPatterns on Season {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Season value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Season() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Season value)  $default,){
final _that = this;
switch (_that) {
case _Season():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Season value)?  $default,){
final _that = this;
switch (_that) {
case _Season() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? name,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'air_date')  String? airDate, @JsonKey(name: 'episode_count')  int? episodeCount, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'vote_average')  double? voteAverage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Season() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.posterPath,_that.airDate,_that.episodeCount,_that.seasonNumber,_that.voteAverage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? name,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'air_date')  String? airDate, @JsonKey(name: 'episode_count')  int? episodeCount, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'vote_average')  double? voteAverage)  $default,) {final _that = this;
switch (_that) {
case _Season():
return $default(_that.id,_that.name,_that.overview,_that.posterPath,_that.airDate,_that.episodeCount,_that.seasonNumber,_that.voteAverage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? name,  String? overview, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'air_date')  String? airDate, @JsonKey(name: 'episode_count')  int? episodeCount, @JsonKey(name: 'season_number')  int? seasonNumber, @JsonKey(name: 'vote_average')  double? voteAverage)?  $default,) {final _that = this;
switch (_that) {
case _Season() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.posterPath,_that.airDate,_that.episodeCount,_that.seasonNumber,_that.voteAverage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Season implements Season {
   _Season({required this.id, this.name, this.overview, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'air_date') this.airDate, @JsonKey(name: 'episode_count') this.episodeCount, @JsonKey(name: 'season_number') this.seasonNumber, @JsonKey(name: 'vote_average') this.voteAverage});
  factory _Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);

@override final  int id;
@override final  String? name;
@override final  String? overview;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'air_date') final  String? airDate;
@override@JsonKey(name: 'episode_count') final  int? episodeCount;
@override@JsonKey(name: 'season_number') final  int? seasonNumber;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;

/// Create a copy of Season
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SeasonCopyWith<_Season> get copyWith => __$SeasonCopyWithImpl<_Season>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SeasonToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Season&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.airDate, airDate) || other.airDate == airDate)&&(identical(other.episodeCount, episodeCount) || other.episodeCount == episodeCount)&&(identical(other.seasonNumber, seasonNumber) || other.seasonNumber == seasonNumber)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,overview,posterPath,airDate,episodeCount,seasonNumber,voteAverage);
}

@override
String toString() {
    return 'Season(id: $id, name: $name, overview: $overview, posterPath: $posterPath, airDate: $airDate, episodeCount: $episodeCount, seasonNumber: $seasonNumber, voteAverage: $voteAverage)';
}


}

/// @nodoc
abstract mixin class _$SeasonCopyWith<$Res> implements $SeasonCopyWith<$Res> {
  factory _$SeasonCopyWith(_Season value, $Res Function(_Season) _then) = __$SeasonCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, String? overview,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'air_date') String? airDate,@JsonKey(name: 'episode_count') int? episodeCount,@JsonKey(name: 'season_number') int? seasonNumber,@JsonKey(name: 'vote_average') double? voteAverage
});




}
/// @nodoc
class __$SeasonCopyWithImpl<$Res>
    implements _$SeasonCopyWith<$Res> {
  __$SeasonCopyWithImpl(this._self, this._then);

  final _Season _self;
  final $Res Function(_Season) _then;

/// Create a copy of Season
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? overview = freezed,Object? posterPath = freezed,Object? airDate = freezed,Object? episodeCount = freezed,Object? seasonNumber = freezed,Object? voteAverage = freezed,}) {
  return _then(_Season(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,airDate: freezed == airDate ? _self.airDate : airDate // ignore: cast_nullable_to_non_nullable
as String?,episodeCount: freezed == episodeCount ? _self.episodeCount : episodeCount // ignore: cast_nullable_to_non_nullable
as int?,seasonNumber: freezed == seasonNumber ? _self.seasonNumber : seasonNumber // ignore: cast_nullable_to_non_nullable
as int?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$DetailTv {

 int get id; String get name; String? get overview; String? get status;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'original_name') String? get originalName;@JsonKey(name: 'first_air_date') String? get firstAirDate;@JsonKey(name: 'in_production') bool? get inProduction;@JsonKey(name: 'last_air_date') String? get lastAirDate;@JsonKey(name: 'number_of_episodes') int? get numberOfEpisodes;@JsonKey(name: 'number_of_seasons') int? get numberOfSeasons;@JsonKey(name: 'episode_run_time') List<int> get episodeRunTime; List<Genres> get genres; List<Season> get seasons;
/// Create a copy of DetailTv
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailTvCopyWith<DetailTv> get copyWith => _$DetailTvCopyWithImpl<DetailTv>(this as DetailTv, _$identity);

  /// Serializes this DetailTv to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DetailTv;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailTv&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.voteAverage, _this.voteAverage) || other.voteAverage == _this.voteAverage)&&(identical(other.backdropPath, _this.backdropPath) || other.backdropPath == _this.backdropPath)&&(identical(other.posterPath, _this.posterPath) || other.posterPath == _this.posterPath)&&(identical(other.originalLanguage, _this.originalLanguage) || other.originalLanguage == _this.originalLanguage)&&(identical(other.originalName, _this.originalName) || other.originalName == _this.originalName)&&(identical(other.firstAirDate, _this.firstAirDate) || other.firstAirDate == _this.firstAirDate)&&(identical(other.inProduction, _this.inProduction) || other.inProduction == _this.inProduction)&&(identical(other.lastAirDate, _this.lastAirDate) || other.lastAirDate == _this.lastAirDate)&&(identical(other.numberOfEpisodes, _this.numberOfEpisodes) || other.numberOfEpisodes == _this.numberOfEpisodes)&&(identical(other.numberOfSeasons, _this.numberOfSeasons) || other.numberOfSeasons == _this.numberOfSeasons)&&const DeepCollectionEquality().equals(other.episodeRunTime, _this.episodeRunTime)&&const DeepCollectionEquality().equals(other.genres, _this.genres)&&const DeepCollectionEquality().equals(other.seasons, _this.seasons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DetailTv;
  return Object.hash(runtimeType,_this.id,_this.name,_this.overview,_this.status,_this.voteAverage,_this.backdropPath,_this.posterPath,_this.originalLanguage,_this.originalName,_this.firstAirDate,_this.inProduction,_this.lastAirDate,_this.numberOfEpisodes,_this.numberOfSeasons,const DeepCollectionEquality().hash(_this.episodeRunTime),const DeepCollectionEquality().hash(_this.genres),const DeepCollectionEquality().hash(_this.seasons));
}

@override
String toString() {
  final _this = this as DetailTv;
  return 'DetailTv(id: ${_this.id}, name: ${_this.name}, overview: ${_this.overview}, status: ${_this.status}, voteAverage: ${_this.voteAverage}, backdropPath: ${_this.backdropPath}, posterPath: ${_this.posterPath}, originalLanguage: ${_this.originalLanguage}, originalName: ${_this.originalName}, firstAirDate: ${_this.firstAirDate}, inProduction: ${_this.inProduction}, lastAirDate: ${_this.lastAirDate}, numberOfEpisodes: ${_this.numberOfEpisodes}, numberOfSeasons: ${_this.numberOfSeasons}, episodeRunTime: ${_this.episodeRunTime}, genres: ${_this.genres}, seasons: ${_this.seasons})';
}


}

/// @nodoc
abstract mixin class $DetailTvCopyWith<$Res>  {
  factory $DetailTvCopyWith(DetailTv value, $Res Function(DetailTv) _then) = _$DetailTvCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? overview, String? status,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_name') String? originalName,@JsonKey(name: 'first_air_date') String? firstAirDate,@JsonKey(name: 'in_production') bool? inProduction,@JsonKey(name: 'last_air_date') String? lastAirDate,@JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,@JsonKey(name: 'number_of_seasons') int? numberOfSeasons,@JsonKey(name: 'episode_run_time') List<int> episodeRunTime, List<Genres> genres, List<Season> seasons
});




}
/// @nodoc
class _$DetailTvCopyWithImpl<$Res>
    implements $DetailTvCopyWith<$Res> {
  _$DetailTvCopyWithImpl(this._self, this._then);

  final DetailTv _self;
  final $Res Function(DetailTv) _then;

/// Create a copy of DetailTv
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? overview = freezed,Object? status = freezed,Object? voteAverage = freezed,Object? backdropPath = freezed,Object? posterPath = freezed,Object? originalLanguage = freezed,Object? originalName = freezed,Object? firstAirDate = freezed,Object? inProduction = freezed,Object? lastAirDate = freezed,Object? numberOfEpisodes = freezed,Object? numberOfSeasons = freezed,Object? episodeRunTime = null,Object? genres = null,Object? seasons = null,}) {
  return _then(DetailTv(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,inProduction: freezed == inProduction ? _self.inProduction : inProduction // ignore: cast_nullable_to_non_nullable
as bool?,lastAirDate: freezed == lastAirDate ? _self.lastAirDate : lastAirDate // ignore: cast_nullable_to_non_nullable
as String?,numberOfEpisodes: freezed == numberOfEpisodes ? _self.numberOfEpisodes : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
as int?,numberOfSeasons: freezed == numberOfSeasons ? _self.numberOfSeasons : numberOfSeasons // ignore: cast_nullable_to_non_nullable
as int?,episodeRunTime: null == episodeRunTime ? _self.episodeRunTime : episodeRunTime // ignore: cast_nullable_to_non_nullable
as List<int>,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genres>,seasons: null == seasons ? _self.seasons : seasons // ignore: cast_nullable_to_non_nullable
as List<Season>,
  ));
}

}


/// Adds pattern-matching-related methods to [DetailTv].
extension DetailTvPatterns on DetailTv {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailTv value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailTv() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailTv value)  $default,){
final _that = this;
switch (_that) {
case _DetailTv():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailTv value)?  $default,){
final _that = this;
switch (_that) {
case _DetailTv() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? overview,  String? status, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'in_production')  bool? inProduction, @JsonKey(name: 'last_air_date')  String? lastAirDate, @JsonKey(name: 'number_of_episodes')  int? numberOfEpisodes, @JsonKey(name: 'number_of_seasons')  int? numberOfSeasons, @JsonKey(name: 'episode_run_time')  List<int> episodeRunTime,  List<Genres> genres,  List<Season> seasons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailTv() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.status,_that.voteAverage,_that.backdropPath,_that.posterPath,_that.originalLanguage,_that.originalName,_that.firstAirDate,_that.inProduction,_that.lastAirDate,_that.numberOfEpisodes,_that.numberOfSeasons,_that.episodeRunTime,_that.genres,_that.seasons);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? overview,  String? status, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'in_production')  bool? inProduction, @JsonKey(name: 'last_air_date')  String? lastAirDate, @JsonKey(name: 'number_of_episodes')  int? numberOfEpisodes, @JsonKey(name: 'number_of_seasons')  int? numberOfSeasons, @JsonKey(name: 'episode_run_time')  List<int> episodeRunTime,  List<Genres> genres,  List<Season> seasons)  $default,) {final _that = this;
switch (_that) {
case _DetailTv():
return $default(_that.id,_that.name,_that.overview,_that.status,_that.voteAverage,_that.backdropPath,_that.posterPath,_that.originalLanguage,_that.originalName,_that.firstAirDate,_that.inProduction,_that.lastAirDate,_that.numberOfEpisodes,_that.numberOfSeasons,_that.episodeRunTime,_that.genres,_that.seasons);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? overview,  String? status, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'in_production')  bool? inProduction, @JsonKey(name: 'last_air_date')  String? lastAirDate, @JsonKey(name: 'number_of_episodes')  int? numberOfEpisodes, @JsonKey(name: 'number_of_seasons')  int? numberOfSeasons, @JsonKey(name: 'episode_run_time')  List<int> episodeRunTime,  List<Genres> genres,  List<Season> seasons)?  $default,) {final _that = this;
switch (_that) {
case _DetailTv() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.status,_that.voteAverage,_that.backdropPath,_that.posterPath,_that.originalLanguage,_that.originalName,_that.firstAirDate,_that.inProduction,_that.lastAirDate,_that.numberOfEpisodes,_that.numberOfSeasons,_that.episodeRunTime,_that.genres,_that.seasons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetailTv implements DetailTv {
   _DetailTv({required this.id, required this.name, this.overview, this.status, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'original_name') this.originalName, @JsonKey(name: 'first_air_date') this.firstAirDate, @JsonKey(name: 'in_production') this.inProduction, @JsonKey(name: 'last_air_date') this.lastAirDate, @JsonKey(name: 'number_of_episodes') this.numberOfEpisodes, @JsonKey(name: 'number_of_seasons') this.numberOfSeasons, @JsonKey(name: 'episode_run_time')  List<int> episodeRunTime = const [],  List<Genres> genres = const [],  List<Season> seasons = const []}): _episodeRunTime = episodeRunTime,_genres = genres,_seasons = seasons;
  factory _DetailTv.fromJson(Map<String, dynamic> json) => _$DetailTvFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? overview;
@override final  String? status;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override@JsonKey(name: 'original_name') final  String? originalName;
@override@JsonKey(name: 'first_air_date') final  String? firstAirDate;
@override@JsonKey(name: 'in_production') final  bool? inProduction;
@override@JsonKey(name: 'last_air_date') final  String? lastAirDate;
@override@JsonKey(name: 'number_of_episodes') final  int? numberOfEpisodes;
@override@JsonKey(name: 'number_of_seasons') final  int? numberOfSeasons;
 final  List<int> _episodeRunTime;
@override@JsonKey(name: 'episode_run_time') List<int> get episodeRunTime {
  if (_episodeRunTime is EqualUnmodifiableListView) return _episodeRunTime;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episodeRunTime);
}

 final  List<Genres> _genres;
@override@JsonKey() List<Genres> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

 final  List<Season> _seasons;
@override@JsonKey() List<Season> get seasons {
  if (_seasons is EqualUnmodifiableListView) return _seasons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_seasons);
}


/// Create a copy of DetailTv
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailTvCopyWith<_DetailTv> get copyWith => __$DetailTvCopyWithImpl<_DetailTv>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetailTvToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailTv&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.status, status) || other.status == status)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&(identical(other.inProduction, inProduction) || other.inProduction == inProduction)&&(identical(other.lastAirDate, lastAirDate) || other.lastAirDate == lastAirDate)&&(identical(other.numberOfEpisodes, numberOfEpisodes) || other.numberOfEpisodes == numberOfEpisodes)&&(identical(other.numberOfSeasons, numberOfSeasons) || other.numberOfSeasons == numberOfSeasons)&&const DeepCollectionEquality().equals(other.episodeRunTime, _episodeRunTime)&&const DeepCollectionEquality().equals(other.genres, _genres)&&const DeepCollectionEquality().equals(other.seasons, _seasons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,overview,status,voteAverage,backdropPath,posterPath,originalLanguage,originalName,firstAirDate,inProduction,lastAirDate,numberOfEpisodes,numberOfSeasons,const DeepCollectionEquality().hash(_episodeRunTime),const DeepCollectionEquality().hash(_genres),const DeepCollectionEquality().hash(_seasons));
}

@override
String toString() {
    return 'DetailTv(id: $id, name: $name, overview: $overview, status: $status, voteAverage: $voteAverage, backdropPath: $backdropPath, posterPath: $posterPath, originalLanguage: $originalLanguage, originalName: $originalName, firstAirDate: $firstAirDate, inProduction: $inProduction, lastAirDate: $lastAirDate, numberOfEpisodes: $numberOfEpisodes, numberOfSeasons: $numberOfSeasons, episodeRunTime: $episodeRunTime, genres: $genres, seasons: $seasons)';
}


}

/// @nodoc
abstract mixin class _$DetailTvCopyWith<$Res> implements $DetailTvCopyWith<$Res> {
  factory _$DetailTvCopyWith(_DetailTv value, $Res Function(_DetailTv) _then) = __$DetailTvCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? overview, String? status,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_name') String? originalName,@JsonKey(name: 'first_air_date') String? firstAirDate,@JsonKey(name: 'in_production') bool? inProduction,@JsonKey(name: 'last_air_date') String? lastAirDate,@JsonKey(name: 'number_of_episodes') int? numberOfEpisodes,@JsonKey(name: 'number_of_seasons') int? numberOfSeasons,@JsonKey(name: 'episode_run_time') List<int> episodeRunTime, List<Genres> genres, List<Season> seasons
});




}
/// @nodoc
class __$DetailTvCopyWithImpl<$Res>
    implements _$DetailTvCopyWith<$Res> {
  __$DetailTvCopyWithImpl(this._self, this._then);

  final _DetailTv _self;
  final $Res Function(_DetailTv) _then;

/// Create a copy of DetailTv
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? overview = freezed,Object? status = freezed,Object? voteAverage = freezed,Object? backdropPath = freezed,Object? posterPath = freezed,Object? originalLanguage = freezed,Object? originalName = freezed,Object? firstAirDate = freezed,Object? inProduction = freezed,Object? lastAirDate = freezed,Object? numberOfEpisodes = freezed,Object? numberOfSeasons = freezed,Object? episodeRunTime = null,Object? genres = null,Object? seasons = null,}) {
  return _then(_DetailTv(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,inProduction: freezed == inProduction ? _self.inProduction : inProduction // ignore: cast_nullable_to_non_nullable
as bool?,lastAirDate: freezed == lastAirDate ? _self.lastAirDate : lastAirDate // ignore: cast_nullable_to_non_nullable
as String?,numberOfEpisodes: freezed == numberOfEpisodes ? _self.numberOfEpisodes : numberOfEpisodes // ignore: cast_nullable_to_non_nullable
as int?,numberOfSeasons: freezed == numberOfSeasons ? _self.numberOfSeasons : numberOfSeasons // ignore: cast_nullable_to_non_nullable
as int?,episodeRunTime: null == episodeRunTime ? _self._episodeRunTime : episodeRunTime // ignore: cast_nullable_to_non_nullable
as List<int>,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genres>,seasons: null == seasons ? _self._seasons : seasons // ignore: cast_nullable_to_non_nullable
as List<Season>,
  ));
}


}

// dart format on
