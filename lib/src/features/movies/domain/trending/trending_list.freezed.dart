// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrendingList {

 List<Trending> get results;
/// Create a copy of TrendingList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendingListCopyWith<TrendingList> get copyWith => _$TrendingListCopyWithImpl<TrendingList>(this as TrendingList, _$identity);

  /// Serializes this TrendingList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TrendingList;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrendingList&&const DeepCollectionEquality().equals(other.results, _this.results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TrendingList;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.results));
}

@override
String toString() {
  final _this = this as TrendingList;
  return 'TrendingList(results: ${_this.results})';
}


}

/// @nodoc
abstract mixin class $TrendingListCopyWith<$Res>  {
  factory $TrendingListCopyWith(TrendingList value, $Res Function(TrendingList) _then) = _$TrendingListCopyWithImpl;
@useResult
$Res call({
 List<Trending> results
});




}
/// @nodoc
class _$TrendingListCopyWithImpl<$Res>
    implements $TrendingListCopyWith<$Res> {
  _$TrendingListCopyWithImpl(this._self, this._then);

  final TrendingList _self;
  final $Res Function(TrendingList) _then;

/// Create a copy of TrendingList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(TrendingList(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Trending>,
  ));
}

}


/// Adds pattern-matching-related methods to [TrendingList].
extension TrendingListPatterns on TrendingList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrendingList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrendingList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrendingList value)  $default,){
final _that = this;
switch (_that) {
case _TrendingList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrendingList value)?  $default,){
final _that = this;
switch (_that) {
case _TrendingList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Trending> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrendingList() when $default != null:
return $default(_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Trending> results)  $default,) {final _that = this;
switch (_that) {
case _TrendingList():
return $default(_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Trending> results)?  $default,) {final _that = this;
switch (_that) {
case _TrendingList() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrendingList implements TrendingList {
  const _TrendingList({required  List<Trending> results}): _results = results;
  factory _TrendingList.fromJson(Map<String, dynamic> json) => _$TrendingListFromJson(json);

 final  List<Trending> _results;
@override List<Trending> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of TrendingList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendingListCopyWith<_TrendingList> get copyWith => __$TrendingListCopyWithImpl<_TrendingList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrendingListToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrendingList&&const DeepCollectionEquality().equals(other.results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));
}

@override
String toString() {
    return 'TrendingList(results: $results)';
}


}

/// @nodoc
abstract mixin class _$TrendingListCopyWith<$Res> implements $TrendingListCopyWith<$Res> {
  factory _$TrendingListCopyWith(_TrendingList value, $Res Function(_TrendingList) _then) = __$TrendingListCopyWithImpl;
@override @useResult
$Res call({
 List<Trending> results
});




}
/// @nodoc
class __$TrendingListCopyWithImpl<$Res>
    implements _$TrendingListCopyWith<$Res> {
  __$TrendingListCopyWithImpl(this._self, this._then);

  final _TrendingList _self;
  final $Res Function(_TrendingList) _then;

/// Create a copy of TrendingList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_TrendingList(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Trending>,
  ));
}


}


