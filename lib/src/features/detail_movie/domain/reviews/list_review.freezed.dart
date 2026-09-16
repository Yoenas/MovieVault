// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListReview {

 int get id; List<Review> get results;
/// Create a copy of ListReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListReviewCopyWith<ListReview> get copyWith => _$ListReviewCopyWithImpl<ListReview>(this as ListReview, _$identity);

  /// Serializes this ListReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ListReview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListReview&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.results, _this.results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ListReview;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.results));
}

@override
String toString() {
  final _this = this as ListReview;
  return 'ListReview(id: ${_this.id}, results: ${_this.results})';
}


}

/// @nodoc
abstract mixin class $ListReviewCopyWith<$Res>  {
  factory $ListReviewCopyWith(ListReview value, $Res Function(ListReview) _then) = _$ListReviewCopyWithImpl;
@useResult
$Res call({
 int id, List<Review> results
});




}
/// @nodoc
class _$ListReviewCopyWithImpl<$Res>
    implements $ListReviewCopyWith<$Res> {
  _$ListReviewCopyWithImpl(this._self, this._then);

  final ListReview _self;
  final $Res Function(ListReview) _then;

/// Create a copy of ListReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? results = null,}) {
  return _then(ListReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<Review>,
  ));
}

}


/// Adds pattern-matching-related methods to [ListReview].
extension ListReviewPatterns on ListReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListReview value)  $default,){
final _that = this;
switch (_that) {
case _ListReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListReview value)?  $default,){
final _that = this;
switch (_that) {
case _ListReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<Review> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListReview() when $default != null:
return $default(_that.id,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<Review> results)  $default,) {final _that = this;
switch (_that) {
case _ListReview():
return $default(_that.id,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<Review> results)?  $default,) {final _that = this;
switch (_that) {
case _ListReview() when $default != null:
return $default(_that.id,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListReview implements ListReview {
  const _ListReview({required this.id,  List<Review> results = const []}): _results = results;
  factory _ListReview.fromJson(Map<String, dynamic> json) => _$ListReviewFromJson(json);

@override final  int id;
 final  List<Review> _results;
@override@JsonKey() List<Review> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of ListReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListReviewCopyWith<_ListReview> get copyWith => __$ListReviewCopyWithImpl<_ListReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListReviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListReview&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_results));
}

@override
String toString() {
    return 'ListReview(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class _$ListReviewCopyWith<$Res> implements $ListReviewCopyWith<$Res> {
  factory _$ListReviewCopyWith(_ListReview value, $Res Function(_ListReview) _then) = __$ListReviewCopyWithImpl;
@override @useResult
$Res call({
 int id, List<Review> results
});




}
/// @nodoc
class __$ListReviewCopyWithImpl<$Res>
    implements _$ListReviewCopyWith<$Res> {
  __$ListReviewCopyWithImpl(this._self, this._then);

  final _ListReview _self;
  final $Res Function(_ListReview) _then;

/// Create a copy of ListReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? results = null,}) {
  return _then(_ListReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<Review>,
  ));
}


}


/// @nodoc
mixin _$Review {

 String get id; String get author; String? get content;@JsonKey(name: "created_at") String? get createdAt;@JsonKey(name: "updated_at") String? get updatedAt;@JsonKey(name: "author_details") AuthorDetails get authorDetails;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Review;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.author, _this.author) || other.author == _this.author)&&(identical(other.content, _this.content) || other.content == _this.content)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.updatedAt, _this.updatedAt) || other.updatedAt == _this.updatedAt)&&(identical(other.authorDetails, _this.authorDetails) || other.authorDetails == _this.authorDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Review;
  return Object.hash(runtimeType,_this.id,_this.author,_this.content,_this.createdAt,_this.updatedAt,_this.authorDetails);
}

