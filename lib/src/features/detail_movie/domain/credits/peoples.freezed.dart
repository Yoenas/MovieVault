// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peoples.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Peoples _$PeoplesFromJson(Map<String, dynamic> json) {
  return _Peoples.fromJson(json);
}

/// @nodoc
mixin _$Peoples {
  int get id => throw _privateConstructorUsedError;
  List<Cast> get cast => throw _privateConstructorUsedError;
  List<Cast> get crew => throw _privateConstructorUsedError;

  /// Serializes this Peoples to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Peoples
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeoplesCopyWith<Peoples> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeoplesCopyWith<$Res> {
  factory $PeoplesCopyWith(Peoples value, $Res Function(Peoples) then) =
      _$PeoplesCopyWithImpl<$Res, Peoples>;
  @useResult
  $Res call({int id, List<Cast> cast, List<Cast> crew});
}

/// @nodoc
class _$PeoplesCopyWithImpl<$Res, $Val extends Peoples>
    implements $PeoplesCopyWith<$Res> {
  _$PeoplesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Peoples
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeoplesImplCopyWith<$Res> implements $PeoplesCopyWith<$Res> {
  factory _$$PeoplesImplCopyWith(
          _$PeoplesImpl value, $Res Function(_$PeoplesImpl) then) =
      __$$PeoplesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<Cast> cast, List<Cast> crew});
}

/// @nodoc
class __$$PeoplesImplCopyWithImpl<$Res>
    extends _$PeoplesCopyWithImpl<$Res, _$PeoplesImpl>
    implements _$$PeoplesImplCopyWith<$Res> {
  __$$PeoplesImplCopyWithImpl(
      _$PeoplesImpl _value, $Res Function(_$PeoplesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Peoples
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? cast = null,
    Object? crew = null,
  }) {
    return _then(_$PeoplesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: null == cast
          ? _value._cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Cast>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeoplesImpl implements _Peoples {
  const _$PeoplesImpl(
      {required this.id,
      final List<Cast> cast = const [],
      final List<Cast> crew = const []})
      : _cast = cast,
        _crew = crew;

  factory _$PeoplesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeoplesImplFromJson(json);

  @override
  final int id;
  final List<Cast> _cast;
  @override
  @JsonKey()
  List<Cast> get cast {
    if (_cast is EqualUnmodifiableListView) return _cast;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cast);
  }

  final List<Cast> _crew;
  @override
  @JsonKey()
  List<Cast> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'Peoples(id: $id, cast: $cast, crew: $crew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeoplesImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._cast, _cast) &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_cast),
      const DeepCollectionEquality().hash(_crew));

  /// Create a copy of Peoples
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeoplesImplCopyWith<_$PeoplesImpl> get copyWith =>
      __$$PeoplesImplCopyWithImpl<_$PeoplesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeoplesImplToJson(
      this,
    );
  }
}

abstract class _Peoples implements Peoples {
  const factory _Peoples(
      {required final int id,
      final List<Cast> cast,
      final List<Cast> crew}) = _$PeoplesImpl;

  factory _Peoples.fromJson(Map<String, dynamic> json) = _$PeoplesImpl.fromJson;

  @override
  int get id;
  @override
  List<Cast> get cast;
  @override
  List<Cast> get crew;

  /// Create a copy of Peoples
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeoplesImplCopyWith<_$PeoplesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
mixin _$Cast {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get character => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get job => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get profilePath => throw _privateConstructorUsedError;

  /// Serializes this Cast to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CastCopyWith<Cast> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res, Cast>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? character,
      String? department,
      String? job,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class _$CastCopyWithImpl<$Res, $Val extends Cast>
    implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? character = freezed,
    Object? department = freezed,
    Object? job = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
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
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CastImplCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$$CastImplCopyWith(
          _$CastImpl value, $Res Function(_$CastImpl) then) =
      __$$CastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? character,
      String? department,
      String? job,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "profile_path") String? profilePath});
}

/// @nodoc
class __$$CastImplCopyWithImpl<$Res>
    extends _$CastCopyWithImpl<$Res, _$CastImpl>
    implements _$$CastImplCopyWith<$Res> {
  __$$CastImplCopyWithImpl(_$CastImpl _value, $Res Function(_$CastImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? character = freezed,
    Object? department = freezed,
    Object? job = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_$CastImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      character: freezed == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      job: freezed == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: freezed == originalName
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CastImpl implements _Cast {
  const _$CastImpl(
      {required this.id,
      this.name,
      this.character,
      this.department,
      this.job,
      @JsonKey(name: "original_name") this.originalName,
      @JsonKey(name: "profile_path") this.profilePath});

  factory _$CastImpl.fromJson(Map<String, dynamic> json) =>
      _$$CastImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? character;
  @override
  final String? department;
  @override
  final String? job;
  @override
  @JsonKey(name: "original_name")
  final String? originalName;
  @override
  @JsonKey(name: "profile_path")
  final String? profilePath;

  @override
  String toString() {
    return 'Cast(id: $id, name: $name, character: $character, department: $department, job: $job, originalName: $originalName, profilePath: $profilePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CastImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, character, department,
      job, originalName, profilePath);

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      __$$CastImplCopyWithImpl<_$CastImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CastImplToJson(
      this,
    );
  }
}

abstract class _Cast implements Cast {
  const factory _Cast(
      {required final int id,
      final String? name,
      final String? character,
      final String? department,
      final String? job,
      @JsonKey(name: "original_name") final String? originalName,
      @JsonKey(name: "profile_path") final String? profilePath}) = _$CastImpl;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$CastImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get character;
  @override
  String? get department;
  @override
  String? get job;
  @override
  @JsonKey(name: "original_name")
  String? get originalName;
  @override
  @JsonKey(name: "profile_path")
  String? get profilePath;

  /// Create a copy of Cast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CastImplCopyWith<_$CastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
