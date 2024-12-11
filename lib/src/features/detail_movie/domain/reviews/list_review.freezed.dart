// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ListReview _$ListReviewFromJson(Map<String, dynamic> json) {
  return _ListReview.fromJson(json);
}

/// @nodoc
mixin _$ListReview {
  int get id => throw _privateConstructorUsedError; // id movie
  List<Review> get results => throw _privateConstructorUsedError;

  /// Serializes this ListReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListReviewCopyWith<ListReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListReviewCopyWith<$Res> {
  factory $ListReviewCopyWith(
          ListReview value, $Res Function(ListReview) then) =
      _$ListReviewCopyWithImpl<$Res, ListReview>;
  @useResult
  $Res call({int id, List<Review> results});
}

/// @nodoc
class _$ListReviewCopyWithImpl<$Res, $Val extends ListReview>
    implements $ListReviewCopyWith<$Res> {
  _$ListReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListReviewImplCopyWith<$Res>
    implements $ListReviewCopyWith<$Res> {
  factory _$$ListReviewImplCopyWith(
          _$ListReviewImpl value, $Res Function(_$ListReviewImpl) then) =
      __$$ListReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<Review> results});
}

/// @nodoc
class __$$ListReviewImplCopyWithImpl<$Res>
    extends _$ListReviewCopyWithImpl<$Res, _$ListReviewImpl>
    implements _$$ListReviewImplCopyWith<$Res> {
  __$$ListReviewImplCopyWithImpl(
      _$ListReviewImpl _value, $Res Function(_$ListReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? results = null,
  }) {
    return _then(_$ListReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListReviewImpl implements _ListReview {
  const _$ListReviewImpl(
      {required this.id, final List<Review> results = const []})
      : _results = results;

  factory _$ListReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListReviewImplFromJson(json);

  @override
  final int id;
// id movie
  final List<Review> _results;
// id movie
  @override
  @JsonKey()
  List<Review> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'ListReview(id: $id, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_results));

  /// Create a copy of ListReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListReviewImplCopyWith<_$ListReviewImpl> get copyWith =>
      __$$ListReviewImplCopyWithImpl<_$ListReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListReviewImplToJson(
      this,
    );
  }
}

abstract class _ListReview implements ListReview {
  const factory _ListReview(
      {required final int id, final List<Review> results}) = _$ListReviewImpl;

  factory _ListReview.fromJson(Map<String, dynamic> json) =
      _$ListReviewImpl.fromJson;

  @override
  int get id; // id movie
  @override
  List<Review> get results;

  /// Create a copy of ListReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListReviewImplCopyWith<_$ListReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  String get id => throw _privateConstructorUsedError; // id review
  String get author => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "author_details")
  AuthorDetails get authorDetails => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {String id,
      String author,
      String? content,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "author_details") AuthorDetails authorDetails});

  $AuthorDetailsCopyWith<$Res> get authorDetails;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? authorDetails = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      authorDetails: null == authorDetails
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetails,
    ) as $Val);
  }

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorDetailsCopyWith<$Res> get authorDetails {
    return $AuthorDetailsCopyWith<$Res>(_value.authorDetails, (value) {
      return _then(_value.copyWith(authorDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(
          _$ReviewImpl value, $Res Function(_$ReviewImpl) then) =
      __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String author,
      String? content,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt,
      @JsonKey(name: "author_details") AuthorDetails authorDetails});

  @override
  $AuthorDetailsCopyWith<$Res> get authorDetails;
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl>
    implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(
      _$ReviewImpl _value, $Res Function(_$ReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? authorDetails = null,
  }) {
    return _then(_$ReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      authorDetails: null == authorDetails
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {required this.id,
      required this.author,
      this.content,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "author_details") required this.authorDetails});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewImplFromJson(json);

  @override
  final String id;
// id review
  @override
  final String author;
  @override
  final String? content;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;
  @override
  @JsonKey(name: "author_details")
  final AuthorDetails authorDetails;

  @override
  String toString() {
    return 'Review(id: $id, author: $author, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, authorDetails: $authorDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.authorDetails, authorDetails) ||
                other.authorDetails == authorDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, author, content, createdAt, updatedAt, authorDetails);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required final String id,
      required final String author,
      final String? content,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt,
      @JsonKey(name: "author_details")
      required final AuthorDetails authorDetails}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  String get id; // id review
  @override
  String get author;
  @override
  String? get content;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(name: "author_details")
  AuthorDetails get authorDetails;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthorDetails _$AuthorDetailsFromJson(Map<String, dynamic> json) {
  return _AuthorDetails.fromJson(json);
}

/// @nodoc
mixin _$AuthorDetails {
  String? get name => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "avatar_path")
  String? get avatarPath => throw _privateConstructorUsedError;

  /// Serializes this AuthorDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthorDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorDetailsCopyWith<AuthorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorDetailsCopyWith<$Res> {
  factory $AuthorDetailsCopyWith(
          AuthorDetails value, $Res Function(AuthorDetails) then) =
      _$AuthorDetailsCopyWithImpl<$Res, AuthorDetails>;
  @useResult
  $Res call(
      {String? name,
      String? username,
      int? rating,
      @JsonKey(name: "avatar_path") String? avatarPath});
}

/// @nodoc
class _$AuthorDetailsCopyWithImpl<$Res, $Val extends AuthorDetails>
    implements $AuthorDetailsCopyWith<$Res> {
  _$AuthorDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthorDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? rating = freezed,
    Object? avatarPath = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorDetailsImplCopyWith<$Res>
    implements $AuthorDetailsCopyWith<$Res> {
  factory _$$AuthorDetailsImplCopyWith(
          _$AuthorDetailsImpl value, $Res Function(_$AuthorDetailsImpl) then) =
      __$$AuthorDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? username,
      int? rating,
      @JsonKey(name: "avatar_path") String? avatarPath});
}

