// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tv {

 int get id; String get name; String? get overview;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'media_type') String? get mediaType;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'original_name') String? get originalName;@JsonKey(name: 'first_air_date') String? get firstAirDate;@JsonKey(name: 'genre_ids') List<int> get genreIds;
/// Create a copy of Tv
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvCopyWith<Tv> get copyWith => _$TvCopyWithImpl<Tv>(this as Tv, _$identity);

  /// Serializes this Tv to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Tv;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tv&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.voteAverage, _this.voteAverage) || other.voteAverage == _this.voteAverage)&&(identical(other.backdropPath, _this.backdropPath) || other.backdropPath == _this.backdropPath)&&(identical(other.posterPath, _this.posterPath) || other.posterPath == _this.posterPath)&&(identical(other.mediaType, _this.mediaType) || other.mediaType == _this.mediaType)&&(identical(other.originalLanguage, _this.originalLanguage) || other.originalLanguage == _this.originalLanguage)&&(identical(other.originalName, _this.originalName) || other.originalName == _this.originalName)&&(identical(other.firstAirDate, _this.firstAirDate) || other.firstAirDate == _this.firstAirDate)&&const DeepCollectionEquality().equals(other.genreIds, _this.genreIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Tv;
  return Object.hash(runtimeType,_this.id,_this.name,_this.overview,_this.voteAverage,_this.backdropPath,_this.posterPath,_this.mediaType,_this.originalLanguage,_this.originalName,_this.firstAirDate,const DeepCollectionEquality().hash(_this.genreIds));
}

@override
String toString() {
  final _this = this as Tv;
  return 'Tv(id: ${_this.id}, name: ${_this.name}, overview: ${_this.overview}, voteAverage: ${_this.voteAverage}, backdropPath: ${_this.backdropPath}, posterPath: ${_this.posterPath}, mediaType: ${_this.mediaType}, originalLanguage: ${_this.originalLanguage}, originalName: ${_this.originalName}, firstAirDate: ${_this.firstAirDate}, genreIds: ${_this.genreIds})';
}


}

/// @nodoc
abstract mixin class $TvCopyWith<$Res>  {
  factory $TvCopyWith(Tv value, $Res Function(Tv) _then) = _$TvCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? overview,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'media_type') String? mediaType,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_name') String? originalName,@JsonKey(name: 'first_air_date') String? firstAirDate,@JsonKey(name: 'genre_ids') List<int> genreIds
});




}
/// @nodoc
class _$TvCopyWithImpl<$Res>
    implements $TvCopyWith<$Res> {
  _$TvCopyWithImpl(this._self, this._then);

  final Tv _self;
  final $Res Function(Tv) _then;

/// Create a copy of Tv
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? overview = freezed,Object? voteAverage = freezed,Object? backdropPath = freezed,Object? posterPath = freezed,Object? mediaType = freezed,Object? originalLanguage = freezed,Object? originalName = freezed,Object? firstAirDate = freezed,Object? genreIds = null,}) {
  return _then(Tv(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,mediaType: freezed == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [Tv].
extension TvPatterns on Tv {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tv value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tv() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tv value)  $default,){
final _that = this;
switch (_that) {
case _Tv():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tv value)?  $default,){
final _that = this;
switch (_that) {
case _Tv() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? overview, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'media_type')  String? mediaType, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'genre_ids')  List<int> genreIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tv() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.voteAverage,_that.backdropPath,_that.posterPath,_that.mediaType,_that.originalLanguage,_that.originalName,_that.firstAirDate,_that.genreIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? overview, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'media_type')  String? mediaType, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'genre_ids')  List<int> genreIds)  $default,) {final _that = this;
switch (_that) {
case _Tv():
return $default(_that.id,_that.name,_that.overview,_that.voteAverage,_that.backdropPath,_that.posterPath,_that.mediaType,_that.originalLanguage,_that.originalName,_that.firstAirDate,_that.genreIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? overview, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'media_type')  String? mediaType, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_name')  String? originalName, @JsonKey(name: 'first_air_date')  String? firstAirDate, @JsonKey(name: 'genre_ids')  List<int> genreIds)?  $default,) {final _that = this;
switch (_that) {
case _Tv() when $default != null:
return $default(_that.id,_that.name,_that.overview,_that.voteAverage,_that.backdropPath,_that.posterPath,_that.mediaType,_that.originalLanguage,_that.originalName,_that.firstAirDate,_that.genreIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tv implements Tv {
   _Tv({required this.id, required this.name, this.overview, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'media_type') this.mediaType, @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'original_name') this.originalName, @JsonKey(name: 'first_air_date') this.firstAirDate, @JsonKey(name: 'genre_ids')  List<int> genreIds = const []}): _genreIds = genreIds;
  factory _Tv.fromJson(Map<String, dynamic> json) => _$TvFromJson(json);

@override final  int id;
@override final  String name;
@override final  String? overview;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'media_type') final  String? mediaType;
@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override@JsonKey(name: 'original_name') final  String? originalName;
@override@JsonKey(name: 'first_air_date') final  String? firstAirDate;
 final  List<int> _genreIds;
@override@JsonKey(name: 'genre_ids') List<int> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}


/// Create a copy of Tv
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvCopyWith<_Tv> get copyWith => __$TvCopyWithImpl<_Tv>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tv&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.firstAirDate, firstAirDate) || other.firstAirDate == firstAirDate)&&const DeepCollectionEquality().equals(other.genreIds, _genreIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,overview,voteAverage,backdropPath,posterPath,mediaType,originalLanguage,originalName,firstAirDate,const DeepCollectionEquality().hash(_genreIds));
}