/// @nodoc
mixin _$Trending {

 int get id;@JsonKey(name: "overview") String? get overview;@JsonKey(name: "backdrop_path") String? get backdropPath;@JsonKey(name: "poster_path") String? get posterPath;@JsonKey(name: "original_language") String? get originalLanguage;@JsonKey(name: "genre_ids") List<int>? get genreIds;@JsonKey(name: "popularity") double? get popularity;@JsonKey(name: "vote_average") double? get voteAverage;@JsonKey(name: "title") String? get title;@JsonKey(name: "original_title") String? get originalTitle;@JsonKey(name: "release_date") String? get releaseDate;@JsonKey(name: "name") String? get name;@JsonKey(name: "original_name") String? get originalName;@JsonKey(name: "first_air_date") String? get firstAirDate;@JsonKey(name: "media_type") String? get mediaType;
/// Create a copy of Trending
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrendingCopyWith<Trending> get copyWith => _$TrendingCopyWithImpl<Trending>(this as Trending, _$identity);

  /// Serializes this Trending to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Trending;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Trending&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.backdropPath, _this.backdropPath) || other.backdropPath == _this.backdropPath)&&(identical(other.posterPath, _this.posterPath) || other.posterPath == _this.posterPath)&&(identical(other.originalLanguage, _this.originalLanguage) || other.originalLanguage == _this.originalLanguage)&&const DeepCollectionEquality().equals(other.genreIds, _this.genreIds)&&(identical(other.popularity, _this.popularity) || other.popularity == _this.popularity)&&(identical(other.voteAverage, _this.voteAverage) || other.voteAverage == _this.voteAverage)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.originalTitle, _this.originalTitle) || other.originalTitle == _this.originalTitle)&&(identical(other.releaseDate, _this.releaseDate) || other.releaseDate == _this.releaseDate)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.originalName, _this.originalName) || other.originalName == _this.originalName)&&(identical(other.firstAirDate, _this.firstAirDate) || other.firstAirDate == _this.firstAirDate)&&(identical(other.mediaType, _this.mediaType) || other.mediaType == _this.mediaType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Trending;
  return Object.hash(runtimeType,_this.id,_this.overview,_this.backdropPath,_this.posterPath,_this.originalLanguage,const DeepCollectionEquality().hash(_this.genreIds),_this.popularity,_this.voteAverage,_this.title,_this.originalTitle,_this.releaseDate,_this.name,_this.originalName,_this.firstAirDate,_this.mediaType);
}

@override
String toString() {
  final _this = this as Trending;
  return 'Trending(id: ${_this.id}, overview: ${_this.overview}, backdropPath: ${_this.backdropPath}, posterPath: ${_this.posterPath}, originalLanguage: ${_this.originalLanguage}, genreIds: ${_this.genreIds}, popularity: ${_this.popularity}, voteAverage: ${_this.voteAverage}, title: ${_this.title}, originalTitle: ${_this.originalTitle}, releaseDate: ${_this.releaseDate}, name: ${_this.name}, originalName: ${_this.originalName}, firstAirDate: ${_this.firstAirDate}, mediaType: ${_this.mediaType})';
}


}

