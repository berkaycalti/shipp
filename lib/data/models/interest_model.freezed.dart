// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interest_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InterestModel _$InterestModelFromJson(Map<String, dynamic> json) {
  return _InterestModel.fromJson(json);
}

/// @nodoc
mixin _$InterestModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this InterestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InterestModelCopyWith<InterestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestModelCopyWith<$Res> {
  factory $InterestModelCopyWith(
    InterestModel value,
    $Res Function(InterestModel) then,
  ) = _$InterestModelCopyWithImpl<$Res, InterestModel>;
  @useResult
  $Res call({
    String id,
    String name,
    String? category,
    String? icon,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$InterestModelCopyWithImpl<$Res, $Val extends InterestModel>
    implements $InterestModelCopyWith<$Res> {
  _$InterestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = freezed,
    Object? icon = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            category:
                freezed == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String?,
            icon:
                freezed == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InterestModelImplCopyWith<$Res>
    implements $InterestModelCopyWith<$Res> {
  factory _$$InterestModelImplCopyWith(
    _$InterestModelImpl value,
    $Res Function(_$InterestModelImpl) then,
  ) = __$$InterestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String? category,
    String? icon,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$InterestModelImplCopyWithImpl<$Res>
    extends _$InterestModelCopyWithImpl<$Res, _$InterestModelImpl>
    implements _$$InterestModelImplCopyWith<$Res> {
  __$$InterestModelImplCopyWithImpl(
    _$InterestModelImpl _value,
    $Res Function(_$InterestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = freezed,
    Object? icon = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$InterestModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        category:
            freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String?,
        icon:
            freezed == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestModelImpl implements _InterestModel {
  const _$InterestModelImpl({
    required this.id,
    required this.name,
    this.category,
    this.icon,
    this.createdAt,
  });

  factory _$InterestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String? category;
  @override
  final String? icon;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'InterestModel(id: $id, name: $name, category: $category, icon: $icon, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, category, icon, createdAt);

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestModelImplCopyWith<_$InterestModelImpl> get copyWith =>
      __$$InterestModelImplCopyWithImpl<_$InterestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestModelImplToJson(this);
  }
}

abstract class _InterestModel implements InterestModel {
  const factory _InterestModel({
    required final String id,
    required final String name,
    final String? category,
    final String? icon,
    final DateTime? createdAt,
  }) = _$InterestModelImpl;

  factory _InterestModel.fromJson(Map<String, dynamic> json) =
      _$InterestModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get category;
  @override
  String? get icon;
  @override
  DateTime? get createdAt;

  /// Create a copy of InterestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InterestModelImplCopyWith<_$InterestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInterestModel _$UserInterestModelFromJson(Map<String, dynamic> json) {
  return _UserInterestModel.fromJson(json);
}

/// @nodoc
mixin _$UserInterestModel {
  String get userId => throw _privateConstructorUsedError;
  String get interestId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this UserInterestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInterestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInterestModelCopyWith<UserInterestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInterestModelCopyWith<$Res> {
  factory $UserInterestModelCopyWith(
    UserInterestModel value,
    $Res Function(UserInterestModel) then,
  ) = _$UserInterestModelCopyWithImpl<$Res, UserInterestModel>;
  @useResult
  $Res call({String userId, String interestId, DateTime? createdAt});
}

/// @nodoc
class _$UserInterestModelCopyWithImpl<$Res, $Val extends UserInterestModel>
    implements $UserInterestModelCopyWith<$Res> {
  _$UserInterestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInterestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? interestId = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            interestId:
                null == interestId
                    ? _value.interestId
                    : interestId // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserInterestModelImplCopyWith<$Res>
    implements $UserInterestModelCopyWith<$Res> {
  factory _$$UserInterestModelImplCopyWith(
    _$UserInterestModelImpl value,
    $Res Function(_$UserInterestModelImpl) then,
  ) = __$$UserInterestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String interestId, DateTime? createdAt});
}

/// @nodoc
class __$$UserInterestModelImplCopyWithImpl<$Res>
    extends _$UserInterestModelCopyWithImpl<$Res, _$UserInterestModelImpl>
    implements _$$UserInterestModelImplCopyWith<$Res> {
  __$$UserInterestModelImplCopyWithImpl(
    _$UserInterestModelImpl _value,
    $Res Function(_$UserInterestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserInterestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? interestId = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$UserInterestModelImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        interestId:
            null == interestId
                ? _value.interestId
                : interestId // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInterestModelImpl implements _UserInterestModel {
  const _$UserInterestModelImpl({
    required this.userId,
    required this.interestId,
    this.createdAt,
  });

  factory _$UserInterestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInterestModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String interestId;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'UserInterestModel(userId: $userId, interestId: $interestId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInterestModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.interestId, interestId) ||
                other.interestId == interestId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, interestId, createdAt);

  /// Create a copy of UserInterestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInterestModelImplCopyWith<_$UserInterestModelImpl> get copyWith =>
      __$$UserInterestModelImplCopyWithImpl<_$UserInterestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInterestModelImplToJson(this);
  }
}

abstract class _UserInterestModel implements UserInterestModel {
  const factory _UserInterestModel({
    required final String userId,
    required final String interestId,
    final DateTime? createdAt,
  }) = _$UserInterestModelImpl;

  factory _UserInterestModel.fromJson(Map<String, dynamic> json) =
      _$UserInterestModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get interestId;
  @override
  DateTime? get createdAt;

  /// Create a copy of UserInterestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInterestModelImplCopyWith<_$UserInterestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