@override
String toString() {
    return 'Tv(id: $id, name: $name, overview: $overview, voteAverage: $voteAverage, backdropPath: $backdropPath, posterPath: $posterPath, mediaType: $mediaType, originalLanguage: $originalLanguage, originalName: $originalName, firstAirDate: $firstAirDate, genreIds: $genreIds)';
}


}

/// @nodoc
abstract mixin class _$TvCopyWith<$Res> implements $TvCopyWith<$Res> {
  factory _$TvCopyWith(_Tv value, $Res Function(_Tv) _then) = __$TvCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? overview,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'media_type') String? mediaType,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_name') String? originalName,@JsonKey(name: 'first_air_date') String? firstAirDate,@JsonKey(name: 'genre_ids') List<int> genreIds
});




}
/// @nodoc
class __$TvCopyWithImpl<$Res>
    implements _$TvCopyWith<$Res> {
  __$TvCopyWithImpl(this._self, this._then);

  final _Tv _self;
  final $Res Function(_Tv) _then;

/// Create a copy of Tv
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? overview = freezed,Object? voteAverage = freezed,Object? backdropPath = freezed,Object? posterPath = freezed,Object? mediaType = freezed,Object? originalLanguage = freezed,Object? originalName = freezed,Object? firstAirDate = freezed,Object? genreIds = null,}) {
  return _then(_Tv(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,mediaType: freezed == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,firstAirDate: freezed == firstAirDate ? _self.firstAirDate : firstAirDate // ignore: cast_nullable_to_non_nullable
as String?,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}


/// @nodoc
mixin _$TvList {

 List<Tv> get results;
/// Create a copy of TvList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TvListCopyWith<TvList> get copyWith => _$TvListCopyWithImpl<TvList>(this as TvList, _$identity);

  /// Serializes this TvList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as TvList;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TvList&&const DeepCollectionEquality().equals(other.results, _this.results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as TvList;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.results));
}

@override
String toString() {
  final _this = this as TvList;
  return 'TvList(results: ${_this.results})';
}


}

/// @nodoc
abstract mixin class $TvListCopyWith<$Res>  {
  factory $TvListCopyWith(TvList value, $Res Function(TvList) _then) = _$TvListCopyWithImpl;
@useResult
$Res call({
 List<Tv> results
});




}
/// @nodoc
class _$TvListCopyWithImpl<$Res>
    implements $TvListCopyWith<$Res> {
  _$TvListCopyWithImpl(this._self, this._then);

  final TvList _self;
  final $Res Function(TvList) _then;

/// Create a copy of TvList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(TvList(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Tv>,
  ));
}

}


/// Adds pattern-matching-related methods to [TvList].
extension TvListPatterns on TvList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TvList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TvList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TvList value)  $default,){
final _that = this;
switch (_that) {
case _TvList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TvList value)?  $default,){
final _that = this;
switch (_that) {
case _TvList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Tv> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TvList() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Tv> results)  $default,) {final _that = this;
switch (_that) {
case _TvList():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Tv> results)?  $default,) {final _that = this;
switch (_that) {
case _TvList() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TvList implements TvList {
   _TvList({required  List<Tv> results}): _results = results;
  factory _TvList.fromJson(Map<String, dynamic> json) => _$TvListFromJson(json);

 final  List<Tv> _results;
@override List<Tv> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of TvList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TvListCopyWith<_TvList> get copyWith => __$TvListCopyWithImpl<_TvList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TvListToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _TvList&&const DeepCollectionEquality().equals(other.results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));
}

@override
String toString() {
    return 'TvList(results: $results)';
}


}

/// @nodoc
abstract mixin class _$TvListCopyWith<$Res> implements $TvListCopyWith<$Res> {
  factory _$TvListCopyWith(_TvList value, $Res Function(_TvList) _then) = __$TvListCopyWithImpl;
@override @useResult
$Res call({
 List<Tv> results
});




}
/// @nodoc
class __$TvListCopyWithImpl<$Res>
    implements _$TvListCopyWith<$Res> {
  __$TvListCopyWithImpl(this._self, this._then);

  final _TvList _self;
  final $Res Function(_TvList) _then;

/// Create a copy of TvList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_TvList(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Tv>,
  ));
}


}

// dart format on
