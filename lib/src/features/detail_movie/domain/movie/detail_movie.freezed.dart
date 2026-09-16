// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Genres {

 int get id; String get name;
/// Create a copy of Genres
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenresCopyWith<Genres> get copyWith => _$GenresCopyWithImpl<Genres>(this as Genres, _$identity);

  /// Serializes this Genres to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Genres;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Genres&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Genres;
  return Object.hash(runtimeType,_this.id,_this.name);
}

@override
String toString() {
  final _this = this as Genres;
  return 'Genres(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $GenresCopyWith<$Res>  {
  factory $GenresCopyWith(Genres value, $Res Function(Genres) _then) = _$GenresCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$GenresCopyWithImpl<$Res>
    implements $GenresCopyWith<$Res> {
  _$GenresCopyWithImpl(this._self, this._then);

  final Genres _self;
  final $Res Function(Genres) _then;

/// Create a copy of Genres
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(Genres(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Genres].
extension GenresPatterns on Genres {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Genres value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Genres() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Genres value)  $default,){
final _that = this;
switch (_that) {
case _Genres():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Genres value)?  $default,){
final _that = this;
switch (_that) {
case _Genres() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Genres() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _Genres():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _Genres() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Genres implements Genres {
   _Genres({required this.id, required this.name});
  factory _Genres.fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of Genres
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenresCopyWith<_Genres> get copyWith => __$GenresCopyWithImpl<_Genres>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenresToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Genres&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name);
}

@override
String toString() {
    return 'Genres(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$GenresCopyWith<$Res> implements $GenresCopyWith<$Res> {
  factory _$GenresCopyWith(_Genres value, $Res Function(_Genres) _then) = __$GenresCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$GenresCopyWithImpl<$Res>
    implements _$GenresCopyWith<$Res> {
  __$GenresCopyWithImpl(this._self, this._then);

  final _Genres _self;
  final $Res Function(_Genres) _then;

/// Create a copy of Genres
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_Genres(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DetailMovie {

 int get id; String get title; String? get overview; int? get runtime; String? get status;@JsonKey(name: 'release_date') String? get releaseDate;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'backdrop_path') String? get backdropPath;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'original_title') String? get originalTitle; List<Genres> get genres;
/// Create a copy of DetailMovie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailMovieCopyWith<DetailMovie> get copyWith => _$DetailMovieCopyWithImpl<DetailMovie>(this as DetailMovie, _$identity);

  /// Serializes this DetailMovie to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DetailMovie;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailMovie&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.runtime, _this.runtime) || other.runtime == _this.runtime)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.releaseDate, _this.releaseDate) || other.releaseDate == _this.releaseDate)&&(identical(other.voteAverage, _this.voteAverage) || other.voteAverage == _this.voteAverage)&&(identical(other.backdropPath, _this.backdropPath) || other.backdropPath == _this.backdropPath)&&(identical(other.posterPath, _this.posterPath) || other.posterPath == _this.posterPath)&&(identical(other.originalLanguage, _this.originalLanguage) || other.originalLanguage == _this.originalLanguage)&&(identical(other.originalTitle, _this.originalTitle) || other.originalTitle == _this.originalTitle)&&const DeepCollectionEquality().equals(other.genres, _this.genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DetailMovie;
  return Object.hash(runtimeType,_this.id,_this.title,_this.overview,_this.runtime,_this.status,_this.releaseDate,_this.voteAverage,_this.backdropPath,_this.posterPath,_this.originalLanguage,_this.originalTitle,const DeepCollectionEquality().hash(_this.genres));
}

@override
String toString() {
  final _this = this as DetailMovie;
  return 'DetailMovie(id: ${_this.id}, title: ${_this.title}, overview: ${_this.overview}, runtime: ${_this.runtime}, status: ${_this.status}, releaseDate: ${_this.releaseDate}, voteAverage: ${_this.voteAverage}, backdropPath: ${_this.backdropPath}, posterPath: ${_this.posterPath}, originalLanguage: ${_this.originalLanguage}, originalTitle: ${_this.originalTitle}, genres: ${_this.genres})';
}


}

/// @nodoc
abstract mixin class $DetailMovieCopyWith<$Res>  {
  factory $DetailMovieCopyWith(DetailMovie value, $Res Function(DetailMovie) _then) = _$DetailMovieCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? overview, int? runtime, String? status,@JsonKey(name: 'release_date') String? releaseDate,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, List<Genres> genres
});




}
/// @nodoc
class _$DetailMovieCopyWithImpl<$Res>
    implements $DetailMovieCopyWith<$Res> {
  _$DetailMovieCopyWithImpl(this._self, this._then);

  final DetailMovie _self;
  final $Res Function(DetailMovie) _then;

/// Create a copy of DetailMovie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? overview = freezed,Object? runtime = freezed,Object? status = freezed,Object? releaseDate = freezed,Object? voteAverage = freezed,Object? backdropPath = freezed,Object? posterPath = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? genres = null,}) {
  return _then(DetailMovie(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genres>,
  ));
}

}


