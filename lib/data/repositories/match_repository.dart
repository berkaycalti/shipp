import '../models/match_model.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';
import '../../core/utils/logger.dart';

/// Match Repository
/// Handles all match-related API calls
class MatchRepository {
  final ApiService _apiService;

  MatchRepository(this._apiService);

  /// Get all matches
  Future<List<MatchModel>> getMatches({
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await _apiService.get(
        '/matches',
        queryParameters: {
          'page': page,
          'limit': limit,
        },
      );
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => MatchModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting matches', e);
      rethrow;
    }
  }

  /// Swipe on user (like/dislike/superLike)
  Future<Map<String, dynamic>> swipe({
    required String swipedUserId,
    required SwipeType action,
  }) async {
    try {
      final response = await _apiService.post(
        '/swipes',
        data: {
          'swipedUserId': swipedUserId,
          'action': action.name,
        },
      );
      return response.data;
    } catch (e) {
      Logger.error('Error swiping', e);
      rethrow;
    }
  }

  /// Get potential matches (discovery feed)
  Future<List<UserModel>> getPotentialMatches({
    int page = 1,
    int limit = 10,
    Map<String, dynamic>? filters,
  }) async {
    try {
      final queryParams = {
        'page': page,
        'limit': limit,
        if (filters != null) ...filters,
      };

      final response = await _apiService.get(
        '/users/discovery',
        queryParameters: queryParams,
      );

      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => UserModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting potential matches', e);
      rethrow;
    }
  }

  /// Get compatibility analysis
  Future<Map<String, dynamic>> getCompatibility({
    required String userId1,
    required String userId2,
  }) async {
    try {
      final response = await _apiService.get(
        '/compatibility',
        queryParameters: {
          'user1Id': userId1,
          'user2Id': userId2,
        },
      );
      return response.data;
    } catch (e) {
      Logger.error('Error getting compatibility', e);
      rethrow;
    }
  }

  /// Unmatch with user
  Future<void> unmatch(String matchId) async {
    try {
      await _apiService.delete('/matches/$matchId');
    } catch (e) {
      Logger.error('Error unmatching', e);
      rethrow;
    }
  }
}