@override
String toString() {
  final _this = this as Review;
  return 'Review(id: ${_this.id}, author: ${_this.author}, content: ${_this.content}, createdAt: ${_this.createdAt}, updatedAt: ${_this.updatedAt}, authorDetails: ${_this.authorDetails})';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String id, String author, String? content,@JsonKey(name: "created_at") String? createdAt,@JsonKey(name: "updated_at") String? updatedAt,@JsonKey(name: "author_details") AuthorDetails authorDetails
});


$AuthorDetailsCopyWith<$Res> get authorDetails;

}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? author = null,Object? content = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? authorDetails = null,}) {
  return _then(Review(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,authorDetails: null == authorDetails ? _self.authorDetails : authorDetails // ignore: cast_nullable_to_non_nullable
as AuthorDetails,
  ));
}
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorDetailsCopyWith<$Res> get authorDetails {
  
  return $AuthorDetailsCopyWith<$Res>(_self.authorDetails, (value) {
    return _then(_self.copyWith(authorDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String author,  String? content, @JsonKey(name: "created_at")  String? createdAt, @JsonKey(name: "updated_at")  String? updatedAt, @JsonKey(name: "author_details")  AuthorDetails authorDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.id,_that.author,_that.content,_that.createdAt,_that.updatedAt,_that.authorDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String author,  String? content, @JsonKey(name: "created_at")  String? createdAt, @JsonKey(name: "updated_at")  String? updatedAt, @JsonKey(name: "author_details")  AuthorDetails authorDetails)  $default,) {final _that = this;
switch (_that) {
case _Review():
return $default(_that.id,_that.author,_that.content,_that.createdAt,_that.updatedAt,_that.authorDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String author,  String? content, @JsonKey(name: "created_at")  String? createdAt, @JsonKey(name: "updated_at")  String? updatedAt, @JsonKey(name: "author_details")  AuthorDetails authorDetails)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.id,_that.author,_that.content,_that.createdAt,_that.updatedAt,_that.authorDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Review implements Review {
  const _Review({required this.id, required this.author, this.content, @JsonKey(name: "created_at") this.createdAt, @JsonKey(name: "updated_at") this.updatedAt, @JsonKey(name: "author_details") required this.authorDetails});
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

@override final  String id;
@override final  String author;
@override final  String? content;
@override@JsonKey(name: "created_at") final  String? createdAt;
@override@JsonKey(name: "updated_at") final  String? updatedAt;
@override@JsonKey(name: "author_details") final  AuthorDetails authorDetails;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.id, id) || other.id == id)&&(identical(other.author, author) || other.author == author)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.authorDetails, authorDetails) || other.authorDetails == authorDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,author,content,createdAt,updatedAt,authorDetails);
}

@override
String toString() {
    return 'Review(id: $id, author: $author, content: $content, createdAt: $createdAt, updatedAt: $updatedAt, authorDetails: $authorDetails)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, String author, String? content,@JsonKey(name: "created_at") String? createdAt,@JsonKey(name: "updated_at") String? updatedAt,@JsonKey(name: "author_details") AuthorDetails authorDetails
});


@override $AuthorDetailsCopyWith<$Res> get authorDetails;

}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? author = null,Object? content = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? authorDetails = null,}) {
  return _then(_Review(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,authorDetails: null == authorDetails ? _self.authorDetails : authorDetails // ignore: cast_nullable_to_non_nullable
as AuthorDetails,
  ));
}

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorDetailsCopyWith<$Res> get authorDetails {
  
  return $AuthorDetailsCopyWith<$Res>(_self.authorDetails, (value) {
    return _then(_self.copyWith(authorDetails: value));
  });
}
}


/// @nodoc
mixin _$AuthorDetails {

 String? get name; String? get username; int? get rating;@JsonKey(name: "avatar_path") String? get avatarPath;
/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorDetailsCopyWith<AuthorDetails> get copyWith => _$AuthorDetailsCopyWithImpl<AuthorDetails>(this as AuthorDetails, _$identity);

  /// Serializes this AuthorDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuthorDetails;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorDetails&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.username, _this.username) || other.username == _this.username)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.avatarPath, _this.avatarPath) || other.avatarPath == _this.avatarPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuthorDetails;
  return Object.hash(runtimeType,_this.name,_this.username,_this.rating,_this.avatarPath);
}

