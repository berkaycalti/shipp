// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionModelImpl _$$SubscriptionModelImplFromJson(
  Map<String, dynamic> json,
) => _$SubscriptionModelImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  productId: json['productId'] as String,
  status: $enumDecode(_$SubscriptionStatusEnumMap, json['status']),
  startsAt: DateTime.parse(json['startsAt'] as String),
  endsAt: DateTime.parse(json['endsAt'] as String),
  cancelledAt:
      json['cancelledAt'] == null
          ? null
          : DateTime.parse(json['cancelledAt'] as String),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$SubscriptionModelImplToJson(
  _$SubscriptionModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'productId': instance.productId,
  'status': _$SubscriptionStatusEnumMap[instance.status]!,
  'startsAt': instance.startsAt.toIso8601String(),
  'endsAt': instance.endsAt.toIso8601String(),
  'cancelledAt': instance.cancelledAt?.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

const _$SubscriptionStatusEnumMap = {
  SubscriptionStatus.active: 'active',
  SubscriptionStatus.expired: 'expired',
  SubscriptionStatus.cancelled: 'cancelled',
  SubscriptionStatus.paused: 'paused',
  SubscriptionStatus.suspended: 'suspended',
};

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      productKey: json['productKey'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      currency: json['currency'] as String,
      durationDays: (json['durationDays'] as num).toInt(),
      description: json['description'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
      updatedAt:
          json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productKey': instance.productKey,
      'name': instance.name,
      'price': instance.price,
      'currency': instance.currency,
      'durationDays': instance.durationDays,
      'description': instance.description,
      'metadata': instance.metadata,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$ConsumableProductModelImpl _$$ConsumableProductModelImplFromJson(
  Map<String, dynamic> json,
) => _$ConsumableProductModelImpl(
  id: json['id'] as String,
  productKey: json['productKey'] as String,
  name: json['name'] as String,
  price: (json['price'] as num).toDouble(),
  currency: json['currency'] as String,
  description: json['description'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$ConsumableProductModelImplToJson(
  _$ConsumableProductModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'productKey': instance.productKey,
  'name': instance.name,
  'price': instance.price,
  'currency': instance.currency,
  'description': instance.description,
  'metadata': instance.metadata,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

_$UserConsumableInventoryModelImpl _$$UserConsumableInventoryModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserConsumableInventoryModelImpl(
  userId: json['userId'] as String,
  consumableProductKey: json['consumableProductKey'] as String,
  quantity: (json['quantity'] as num).toInt(),
  lastUpdatedAt:
      json['lastUpdatedAt'] == null
          ? null
          : DateTime.parse(json['lastUpdatedAt'] as String),
);

Map<String, dynamic> _$$UserConsumableInventoryModelImplToJson(
  _$UserConsumableInventoryModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'consumableProductKey': instance.consumableProductKey,
  'quantity': instance.quantity,
  'lastUpdatedAt': instance.lastUpdatedAt?.toIso8601String(),
};
