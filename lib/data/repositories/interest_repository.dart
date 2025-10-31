import '../models/interest_model.dart';
import '../services/api_service.dart';
import '../../core/utils/logger.dart';

/// Interest Repository
/// Handles all interest/hobby-related API calls
class InterestRepository {
  final ApiService _apiService;

  InterestRepository(this._apiService);

  /// Get all available interests
  Future<List<InterestModel>> getInterests({
    String? category,
  }) async {
    try {
      final response = await _apiService.get(
        '/interests',
        queryParameters: category != null ? {'category': category} : null,
      );
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => InterestModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting interests', e);
      rethrow;
    }
  }

  /// Get user's interests
  Future<List<InterestModel>> getUserInterests(String userId) async {
    try {
      final response = await _apiService.get('/users/$userId/interests');
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => InterestModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting user interests', e);
      rethrow;
    }
  }

  /// Add interest to user
  Future<void> addInterest(String interestId) async {
    try {
      await _apiService.post(
        '/users/me/interests',
        data: {'interestId': interestId},
      );
    } catch (e) {
      Logger.error('Error adding interest', e);
      rethrow;
    }
  }

  /// Remove interest from user
  Future<void> removeInterest(String interestId) async {
    try {
      await _apiService.delete('/users/me/interests/$interestId');
    } catch (e) {
      Logger.error('Error removing interest', e);
      rethrow;
    }
  }
}

