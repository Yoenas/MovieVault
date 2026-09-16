// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peoples.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Peoples {

 int get id; List<Cast> get cast; List<Cast> get crew;
/// Create a copy of Peoples
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PeoplesCopyWith<Peoples> get copyWith => _$PeoplesCopyWithImpl<Peoples>(this as Peoples, _$identity);

  /// Serializes this Peoples to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Peoples;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Peoples&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.cast, _this.cast)&&const DeepCollectionEquality().equals(other.crew, _this.crew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Peoples;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.cast),const DeepCollectionEquality().hash(_this.crew));
}

@override
String toString() {
  final _this = this as Peoples;
  return 'Peoples(id: ${_this.id}, cast: ${_this.cast}, crew: ${_this.crew})';
}


}

/// @nodoc
abstract mixin class $PeoplesCopyWith<$Res>  {
  factory $PeoplesCopyWith(Peoples value, $Res Function(Peoples) _then) = _$PeoplesCopyWithImpl;
@useResult
$Res call({
 int id, List<Cast> cast, List<Cast> crew
});




}
/// @nodoc
class _$PeoplesCopyWithImpl<$Res>
    implements $PeoplesCopyWith<$Res> {
  _$PeoplesCopyWithImpl(this._self, this._then);

  final Peoples _self;
  final $Res Function(Peoples) _then;

/// Create a copy of Peoples
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? cast = null,Object? crew = null,}) {
  return _then(Peoples(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,cast: null == cast ? _self.cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>,crew: null == crew ? _self.crew : crew // ignore: cast_nullable_to_non_nullable
as List<Cast>,
  ));
}

}


/// Adds pattern-matching-related methods to [Peoples].
extension PeoplesPatterns on Peoples {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Peoples value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Peoples() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Peoples value)  $default,){
final _that = this;
switch (_that) {
case _Peoples():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Peoples value)?  $default,){
final _that = this;
switch (_that) {
case _Peoples() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<Cast> cast,  List<Cast> crew)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Peoples() when $default != null:
return $default(_that.id,_that.cast,_that.crew);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<Cast> cast,  List<Cast> crew)  $default,) {final _that = this;
switch (_that) {
case _Peoples():
return $default(_that.id,_that.cast,_that.crew);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<Cast> cast,  List<Cast> crew)?  $default,) {final _that = this;
switch (_that) {
case _Peoples() when $default != null:
return $default(_that.id,_that.cast,_that.crew);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Peoples implements Peoples {
  const _Peoples({required this.id,  List<Cast> cast = const [],  List<Cast> crew = const []}): _cast = cast,_crew = crew;
  factory _Peoples.fromJson(Map<String, dynamic> json) => _$PeoplesFromJson(json);

@override final  int id;
 final  List<Cast> _cast;
@override@JsonKey() List<Cast> get cast {
  if (_cast is EqualUnmodifiableListView) return _cast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cast);
}

 final  List<Cast> _crew;
@override@JsonKey() List<Cast> get crew {
  if (_crew is EqualUnmodifiableListView) return _crew;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_crew);
}


/// Create a copy of Peoples
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PeoplesCopyWith<_Peoples> get copyWith => __$PeoplesCopyWithImpl<_Peoples>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PeoplesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Peoples&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.cast, _cast)&&const DeepCollectionEquality().equals(other.crew, _crew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_cast),const DeepCollectionEquality().hash(_crew));
}

@override
String toString() {
    return 'Peoples(id: $id, cast: $cast, crew: $crew)';
}


}

/// @nodoc
abstract mixin class _$PeoplesCopyWith<$Res> implements $PeoplesCopyWith<$Res> {
  factory _$PeoplesCopyWith(_Peoples value, $Res Function(_Peoples) _then) = __$PeoplesCopyWithImpl;
@override @useResult
$Res call({
 int id, List<Cast> cast, List<Cast> crew
});




}
/// @nodoc
class __$PeoplesCopyWithImpl<$Res>
    implements _$PeoplesCopyWith<$Res> {
  __$PeoplesCopyWithImpl(this._self, this._then);

  final _Peoples _self;
  final $Res Function(_Peoples) _then;

/// Create a copy of Peoples
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? cast = null,Object? crew = null,}) {
  return _then(_Peoples(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,cast: null == cast ? _self._cast : cast // ignore: cast_nullable_to_non_nullable
as List<Cast>,crew: null == crew ? _self._crew : crew // ignore: cast_nullable_to_non_nullable
as List<Cast>,
  ));
}


}