@override
String toString() {
  final _this = this as AuthorDetails;
  return 'AuthorDetails(name: ${_this.name}, username: ${_this.username}, rating: ${_this.rating}, avatarPath: ${_this.avatarPath})';
}


}

/// @nodoc
abstract mixin class $AuthorDetailsCopyWith<$Res>  {
  factory $AuthorDetailsCopyWith(AuthorDetails value, $Res Function(AuthorDetails) _then) = _$AuthorDetailsCopyWithImpl;
@useResult
$Res call({
 String? name, String? username, int? rating,@JsonKey(name: "avatar_path") String? avatarPath
});




}
/// @nodoc
class _$AuthorDetailsCopyWithImpl<$Res>
    implements $AuthorDetailsCopyWith<$Res> {
  _$AuthorDetailsCopyWithImpl(this._self, this._then);

  final AuthorDetails _self;
  final $Res Function(AuthorDetails) _then;

/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? username = freezed,Object? rating = freezed,Object? avatarPath = freezed,}) {
  return _then(AuthorDetails(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthorDetails].
extension AuthorDetailsPatterns on AuthorDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorDetails value)  $default,){
final _that = this;
switch (_that) {
case _AuthorDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorDetails value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? username,  int? rating, @JsonKey(name: "avatar_path")  String? avatarPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
return $default(_that.name,_that.username,_that.rating,_that.avatarPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? username,  int? rating, @JsonKey(name: "avatar_path")  String? avatarPath)  $default,) {final _that = this;
switch (_that) {
case _AuthorDetails():
return $default(_that.name,_that.username,_that.rating,_that.avatarPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? username,  int? rating, @JsonKey(name: "avatar_path")  String? avatarPath)?  $default,) {final _that = this;
switch (_that) {
case _AuthorDetails() when $default != null:
return $default(_that.name,_that.username,_that.rating,_that.avatarPath);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthorDetails implements AuthorDetails {
  const _AuthorDetails({this.name, this.username, this.rating, @JsonKey(name: "avatar_path") this.avatarPath});
  factory _AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);

@override final  String? name;
@override final  String? username;
@override final  int? rating;
@override@JsonKey(name: "avatar_path") final  String? avatarPath;

/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorDetailsCopyWith<_AuthorDetails> get copyWith => __$AuthorDetailsCopyWithImpl<_AuthorDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorDetails&&(identical(other.name, name) || other.name == name)&&(identical(other.username, username) || other.username == username)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.avatarPath, avatarPath) || other.avatarPath == avatarPath));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,username,rating,avatarPath);
}

@override
String toString() {
    return 'AuthorDetails(name: $name, username: $username, rating: $rating, avatarPath: $avatarPath)';
}


}

/// @nodoc
abstract mixin class _$AuthorDetailsCopyWith<$Res> implements $AuthorDetailsCopyWith<$Res> {
  factory _$AuthorDetailsCopyWith(_AuthorDetails value, $Res Function(_AuthorDetails) _then) = __$AuthorDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? username, int? rating,@JsonKey(name: "avatar_path") String? avatarPath
});




}
/// @nodoc
class __$AuthorDetailsCopyWithImpl<$Res>
    implements _$AuthorDetailsCopyWith<$Res> {
  __$AuthorDetailsCopyWithImpl(this._self, this._then);

  final _AuthorDetails _self;
  final $Res Function(_AuthorDetails) _then;

/// Create a copy of AuthorDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? username = freezed,Object? rating = freezed,Object? avatarPath = freezed,}) {
  return _then(_AuthorDetails(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,avatarPath: freezed == avatarPath ? _self.avatarPath : avatarPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
