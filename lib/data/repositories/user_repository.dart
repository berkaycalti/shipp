import '../models/user_model.dart';
import '../services/api_service.dart';
import '../../core/utils/logger.dart';

/// User Repository
/// Handles all user-related API calls
class UserRepository {
  final ApiService _apiService;

  UserRepository(this._apiService);

  /// Get current user profile
  Future<UserModel> getCurrentUser() async {
    try {
      final response = await _apiService.get('/users/me');
      return UserModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error getting current user', e);
      rethrow;
    }
  }

  /// Get user by ID
  Future<UserModel> getUserById(String userId) async {
    try {
      final response = await _apiService.get('/users/$userId');
      return UserModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error getting user by ID', e);
      rethrow;
    }
  }

  /// Update user profile
  Future<UserModel> updateProfile(Map<String, dynamic> data) async {
    try {
      final response = await _apiService.put('/users/me', data: data);
      return UserModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error updating profile', e);
      rethrow;
    }
  }

  /// Upload profile photo
  Future<String> uploadProfilePhoto(String filePath) async {
    try {
      final response = await _apiService.uploadFile(
        '/users/me/photos',
        filePath,
        fileKey: 'photo',
      );
      return response.data['url'];
    } catch (e) {
      Logger.error('Error uploading profile photo', e);
      rethrow;
    }
  }

  /// Delete profile photo
  Future<void> deleteProfilePhoto(String photoId) async {
    try {
      await _apiService.delete('/users/me/photos/$photoId');
    } catch (e) {
      Logger.error('Error deleting profile photo', e);
      rethrow;
    }
  }

  /// Update user location
  Future<void> updateLocation({
    required double latitude,
    required double longitude,
  }) async {
    try {
      await _apiService.put(
        '/users/me/location',
        data: {
          'latitude': latitude,
          'longitude': longitude,
        },
      );
    } catch (e) {
      Logger.error('Error updating location', e);
      rethrow;
    }
  }
}

