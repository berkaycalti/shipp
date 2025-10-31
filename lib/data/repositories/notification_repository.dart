import '../models/notification_model.dart';
import '../services/api_service.dart';
import '../../core/utils/logger.dart';
import '../constants/api_endpoints.dart';

/// Notification Repository
/// Handles all notification-related API calls
class NotificationRepository {
  final ApiService _apiService;

  NotificationRepository(this._apiService);

  /// Get all notifications
  Future<List<NotificationModel>> getNotifications({
    int page = 1,
    int limit = 50,
    bool? unreadOnly,
  }) async {
    try {
      final response = await _apiService.get(
        ApiEndpoints.notifications,
        queryParameters: {
          'page': page,
          'limit': limit,
          if (unreadOnly != null) 'unreadOnly': unreadOnly,
        },
      );
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => NotificationModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting notifications', e);
      rethrow;
    }
  }

  /// Mark notification as read
  Future<void> markAsRead(String notificationId) async {
    try {
      await _apiService.put(ApiEndpoints.notificationById(notificationId));
    } catch (e) {
      Logger.error('Error marking notification as read', e);
      rethrow;
    }
  }

  /// Mark all notifications as read
  Future<void> markAllAsRead() async {
    try {
      await _apiService.put(ApiEndpoints.markAllRead);
    } catch (e) {
      Logger.error('Error marking all notifications as read', e);
      rethrow;
    }
  }

  /// Delete notification
  Future<void> deleteNotification(String notificationId) async {
    try {
      await _apiService.delete(ApiEndpoints.notificationById(notificationId));
    } catch (e) {
      Logger.error('Error deleting notification', e);
      rethrow;
    }
  }
}