/// @nodoc
mixin _$Cast {

 int get id; String? get name; String? get character; String? get department; String? get job;@JsonKey(name: "original_name") String? get originalName;@JsonKey(name: "profile_path") String? get profilePath;
/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CastCopyWith<Cast> get copyWith => _$CastCopyWithImpl<Cast>(this as Cast, _$identity);

  /// Serializes this Cast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Cast;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Cast&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.character, _this.character) || other.character == _this.character)&&(identical(other.department, _this.department) || other.department == _this.department)&&(identical(other.job, _this.job) || other.job == _this.job)&&(identical(other.originalName, _this.originalName) || other.originalName == _this.originalName)&&(identical(other.profilePath, _this.profilePath) || other.profilePath == _this.profilePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Cast;
  return Object.hash(runtimeType,_this.id,_this.name,_this.character,_this.department,_this.job,_this.originalName,_this.profilePath);
}

@override
String toString() {
  final _this = this as Cast;
  return 'Cast(id: ${_this.id}, name: ${_this.name}, character: ${_this.character}, department: ${_this.department}, job: ${_this.job}, originalName: ${_this.originalName}, profilePath: ${_this.profilePath})';
}


}

/// @nodoc
abstract mixin class $CastCopyWith<$Res>  {
  factory $CastCopyWith(Cast value, $Res Function(Cast) _then) = _$CastCopyWithImpl;
@useResult
$Res call({
 int id, String? name, String? character, String? department, String? job,@JsonKey(name: "original_name") String? originalName,@JsonKey(name: "profile_path") String? profilePath
});




}
/// @nodoc
class _$CastCopyWithImpl<$Res>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._self, this._then);

  final Cast _self;
  final $Res Function(Cast) _then;

/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? character = freezed,Object? department = freezed,Object? job = freezed,Object? originalName = freezed,Object? profilePath = freezed,}) {
  return _then(Cast(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Cast].
extension CastPatterns on Cast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Cast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Cast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Cast value)  $default,){
final _that = this;
switch (_that) {
case _Cast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Cast value)?  $default,){
final _that = this;
switch (_that) {
case _Cast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? name,  String? character,  String? department,  String? job, @JsonKey(name: "original_name")  String? originalName, @JsonKey(name: "profile_path")  String? profilePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Cast() when $default != null:
return $default(_that.id,_that.name,_that.character,_that.department,_that.job,_that.originalName,_that.profilePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? name,  String? character,  String? department,  String? job, @JsonKey(name: "original_name")  String? originalName, @JsonKey(name: "profile_path")  String? profilePath)  $default,) {final _that = this;
switch (_that) {
case _Cast():
return $default(_that.id,_that.name,_that.character,_that.department,_that.job,_that.originalName,_that.profilePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? name,  String? character,  String? department,  String? job, @JsonKey(name: "original_name")  String? originalName, @JsonKey(name: "profile_path")  String? profilePath)?  $default,) {final _that = this;
switch (_that) {
case _Cast() when $default != null:
return $default(_that.id,_that.name,_that.character,_that.department,_that.job,_that.originalName,_that.profilePath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Cast implements Cast {
  const _Cast({required this.id, this.name, this.character, this.department, this.job, @JsonKey(name: "original_name") this.originalName, @JsonKey(name: "profile_path") this.profilePath});
  factory _Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);

@override final  int id;
@override final  String? name;
@override final  String? character;
@override final  String? department;
@override final  String? job;
@override@JsonKey(name: "original_name") final  String? originalName;
@override@JsonKey(name: "profile_path") final  String? profilePath;

/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CastCopyWith<_Cast> get copyWith => __$CastCopyWithImpl<_Cast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CastToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Cast&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.character, character) || other.character == character)&&(identical(other.department, department) || other.department == department)&&(identical(other.job, job) || other.job == job)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,character,department,job,originalName,profilePath);
}

@override
String toString() {
    return 'Cast(id: $id, name: $name, character: $character, department: $department, job: $job, originalName: $originalName, profilePath: $profilePath)';
}


}

/// @nodoc
abstract mixin class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) _then) = __$CastCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, String? character, String? department, String? job,@JsonKey(name: "original_name") String? originalName,@JsonKey(name: "profile_path") String? profilePath
});




}
/// @nodoc
class __$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(this._self, this._then);

  final _Cast _self;
  final $Res Function(_Cast) _then;

/// Create a copy of Cast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? character = freezed,Object? department = freezed,Object? job = freezed,Object? originalName = freezed,Object? profilePath = freezed,}) {
  return _then(_Cast(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,job: freezed == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String?,originalName: freezed == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String?,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
