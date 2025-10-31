import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

/// Payment Model
@freezed
class PaymentModel with _$PaymentModel {
  const factory PaymentModel({
    required String id,
    required String userId,
    required double amount,
    required String currency,
    required PaymentStatus status,
    required String provider,
    String? providerTransactionId,
    String? subscriptionId,
    String? productId,
    String? consumableProductKey,
    Map<String, dynamic>? metadata,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}

/// Payment Status
enum PaymentStatus {
  pending,
  completed,
  failed,
  refunded,
  cancelled,
}

