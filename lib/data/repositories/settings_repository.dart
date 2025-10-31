import '../models/settings_model.dart';
import '../services/api_service.dart';
import '../../core/utils/logger.dart';
import '../constants/api_endpoints.dart';

/// Settings Repository
/// Handles all settings-related API calls
class SettingsRepository {
  final ApiService _apiService;

  SettingsRepository(this._apiService);

  /// Get privacy settings
  Future<PrivacySettingsModel> getPrivacySettings() async {
    try {
      final response = await _apiService.get(ApiEndpoints.privacySettings);
      return PrivacySettingsModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error getting privacy settings', e);
      rethrow;
    }
  }

  /// Update privacy settings
  Future<PrivacySettingsModel> updatePrivacySettings(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await _apiService.put(
        ApiEndpoints.privacySettings,
        data: data,
      );
      return PrivacySettingsModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error updating privacy settings', e);
      rethrow;
    }
  }

  /// Get notification settings
  Future<NotificationSettingsModel> getNotificationSettings() async {
    try {
      final response = await _apiService.get(ApiEndpoints.notificationSettings);
      return NotificationSettingsModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error getting notification settings', e);
      rethrow;
    }
  }

  /// Update notification settings
  Future<NotificationSettingsModel> updateNotificationSettings(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await _apiService.put(
        ApiEndpoints.notificationSettings,
        data: data,
      );
      return NotificationSettingsModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error updating notification settings', e);
      rethrow;
    }
  }

  /// Get user preferences
  Future<UserPreferencesModel> getUserPreferences() async {
    try {
      final response = await _apiService.get(ApiEndpoints.preferences);
      return UserPreferencesModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error getting user preferences', e);
      rethrow;
    }
  }

  /// Update user preferences
  Future<UserPreferencesModel> updateUserPreferences(
    Map<String, dynamic> data,
  ) async {
    try {
      final response = await _apiService.put(
        ApiEndpoints.preferences,
        data: data,
      );
      return UserPreferencesModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error updating user preferences', e);
      rethrow;
    }
  }
}

