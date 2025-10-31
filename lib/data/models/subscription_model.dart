import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

/// Subscription Model
@freezed
class SubscriptionModel with _$SubscriptionModel {
  const factory SubscriptionModel({
    required String id,
    required String userId,
    required String productId,
    required SubscriptionStatus status,
    required DateTime startsAt,
    required DateTime endsAt,
    DateTime? cancelledAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SubscriptionModel;

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);
}

/// Subscription Status
enum SubscriptionStatus {
  active,
  expired,
  cancelled,
  paused,
  suspended,
}

/// Product Model (Subscription Products)
@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String productKey,
    required String name,
    required double price,
    required String currency,
    required int durationDays,
    String? description,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

/// Consumable Product Model (Hype, Aura, Crush)
@freezed
class ConsumableProductModel with _$ConsumableProductModel {
  const factory ConsumableProductModel({
    required String id,
    required String productKey,
    required String name,
    required double price,
    required String currency,
    String? description,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ConsumableProductModel;

  factory ConsumableProductModel.fromJson(Map<String, dynamic> json) =>
      _$ConsumableProductModelFromJson(json);
}

/// User Consumable Inventory Model
@freezed
class UserConsumableInventoryModel with _$UserConsumableInventoryModel {
  const factory UserConsumableInventoryModel({
    required String userId,
    required String consumableProductKey,
    required int quantity,
    DateTime? lastUpdatedAt,
  }) = _UserConsumableInventoryModel;

  factory UserConsumableInventoryModel.fromJson(Map<String, dynamic> json) =>
      _$UserConsumableInventoryModelFromJson(json);
}

