// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) {
  return _MatchModel.fromJson(json);
}

/// @nodoc
mixin _$MatchModel {
  String get id => throw _privateConstructorUsedError;
  String get user1Id => throw _privateConstructorUsedError;
  String get user2Id => throw _privateConstructorUsedError;
  MatchStatus get status => throw _privateConstructorUsedError;
  double? get compatibilityScore => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  UserModel? get matchedUser => throw _privateConstructorUsedError;

  /// Serializes this MatchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchModelCopyWith<MatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchModelCopyWith<$Res> {
  factory $MatchModelCopyWith(
    MatchModel value,
    $Res Function(MatchModel) then,
  ) = _$MatchModelCopyWithImpl<$Res, MatchModel>;
  @useResult
  $Res call({
    String id,
    String user1Id,
    String user2Id,
    MatchStatus status,
    double? compatibilityScore,
    DateTime? createdAt,
    UserModel? matchedUser,
  });

  $UserModelCopyWith<$Res>? get matchedUser;
}

/// @nodoc
class _$MatchModelCopyWithImpl<$Res, $Val extends MatchModel>
    implements $MatchModelCopyWith<$Res> {
  _$MatchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user1Id = null,
    Object? user2Id = null,
    Object? status = null,
    Object? compatibilityScore = freezed,
    Object? createdAt = freezed,
    Object? matchedUser = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            user1Id:
                null == user1Id
                    ? _value.user1Id
                    : user1Id // ignore: cast_nullable_to_non_nullable
                        as String,
            user2Id:
                null == user2Id
                    ? _value.user2Id
                    : user2Id // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as MatchStatus,
            compatibilityScore:
                freezed == compatibilityScore
                    ? _value.compatibilityScore
                    : compatibilityScore // ignore: cast_nullable_to_non_nullable
                        as double?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            matchedUser:
                freezed == matchedUser
                    ? _value.matchedUser
                    : matchedUser // ignore: cast_nullable_to_non_nullable
                        as UserModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of MatchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get matchedUser {
    if (_value.matchedUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.matchedUser!, (value) {
      return _then(_value.copyWith(matchedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchModelImplCopyWith<$Res>
    implements $MatchModelCopyWith<$Res> {
  factory _$$MatchModelImplCopyWith(
    _$MatchModelImpl value,
    $Res Function(_$MatchModelImpl) then,
  ) = __$$MatchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String user1Id,
    String user2Id,
    MatchStatus status,
    double? compatibilityScore,
    DateTime? createdAt,
    UserModel? matchedUser,
  });

  @override
  $UserModelCopyWith<$Res>? get matchedUser;
}

/// @nodoc
class __$$MatchModelImplCopyWithImpl<$Res>
    extends _$MatchModelCopyWithImpl<$Res, _$MatchModelImpl>
    implements _$$MatchModelImplCopyWith<$Res> {
  __$$MatchModelImplCopyWithImpl(
    _$MatchModelImpl _value,
    $Res Function(_$MatchModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MatchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user1Id = null,
    Object? user2Id = null,
    Object? status = null,
    Object? compatibilityScore = freezed,
    Object? createdAt = freezed,
    Object? matchedUser = freezed,
  }) {
    return _then(
      _$MatchModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        user1Id:
            null == user1Id
                ? _value.user1Id
                : user1Id // ignore: cast_nullable_to_non_nullable
                    as String,
        user2Id:
            null == user2Id
                ? _value.user2Id
                : user2Id // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as MatchStatus,
        compatibilityScore:
            freezed == compatibilityScore
                ? _value.compatibilityScore
                : compatibilityScore // ignore: cast_nullable_to_non_nullable
                    as double?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        matchedUser:
            freezed == matchedUser
                ? _value.matchedUser
                : matchedUser // ignore: cast_nullable_to_non_nullable
                    as UserModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchModelImpl implements _MatchModel {
  const _$MatchModelImpl({
    required this.id,
    required this.user1Id,
    required this.user2Id,
    required this.status,
    this.compatibilityScore,
    this.createdAt,
    this.matchedUser,
  });

  factory _$MatchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchModelImplFromJson(json);

  @override
  final String id;
  @override
  final String user1Id;
  @override
  final String user2Id;
  @override
  final MatchStatus status;
  @override
  final double? compatibilityScore;
  @override
  final DateTime? createdAt;
  @override
  final UserModel? matchedUser;

  @override
  String toString() {
    return 'MatchModel(id: $id, user1Id: $user1Id, user2Id: $user2Id, status: $status, compatibilityScore: $compatibilityScore, createdAt: $createdAt, matchedUser: $matchedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user1Id, user1Id) || other.user1Id == user1Id) &&
            (identical(other.user2Id, user2Id) || other.user2Id == user2Id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.compatibilityScore, compatibilityScore) ||
                other.compatibilityScore == compatibilityScore) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.matchedUser, matchedUser) ||
                other.matchedUser == matchedUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    user1Id,
    user2Id,
    status,
    compatibilityScore,
    createdAt,
    matchedUser,
  );

  /// Create a copy of MatchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchModelImplCopyWith<_$MatchModelImpl> get copyWith =>
      __$$MatchModelImplCopyWithImpl<_$MatchModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchModelImplToJson(this);
  }
}

abstract class _MatchModel implements MatchModel {
  const factory _MatchModel({
    required final String id,
    required final String user1Id,
    required final String user2Id,
    required final MatchStatus status,
    final double? compatibilityScore,
    final DateTime? createdAt,
    final UserModel? matchedUser,
  }) = _$MatchModelImpl;

  factory _MatchModel.fromJson(Map<String, dynamic> json) =
      _$MatchModelImpl.fromJson;

  @override
  String get id;
  @override
  String get user1Id;
  @override
  String get user2Id;
  @override
  MatchStatus get status;
  @override
  double? get compatibilityScore;
  @override
  DateTime? get createdAt;
  @override
  UserModel? get matchedUser;

  /// Create a copy of MatchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchModelImplCopyWith<_$MatchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SwipeActionModel _$SwipeActionModelFromJson(Map<String, dynamic> json) {
  return _SwipeActionModel.fromJson(json);
}

/// @nodoc
mixin _$SwipeActionModel {
  String get swipedUserId => throw _privateConstructorUsedError;
  SwipeType get action => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this SwipeActionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwipeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwipeActionModelCopyWith<SwipeActionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipeActionModelCopyWith<$Res> {
  factory $SwipeActionModelCopyWith(
    SwipeActionModel value,
    $Res Function(SwipeActionModel) then,
  ) = _$SwipeActionModelCopyWithImpl<$Res, SwipeActionModel>;
  @useResult
  $Res call({String swipedUserId, SwipeType action, DateTime? createdAt});
}

/// @nodoc
class _$SwipeActionModelCopyWithImpl<$Res, $Val extends SwipeActionModel>
    implements $SwipeActionModelCopyWith<$Res> {
  _$SwipeActionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwipeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swipedUserId = null,
    Object? action = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            swipedUserId:
                null == swipedUserId
                    ? _value.swipedUserId
                    : swipedUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            action:
                null == action
                    ? _value.action
                    : action // ignore: cast_nullable_to_non_nullable
                        as SwipeType,
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
abstract class _$$SwipeActionModelImplCopyWith<$Res>
    implements $SwipeActionModelCopyWith<$Res> {
  factory _$$SwipeActionModelImplCopyWith(
    _$SwipeActionModelImpl value,
    $Res Function(_$SwipeActionModelImpl) then,
  ) = __$$SwipeActionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String swipedUserId, SwipeType action, DateTime? createdAt});
}

/// @nodoc
class __$$SwipeActionModelImplCopyWithImpl<$Res>
    extends _$SwipeActionModelCopyWithImpl<$Res, _$SwipeActionModelImpl>
    implements _$$SwipeActionModelImplCopyWith<$Res> {
  __$$SwipeActionModelImplCopyWithImpl(
    _$SwipeActionModelImpl _value,
    $Res Function(_$SwipeActionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SwipeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? swipedUserId = null,
    Object? action = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$SwipeActionModelImpl(
        swipedUserId:
            null == swipedUserId
                ? _value.swipedUserId
                : swipedUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        action:
            null == action
                ? _value.action
                : action // ignore: cast_nullable_to_non_nullable
                    as SwipeType,
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
class _$SwipeActionModelImpl implements _SwipeActionModel {
  const _$SwipeActionModelImpl({
    required this.swipedUserId,
    required this.action,
    this.createdAt,
  });

  factory _$SwipeActionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwipeActionModelImplFromJson(json);

  @override
  final String swipedUserId;
  @override
  final SwipeType action;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'SwipeActionModel(swipedUserId: $swipedUserId, action: $action, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwipeActionModelImpl &&
            (identical(other.swipedUserId, swipedUserId) ||
                other.swipedUserId == swipedUserId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, swipedUserId, action, createdAt);

  /// Create a copy of SwipeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwipeActionModelImplCopyWith<_$SwipeActionModelImpl> get copyWith =>
      __$$SwipeActionModelImplCopyWithImpl<_$SwipeActionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SwipeActionModelImplToJson(this);
  }
}

abstract class _SwipeActionModel implements SwipeActionModel {
  const factory _SwipeActionModel({
    required final String swipedUserId,
    required final SwipeType action,
    final DateTime? createdAt,
  }) = _$SwipeActionModelImpl;

  factory _SwipeActionModel.fromJson(Map<String, dynamic> json) =
      _$SwipeActionModelImpl.fromJson;

  @override
  String get swipedUserId;
  @override
  SwipeType get action;
  @override
  DateTime? get createdAt;

  /// Create a copy of SwipeActionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwipeActionModelImplCopyWith<_$SwipeActionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