/// @nodoc
class __$$AuthorDetailsImplCopyWithImpl<$Res>
    extends _$AuthorDetailsCopyWithImpl<$Res, _$AuthorDetailsImpl>
    implements _$$AuthorDetailsImplCopyWith<$Res> {
  __$$AuthorDetailsImplCopyWithImpl(
      _$AuthorDetailsImpl _value, $Res Function(_$AuthorDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthorDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? rating = freezed,
    Object? avatarPath = freezed,
  }) {
    return _then(_$AuthorDetailsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      avatarPath: freezed == avatarPath
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorDetailsImpl implements _AuthorDetails {
  const _$AuthorDetailsImpl(
      {this.name,
      this.username,
      this.rating,
      @JsonKey(name: "avatar_path") this.avatarPath});

  factory _$AuthorDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorDetailsImplFromJson(json);

  @override
  final String? name;
  @override
  final String? username;
  @override
  final int? rating;
  @override
  @JsonKey(name: "avatar_path")
  final String? avatarPath;

  @override
  String toString() {
    return 'AuthorDetails(name: $name, username: $username, rating: $rating, avatarPath: $avatarPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorDetailsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.avatarPath, avatarPath) ||
                other.avatarPath == avatarPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, username, rating, avatarPath);

  /// Create a copy of AuthorDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorDetailsImplCopyWith<_$AuthorDetailsImpl> get copyWith =>
      __$$AuthorDetailsImplCopyWithImpl<_$AuthorDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorDetailsImplToJson(
      this,
    );
  }
}

abstract class _AuthorDetails implements AuthorDetails {
  const factory _AuthorDetails(
          {final String? name,
          final String? username,
          final int? rating,
          @JsonKey(name: "avatar_path") final String? avatarPath}) =
      _$AuthorDetailsImpl;

  factory _AuthorDetails.fromJson(Map<String, dynamic> json) =
      _$AuthorDetailsImpl.fromJson;

  @override
  String? get name;
  @override
  String? get username;
  @override
  int? get rating;
  @override
  @JsonKey(name: "avatar_path")
  String? get avatarPath;

  /// Create a copy of AuthorDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorDetailsImplCopyWith<_$AuthorDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