/// Adds pattern-matching-related methods to [DetailMovie].
extension DetailMoviePatterns on DetailMovie {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailMovie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailMovie() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailMovie value)  $default,){
final _that = this;
switch (_that) {
case _DetailMovie():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailMovie value)?  $default,){
final _that = this;
switch (_that) {
case _DetailMovie() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String? overview,  int? runtime,  String? status, @JsonKey(name: 'release_date')  String? releaseDate, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  List<Genres> genres)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailMovie() when $default != null:
return $default(_that.id,_that.title,_that.overview,_that.runtime,_that.status,_that.releaseDate,_that.voteAverage,_that.backdropPath,_that.posterPath,_that.originalLanguage,_that.originalTitle,_that.genres);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String? overview,  int? runtime,  String? status, @JsonKey(name: 'release_date')  String? releaseDate, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  List<Genres> genres)  $default,) {final _that = this;
switch (_that) {
case _DetailMovie():
return $default(_that.id,_that.title,_that.overview,_that.runtime,_that.status,_that.releaseDate,_that.voteAverage,_that.backdropPath,_that.posterPath,_that.originalLanguage,_that.originalTitle,_that.genres);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String? overview,  int? runtime,  String? status, @JsonKey(name: 'release_date')  String? releaseDate, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'backdrop_path')  String? backdropPath, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  List<Genres> genres)?  $default,) {final _that = this;
switch (_that) {
case _DetailMovie() when $default != null:
return $default(_that.id,_that.title,_that.overview,_that.runtime,_that.status,_that.releaseDate,_that.voteAverage,_that.backdropPath,_that.posterPath,_that.originalLanguage,_that.originalTitle,_that.genres);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DetailMovie implements DetailMovie {
   _DetailMovie({required this.id, required this.title, this.overview, this.runtime, this.status, @JsonKey(name: 'release_date') this.releaseDate, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'backdrop_path') this.backdropPath, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'original_title') this.originalTitle,  List<Genres> genres = const []}): _genres = genres;
  factory _DetailMovie.fromJson(Map<String, dynamic> json) => _$DetailMovieFromJson(json);

@override final  int id;
@override final  String title;
@override final  String? overview;
@override final  int? runtime;
@override final  String? status;
@override@JsonKey(name: 'release_date') final  String? releaseDate;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override@JsonKey(name: 'original_title') final  String? originalTitle;
 final  List<Genres> _genres;
@override@JsonKey() List<Genres> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}


/// Create a copy of DetailMovie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailMovieCopyWith<_DetailMovie> get copyWith => __$DetailMovieCopyWithImpl<_DetailMovie>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetailMovieToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailMovie&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.status, status) || other.status == status)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&const DeepCollectionEquality().equals(other.genres, _genres));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,overview,runtime,status,releaseDate,voteAverage,backdropPath,posterPath,originalLanguage,originalTitle,const DeepCollectionEquality().hash(_genres));
}

@override
String toString() {
    return 'DetailMovie(id: $id, title: $title, overview: $overview, runtime: $runtime, status: $status, releaseDate: $releaseDate, voteAverage: $voteAverage, backdropPath: $backdropPath, posterPath: $posterPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genres: $genres)';
}


}

/// @nodoc
abstract mixin class _$DetailMovieCopyWith<$Res> implements $DetailMovieCopyWith<$Res> {
  factory _$DetailMovieCopyWith(_DetailMovie value, $Res Function(_DetailMovie) _then) = __$DetailMovieCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? overview, int? runtime, String? status,@JsonKey(name: 'release_date') String? releaseDate,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'backdrop_path') String? backdropPath,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, List<Genres> genres
});




}
/// @nodoc
class __$DetailMovieCopyWithImpl<$Res>
    implements _$DetailMovieCopyWith<$Res> {
  __$DetailMovieCopyWithImpl(this._self, this._then);

  final _DetailMovie _self;
  final $Res Function(_DetailMovie) _then;

/// Create a copy of DetailMovie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? overview = freezed,Object? runtime = freezed,Object? status = freezed,Object? releaseDate = freezed,Object? voteAverage = freezed,Object? backdropPath = freezed,Object? posterPath = freezed,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? genres = null,}) {
  return _then(_DetailMovie(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as String?,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<Genres>,
  ));
}


}

// dart format on
