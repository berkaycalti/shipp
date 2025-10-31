import '../models/subscription_model.dart';
import '../models/payment_model.dart';
import '../services/api_service.dart';
import '../../core/utils/logger.dart';
import '../constants/api_endpoints.dart';

/// Subscription Repository
/// Handles all subscription and payment-related API calls
class SubscriptionRepository {
  final ApiService _apiService;

  SubscriptionRepository(this._apiService);

  /// Get current user's subscription
  Future<SubscriptionModel?> getCurrentSubscription() async {
    try {
      final response = await _apiService.get(ApiEndpoints.subscriptions);
      final List<dynamic> data = response.data['data'] ?? response.data;
      if (data.isEmpty) return null;
      return SubscriptionModel.fromJson(data.first);
    } catch (e) {
      Logger.error('Error getting current subscription', e);
      rethrow;
    }
  }

  /// Get all available products
  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await _apiService.get(ApiEndpoints.products);
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => ProductModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting products', e);
      rethrow;
    }
  }

  /// Get consumable products (Hype, Aura, Crush)
  Future<List<ConsumableProductModel>> getConsumableProducts() async {
    try {
      final response = await _apiService.get(ApiEndpoints.consumableProducts);
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => ConsumableProductModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting consumable products', e);
      rethrow;
    }
  }

  /// Purchase a subscription
  Future<PaymentModel> purchaseSubscription(String productId) async {
    try {
      final response = await _apiService.post(
        ApiEndpoints.subscriptions,
        data: {'productId': productId},
      );
      return PaymentModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error purchasing subscription', e);
      rethrow;
    }
  }

  /// Purchase a consumable product
  Future<PaymentModel> purchaseConsumable(String productKey, int quantity) async {
    try {
      final response = await _apiService.post(
        ApiEndpoints.purchases,
        data: {
          'consumableProductKey': productKey,
          'quantity': quantity,
        },
      );
      return PaymentModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error purchasing consumable', e);
      rethrow;
    }
  }

  /// Cancel subscription
  Future<void> cancelSubscription(String subscriptionId) async {
    try {
      await _apiService.delete(ApiEndpoints.subscriptionById(subscriptionId));
    } catch (e) {
      Logger.error('Error cancelling subscription', e);
      rethrow;
    }
  }

  /// Get payment history
  Future<List<PaymentModel>> getPaymentHistory({
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await _apiService.get(
        ApiEndpoints.payments,
        queryParameters: {
          'page': page,
          'limit': limit,
        },
      );
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => PaymentModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting payment history', e);
      rethrow;
    }
  }
}