/// @nodoc
abstract mixin class $TrendingCopyWith<$Res>  {
  factory $TrendingCopyWith(Trending value, $Res Function(Trending) _then) = _$TrendingCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: "overview") String? overview,@JsonKey(name: "backdrop_path") String? backdropPath,@JsonKey(name: "poster_path") String? posterPath,@JsonKey(name: "original_language") String? originalLanguage,@JsonKey(name: "genre_ids") List<int>? genreIds,@JsonKey(name: "popularity") double? popularity,@JsonKey(name: "vote_average") double? voteAverage,@JsonKey(name: "title") String? title,@JsonKey(name: "original_title") String? originalTitle,@JsonKey(name: "release_date") String? releaseDate,@JsonKey(name: "name") String? name,@JsonKey(name: "original_name") String? originalName,@JsonKey(name: "first_air_date") String? firstAirDate,@JsonKey(name: "media_type") String? mediaType
});




}
/// @nodoc
class _$TrendingCopyWithImpl<$Res>
    implements $TrendingCopyWith<$Res> {
  _$TrendingCopyWithImpl(this._self, this._then);

  final Trending _self;
  final $Res Function(Trending) _then;

/// Create a copy of Trending
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? overview = freezed,Object? backdropPath = freezed,Object? posterPath = freezed,Object? originalLanguage = freezed,Object? genreIds = freezed,Object? popularity = freezed,Object? voteAverage = freezed,Object? title = freezed,Object? originalTitle = freezed,Object? releaseDate = freezed,Object? name = freezed,Object? originalName = freezed,Object? firstAirDate = freezed,Object? mediaType = freezed,}) {
  return _then(Trending(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,mediaType: freezed == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Trending].
extension TrendingPatterns on Trending {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Trending value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Trending() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Trending value)  $default,){
final _that = this;
switch (_that) {
case _Trending():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Trending value)?  $default,){
final _that = this;
switch (_that) {
case _Trending() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: "overview")  String? overview, @JsonKey(name: "backdrop_path")  String? backdropPath, @JsonKey(name: "poster_path")  String? posterPath, @JsonKey(name: "original_language")  String? originalLanguage, @JsonKey(name: "genre_ids")  List<int>? genreIds, @JsonKey(name: "popularity")  double? popularity, @JsonKey(name: "vote_average")  double? voteAverage, @JsonKey(name: "title")  String? title, @JsonKey(name: "original_title")  String? originalTitle, @JsonKey(name: "release_date")  String? releaseDate, @JsonKey(name: "name")  String? name, @JsonKey(name: "original_name")  String? originalName, @JsonKey(name: "first_air_date")  String? firstAirDate, @JsonKey(name: "media_type")  String? mediaType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Trending() when $default != null:
return $default(_that.id,_that.overview,_that.backdropPath,_that.posterPath,_that.originalLanguage,_that.genreIds,_that.popularity,_that.voteAverage,_that.title,_that.originalTitle,_that.releaseDate,_that.name,_that.originalName,_that.firstAirDate,_that.mediaType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: "overview")  String? overview, @JsonKey(name: "backdrop_path")  String? backdropPath, @JsonKey(name: "poster_path")  String? posterPath, @JsonKey(name: "original_language")  String? originalLanguage, @JsonKey(name: "genre_ids")  List<int>? genreIds, @JsonKey(name: "popularity")  double? popularity, @JsonKey(name: "vote_average")  double? voteAverage, @JsonKey(name: "title")  String? title, @JsonKey(name: "original_title")  String? originalTitle, @JsonKey(name: "release_date")  String? releaseDate, @JsonKey(name: "name")  String? name, @JsonKey(name: "original_name")  String? originalName, @JsonKey(name: "first_air_date")  String? firstAirDate, @JsonKey(name: "media_type")  String? mediaType)  $default,) {final _that = this;
switch (_that) {
case _Trending():
return $default(_that.id,_that.overview,_that.backdropPath,_that.posterPath,_that.originalLanguage,_that.genreIds,_that.popularity,_that.voteAverage,_that.title,_that.originalTitle,_that.releaseDate,_that.name,_that.originalName,_that.firstAirDate,_that.mediaType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: "overview")  String? overview, @JsonKey(name: "backdrop_path")  String? backdropPath, @JsonKey(name: "poster_path")  String? posterPath, @JsonKey(name: "original_language")  String? originalLanguage, @JsonKey(name: "genre_ids")  List<int>? genreIds, @JsonKey(name: "popularity")  double? popularity, @JsonKey(name: "vote_average")  double? voteAverage, @JsonKey(name: "title")  String? title, @JsonKey(name: "original_title")  String? originalTitle, @JsonKey(name: "release_date")  String? releaseDate, @JsonKey(name: "name")  String? name, @JsonKey(name: "original_name")  String? originalName, @JsonKey(name: "first_air_date")  String? firstAirDate, @JsonKey(name: "media_type")  String? mediaType)?  $default,) {final _that = this;
switch (_that) {
case _Trending() when $default != null:
return $default(_that.id,_that.overview,_that.backdropPath,_that.posterPath,_that.originalLanguage,_that.genreIds,_that.popularity,_that.voteAverage,_that.title,_that.originalTitle,_that.releaseDate,_that.name,_that.originalName,_that.firstAirDate,_that.mediaType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Trending implements Trending {
  const _Trending({required this.id, @JsonKey(name: "overview") this.overview, @JsonKey(name: "backdrop_path") this.backdropPath, @JsonKey(name: "poster_path") this.posterPath, @JsonKey(name: "original_language") this.originalLanguage, @JsonKey(name: "genre_ids")  List<int>? genreIds, @JsonKey(name: "popularity") this.popularity, @JsonKey(name: "vote_average") this.voteAverage, @JsonKey(name: "title") this.title, @JsonKey(name: "original_title") this.originalTitle, @JsonKey(name: "release_date") this.releaseDate, @JsonKey(name: "name") this.name, @JsonKey(name: "original_name") this.originalName, @JsonKey(name: "first_air_date") this.firstAirDate, @JsonKey(name: "media_type") this.mediaType}): _genreIds = genreIds;
  factory _Trending.fromJson(Map<String, dynamic> json) => _$TrendingFromJson(json);

@override final  int id;
@override@JsonKey(name: "overview") final  String? overview;
@override@JsonKey(name: "backdrop_path") final  String? backdropPath;
@override@JsonKey(name: "poster_path") final  String? posterPath;
@override@JsonKey(name: "original_language") final  String? originalLanguage;
 final  List<int>? _genreIds;
@override@JsonKey(name: "genre_ids") List<int>? get genreIds {
  final value = _genreIds;
  if (value == null) return null;
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: "popularity") final  double? popularity;
@override@JsonKey(name: "vote_average") final  double? voteAverage;
@override@JsonKey(name: "title") final  String? title;
@override@JsonKey(name: "original_title") final  String? originalTitle;
@override@JsonKey(name: "release_date") final  String? releaseDate;
@override@JsonKey(name: "name") final  String? name;
@override@JsonKey(name: "original_name") final  String? originalName;
@override@JsonKey(name: "first_air_date") final  String? firstAirDate;
@override@JsonKey(name: "media_type") final  String? mediaType;

/// Create a copy of Trending
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrendingCopyWith<_Trending> get copyWith => __$TrendingCopyWithImpl<_Trending>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrendingToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trending&&(identical(other.id, id) || other.id == id)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&const DeepCollectionEquality().equals(other.genreIds, _genreIds)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.title, title) || other.title == title)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,overview,backdropPath,posterPath,originalLanguage,const DeepCollectionEquality().hash(_genreIds),popularity,voteAverage,title,originalTitle,releaseDate,name,originalName,firstAirDate,mediaType);
}

