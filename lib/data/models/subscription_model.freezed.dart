// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) {
  return _SubscriptionModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  SubscriptionStatus get status => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime get endsAt => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionModelCopyWith<SubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionModelCopyWith<$Res> {
  factory $SubscriptionModelCopyWith(
    SubscriptionModel value,
    $Res Function(SubscriptionModel) then,
  ) = _$SubscriptionModelCopyWithImpl<$Res, SubscriptionModel>;
  @useResult
  $Res call({
    String id,
    String userId,
    String productId,
    SubscriptionStatus status,
    DateTime startsAt,
    DateTime endsAt,
    DateTime? cancelledAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$SubscriptionModelCopyWithImpl<$Res, $Val extends SubscriptionModel>
    implements $SubscriptionModelCopyWith<$Res> {
  _$SubscriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? status = null,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            productId:
                null == productId
                    ? _value.productId
                    : productId // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as SubscriptionStatus,
            startsAt:
                null == startsAt
                    ? _value.startsAt
                    : startsAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            endsAt:
                null == endsAt
                    ? _value.endsAt
                    : endsAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            cancelledAt:
                freezed == cancelledAt
                    ? _value.cancelledAt
                    : cancelledAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubscriptionModelImplCopyWith<$Res>
    implements $SubscriptionModelCopyWith<$Res> {
  factory _$$SubscriptionModelImplCopyWith(
    _$SubscriptionModelImpl value,
    $Res Function(_$SubscriptionModelImpl) then,
  ) = __$$SubscriptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String productId,
    SubscriptionStatus status,
    DateTime startsAt,
    DateTime endsAt,
    DateTime? cancelledAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$SubscriptionModelImplCopyWithImpl<$Res>
    extends _$SubscriptionModelCopyWithImpl<$Res, _$SubscriptionModelImpl>
    implements _$$SubscriptionModelImplCopyWith<$Res> {
  __$$SubscriptionModelImplCopyWithImpl(
    _$SubscriptionModelImpl _value,
    $Res Function(_$SubscriptionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? status = null,
    Object? startsAt = null,
    Object? endsAt = null,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$SubscriptionModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        productId:
            null == productId
                ? _value.productId
                : productId // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as SubscriptionStatus,
        startsAt:
            null == startsAt
                ? _value.startsAt
                : startsAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        endsAt:
            null == endsAt
                ? _value.endsAt
                : endsAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        cancelledAt:
            freezed == cancelledAt
                ? _value.cancelledAt
                : cancelledAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionModelImpl implements _SubscriptionModel {
  const _$SubscriptionModelImpl({
    required this.id,
    required this.userId,
    required this.productId,
    required this.status,
    required this.startsAt,
    required this.endsAt,
    this.cancelledAt,
    this.createdAt,
    this.updatedAt,
  });

  factory _$SubscriptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String productId;
  @override
  final SubscriptionStatus status;
  @override
  final DateTime startsAt;
  @override
  final DateTime endsAt;
  @override
  final DateTime? cancelledAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'SubscriptionModel(id: $id, userId: $userId, productId: $productId, status: $status, startsAt: $startsAt, endsAt: $endsAt, cancelledAt: $cancelledAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    productId,
    status,
    startsAt,
    endsAt,
    cancelledAt,
    createdAt,
    updatedAt,
  );

  /// Create a copy of SubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionModelImplCopyWith<_$SubscriptionModelImpl> get copyWith =>
      __$$SubscriptionModelImplCopyWithImpl<_$SubscriptionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionModelImplToJson(this);
  }
}

abstract class _SubscriptionModel implements SubscriptionModel {
  const factory _SubscriptionModel({
    required final String id,
    required final String userId,
    required final String productId,
    required final SubscriptionStatus status,
    required final DateTime startsAt,
    required final DateTime endsAt,
    final DateTime? cancelledAt,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$SubscriptionModelImpl;

  factory _SubscriptionModel.fromJson(Map<String, dynamic> json) =
      _$SubscriptionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get productId;
  @override
  SubscriptionStatus get status;
  @override
  DateTime get startsAt;
  @override
  DateTime get endsAt;
  @override
  DateTime? get cancelledAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of SubscriptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionModelImplCopyWith<_$SubscriptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  String get id => throw _privateConstructorUsedError;
  String get productKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  int get durationDays => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
    ProductModel value,
    $Res Function(ProductModel) then,
  ) = _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call({
    String id,
    String productKey,
    String name,
    double price,
    String currency,
    int durationDays,
    String? description,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productKey = null,
    Object? name = null,
    Object? price = null,
    Object? currency = null,
    Object? durationDays = null,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            productKey:
                null == productKey
                    ? _value.productKey
                    : productKey // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
            durationDays:
                null == durationDays
                    ? _value.durationDays
                    : durationDays // ignore: cast_nullable_to_non_nullable
                        as int,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            metadata:
                freezed == metadata
                    ? _value.metadata
                    : metadata // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
    _$ProductModelImpl value,
    $Res Function(_$ProductModelImpl) then,
  ) = __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String productKey,
    String name,
    double price,
    String currency,
    int durationDays,
    String? description,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
    _$ProductModelImpl _value,
    $Res Function(_$ProductModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productKey = null,
    Object? name = null,
    Object? price = null,
    Object? currency = null,
    Object? durationDays = null,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ProductModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        productKey:
            null == productKey
                ? _value.productKey
                : productKey // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
        durationDays:
            null == durationDays
                ? _value.durationDays
                : durationDays // ignore: cast_nullable_to_non_nullable
                    as int,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        metadata:
            freezed == metadata
                ? _value._metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl({
    required this.id,
    required this.productKey,
    required this.name,
    required this.price,
    required this.currency,
    required this.durationDays,
    this.description,
    final Map<String, dynamic>? metadata,
    this.createdAt,
    this.updatedAt,
  }) : _metadata = metadata;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final String id;
  @override
  final String productKey;
  @override
  final String name;
  @override
  final double price;
  @override
  final String currency;
  @override
  final int durationDays;
  @override
  final String? description;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ProductModel(id: $id, productKey: $productKey, name: $name, price: $price, currency: $currency, durationDays: $durationDays, description: $description, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productKey, productKey) ||
                other.productKey == productKey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.durationDays, durationDays) ||
                other.durationDays == durationDays) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    productKey,
    name,
    price,
    currency,
    durationDays,
    description,
    const DeepCollectionEquality().hash(_metadata),
    createdAt,
    updatedAt,
  );

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel({
    required final String id,
    required final String productKey,
    required final String name,
    required final double price,
    required final String currency,
    required final int durationDays,
    final String? description,
    final Map<String, dynamic>? metadata,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  String get id;
  @override
  String get productKey;
  @override
  String get name;
  @override
  double get price;
  @override
  String get currency;
  @override
  int get durationDays;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get metadata;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsumableProductModel _$ConsumableProductModelFromJson(
  Map<String, dynamic> json,
) {
  return _ConsumableProductModel.fromJson(json);
}

/// @nodoc
mixin _$ConsumableProductModel {
  String get id => throw _privateConstructorUsedError;
  String get productKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ConsumableProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsumableProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsumableProductModelCopyWith<ConsumableProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsumableProductModelCopyWith<$Res> {
  factory $ConsumableProductModelCopyWith(
    ConsumableProductModel value,
    $Res Function(ConsumableProductModel) then,
  ) = _$ConsumableProductModelCopyWithImpl<$Res, ConsumableProductModel>;
  @useResult
  $Res call({
    String id,
    String productKey,
    String name,
    double price,
    String currency,
    String? description,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$ConsumableProductModelCopyWithImpl<
  $Res,
  $Val extends ConsumableProductModel
>
    implements $ConsumableProductModelCopyWith<$Res> {
  _$ConsumableProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsumableProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productKey = null,
    Object? name = null,
    Object? price = null,
    Object? currency = null,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            productKey:
                null == productKey
                    ? _value.productKey
                    : productKey // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            currency:
                null == currency
                    ? _value.currency
                    : currency // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            metadata:
                freezed == metadata
                    ? _value.metadata
                    : metadata // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConsumableProductModelImplCopyWith<$Res>
    implements $ConsumableProductModelCopyWith<$Res> {
  factory _$$ConsumableProductModelImplCopyWith(
    _$ConsumableProductModelImpl value,
    $Res Function(_$ConsumableProductModelImpl) then,
  ) = __$$ConsumableProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String productKey,
    String name,
    double price,
    String currency,
    String? description,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$ConsumableProductModelImplCopyWithImpl<$Res>
    extends
        _$ConsumableProductModelCopyWithImpl<$Res, _$ConsumableProductModelImpl>
    implements _$$ConsumableProductModelImplCopyWith<$Res> {
  __$$ConsumableProductModelImplCopyWithImpl(
    _$ConsumableProductModelImpl _value,
    $Res Function(_$ConsumableProductModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConsumableProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productKey = null,
    Object? name = null,
    Object? price = null,
    Object? currency = null,
    Object? description = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$ConsumableProductModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        productKey:
            null == productKey
                ? _value.productKey
                : productKey // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        currency:
            null == currency
                ? _value.currency
                : currency // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        metadata:
            freezed == metadata
                ? _value._metadata
                : metadata // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsumableProductModelImpl implements _ConsumableProductModel {
  const _$ConsumableProductModelImpl({
    required this.id,
    required this.productKey,
    required this.name,
    required this.price,
    required this.currency,
    this.description,
    final Map<String, dynamic>? metadata,
    this.createdAt,
    this.updatedAt,
  }) : _metadata = metadata;

  factory _$ConsumableProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsumableProductModelImplFromJson(json);

  @override
  final String id;
  @override
  final String productKey;
  @override
  final String name;
  @override
  final double price;
  @override
  final String currency;
  @override
  final String? description;
  final Map<String, dynamic>? _metadata;
  @override
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'ConsumableProductModel(id: $id, productKey: $productKey, name: $name, price: $price, currency: $currency, description: $description, metadata: $metadata, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsumableProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productKey, productKey) ||
                other.productKey == productKey) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    productKey,
    name,
    price,
    currency,
    description,
    const DeepCollectionEquality().hash(_metadata),
    createdAt,
    updatedAt,
  );

  /// Create a copy of ConsumableProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsumableProductModelImplCopyWith<_$ConsumableProductModelImpl>
  get copyWith =>
      __$$ConsumableProductModelImplCopyWithImpl<_$ConsumableProductModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsumableProductModelImplToJson(this);
  }
}

abstract class _ConsumableProductModel implements ConsumableProductModel {
  const factory _ConsumableProductModel({
    required final String id,
    required final String productKey,
    required final String name,
    required final double price,
    required final String currency,
    final String? description,
    final Map<String, dynamic>? metadata,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$ConsumableProductModelImpl;

  factory _ConsumableProductModel.fromJson(Map<String, dynamic> json) =
      _$ConsumableProductModelImpl.fromJson;

  @override
  String get id;
  @override
  String get productKey;
  @override
  String get name;
  @override
  double get price;
  @override
  String get currency;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get metadata;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of ConsumableProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsumableProductModelImplCopyWith<_$ConsumableProductModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UserConsumableInventoryModel _$UserConsumableInventoryModelFromJson(
  Map<String, dynamic> json,
) {
  return _UserConsumableInventoryModel.fromJson(json);
}

/// @nodoc
mixin _$UserConsumableInventoryModel {
  String get userId => throw _privateConstructorUsedError;
  String get consumableProductKey => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  DateTime? get lastUpdatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserConsumableInventoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserConsumableInventoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserConsumableInventoryModelCopyWith<UserConsumableInventoryModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserConsumableInventoryModelCopyWith<$Res> {
  factory $UserConsumableInventoryModelCopyWith(
    UserConsumableInventoryModel value,
    $Res Function(UserConsumableInventoryModel) then,
  ) =
      _$UserConsumableInventoryModelCopyWithImpl<
        $Res,
        UserConsumableInventoryModel
      >;
  @useResult
  $Res call({
    String userId,
    String consumableProductKey,
    int quantity,
    DateTime? lastUpdatedAt,
  });
}

/// @nodoc
class _$UserConsumableInventoryModelCopyWithImpl<
  $Res,
  $Val extends UserConsumableInventoryModel
>
    implements $UserConsumableInventoryModelCopyWith<$Res> {
  _$UserConsumableInventoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserConsumableInventoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? consumableProductKey = null,
    Object? quantity = null,
    Object? lastUpdatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            consumableProductKey:
                null == consumableProductKey
                    ? _value.consumableProductKey
                    : consumableProductKey // ignore: cast_nullable_to_non_nullable
                        as String,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            lastUpdatedAt:
                freezed == lastUpdatedAt
                    ? _value.lastUpdatedAt
                    : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserConsumableInventoryModelImplCopyWith<$Res>
    implements $UserConsumableInventoryModelCopyWith<$Res> {
  factory _$$UserConsumableInventoryModelImplCopyWith(
    _$UserConsumableInventoryModelImpl value,
    $Res Function(_$UserConsumableInventoryModelImpl) then,
  ) = __$$UserConsumableInventoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String consumableProductKey,
    int quantity,
    DateTime? lastUpdatedAt,
  });
}

/// @nodoc
class __$$UserConsumableInventoryModelImplCopyWithImpl<$Res>
    extends
        _$UserConsumableInventoryModelCopyWithImpl<
          $Res,
          _$UserConsumableInventoryModelImpl
        >
    implements _$$UserConsumableInventoryModelImplCopyWith<$Res> {
  __$$UserConsumableInventoryModelImplCopyWithImpl(
    _$UserConsumableInventoryModelImpl _value,
    $Res Function(_$UserConsumableInventoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserConsumableInventoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? consumableProductKey = null,
    Object? quantity = null,
    Object? lastUpdatedAt = freezed,
  }) {
    return _then(
      _$UserConsumableInventoryModelImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        consumableProductKey:
            null == consumableProductKey
                ? _value.consumableProductKey
                : consumableProductKey // ignore: cast_nullable_to_non_nullable
                    as String,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        lastUpdatedAt:
            freezed == lastUpdatedAt
                ? _value.lastUpdatedAt
                : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserConsumableInventoryModelImpl
    implements _UserConsumableInventoryModel {
  const _$UserConsumableInventoryModelImpl({
    required this.userId,
    required this.consumableProductKey,
    required this.quantity,
    this.lastUpdatedAt,
  });

  factory _$UserConsumableInventoryModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$UserConsumableInventoryModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String consumableProductKey;
  @override
  final int quantity;
  @override
  final DateTime? lastUpdatedAt;

  @override
  String toString() {
    return 'UserConsumableInventoryModel(userId: $userId, consumableProductKey: $consumableProductKey, quantity: $quantity, lastUpdatedAt: $lastUpdatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserConsumableInventoryModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.consumableProductKey, consumableProductKey) ||
                other.consumableProductKey == consumableProductKey) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.lastUpdatedAt, lastUpdatedAt) ||
                other.lastUpdatedAt == lastUpdatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    consumableProductKey,
    quantity,
    lastUpdatedAt,
  );

  /// Create a copy of UserConsumableInventoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserConsumableInventoryModelImplCopyWith<
    _$UserConsumableInventoryModelImpl
  >
  get copyWith => __$$UserConsumableInventoryModelImplCopyWithImpl<
    _$UserConsumableInventoryModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserConsumableInventoryModelImplToJson(this);
  }
}

abstract class _UserConsumableInventoryModel
    implements UserConsumableInventoryModel {
  const factory _UserConsumableInventoryModel({
    required final String userId,
    required final String consumableProductKey,
    required final int quantity,
    final DateTime? lastUpdatedAt,
  }) = _$UserConsumableInventoryModelImpl;

  factory _UserConsumableInventoryModel.fromJson(Map<String, dynamic> json) =
      _$UserConsumableInventoryModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get consumableProductKey;
  @override
  int get quantity;
  @override
  DateTime? get lastUpdatedAt;

  /// Create a copy of UserConsumableInventoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserConsumableInventoryModelImplCopyWith<
    _$UserConsumableInventoryModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