@override
String toString() {
    return 'Trending(id: $id, overview: $overview, backdropPath: $backdropPath, posterPath: $posterPath, originalLanguage: $originalLanguage, genreIds: $genreIds, popularity: $popularity, voteAverage: $voteAverage, title: $title, originalTitle: $originalTitle, releaseDate: $releaseDate, name: $name, originalName: $originalName, firstAirDate: $firstAirDate, mediaType: $mediaType)';
}


}

/// @nodoc
abstract mixin class _$TrendingCopyWith<$Res> implements $TrendingCopyWith<$Res> {
  factory _$TrendingCopyWith(_Trending value, $Res Function(_Trending) _then) = __$TrendingCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: "overview") String? overview,@JsonKey(name: "backdrop_path") String? backdropPath,@JsonKey(name: "poster_path") String? posterPath,@JsonKey(name: "original_language") String? originalLanguage,@JsonKey(name: "genre_ids") List<int>? genreIds,@JsonKey(name: "popularity") double? popularity,@JsonKey(name: "vote_average") double? voteAverage,@JsonKey(name: "title") String? title,@JsonKey(name: "original_title") String? originalTitle,@JsonKey(name: "release_date") String? releaseDate,@JsonKey(name: "name") String? name,@JsonKey(name: "original_name") String? originalName,@JsonKey(name: "first_air_date") String? firstAirDate,@JsonKey(name: "media_type") String? mediaType
});




}
/// @nodoc
class __$TrendingCopyWithImpl<$Res>
    implements _$TrendingCopyWith<$Res> {
  __$TrendingCopyWithImpl(this._self, this._then);

  final _Trending _self;
  final $Res Function(_Trending) _then;

/// Create a copy of Trending
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? overview = freezed,Object? backdropPath = freezed,Object? posterPath = freezed,Object? originalLanguage = freezed,Object? genreIds = freezed,Object? popularity = freezed,Object? voteAverage = freezed,Object? title = freezed,Object? originalTitle = freezed,Object? releaseDate = freezed,Object? name = freezed,Object? originalName = freezed,Object? firstAirDate = freezed,Object? mediaType = freezed,}) {
  return _then(_Trending(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,genreIds: freezed == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,mediaType: freezed == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
