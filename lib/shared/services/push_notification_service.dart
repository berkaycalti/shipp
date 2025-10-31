import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import '../../core/utils/logger.dart';
import '../../data/services/api_service.dart';
import '../../data/constants/api_endpoints.dart';

/// Push Notification Service
/// Handles Firebase Cloud Messaging (FCM)
class PushNotificationService {
  final ApiService _apiService;
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  
  String? _fcmToken;
  Function(Map<String, dynamic>)? onNotificationReceived;
  Function(String)? onNotificationTapped;

  PushNotificationService(this._apiService);

  /// Initialize push notifications
  /// Must be called after Firebase.initializeApp()
  Future<void> initialize() async {
    try {
      // Request permission
      NotificationSettings settings = await _messaging.requestPermission(
        alert: true,
        badge: true,
        sound: true,
        provisional: false,
      );

      if (settings.authorizationStatus == AuthorizationStatus.authorized) {
        Logger.info('User granted push notification permission');
      } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
        Logger.info('User granted provisional push notification permission');
      } else {
        Logger.warning('User denied push notification permission');
        return;
      }

      // Get FCM token
      await _getFCMToken();

      // Listen to foreground messages
      FirebaseMessaging.onMessage.listen(_handleForegroundMessage);

      // Listen to notification taps (when app is in background)
      FirebaseMessaging.onMessageOpenedApp.listen(_handleNotificationTap);

      // Check if app was opened from notification (when app was closed)
      final initialMessage = await _messaging.getInitialMessage();
      if (initialMessage != null) {
        _handleNotificationTap(initialMessage);
      }

      Logger.info('Push Notification Service initialized');
    } catch (e) {
      Logger.error('Error initializing push notifications', e);
    }
  }

  /// Get FCM token and send to backend
  Future<String?> _getFCMToken() async {
    try {
      _fcmToken = await _messaging.getToken();
      
      if (_fcmToken != null) {
        Logger.info('FCM Token: $_fcmToken');
        
        // Send token to backend
        await _sendTokenToBackend(_fcmToken!);
      }
      
      // Listen for token refresh
      _messaging.onTokenRefresh.listen((newToken) {
        _fcmToken = newToken;
        Logger.info('FCM Token refreshed: $newToken');
        _sendTokenToBackend(newToken);
      });
      
      return _fcmToken;
    } catch (e) {
      Logger.error('Error getting FCM token', e);
      return null;
    }
  }

  /// Send FCM token to backend
  Future<void> _sendTokenToBackend(String token) async {
    try {
      await _apiService.post(
        ApiEndpoints.fcmToken,
        data: {
          'token': token,
          'platform': 'mobile', // 'mobile', 'ios', 'android'
        },
      );
      Logger.info('FCM token sent to backend');
    } catch (e) {
      Logger.error('Error sending FCM token to backend', e);
    }
  }

  /// Handle foreground message (when app is open)
  void _handleForegroundMessage(RemoteMessage message) {
    Logger.info('Foreground message received: ${message.messageId}');
    
    final data = {
      'title': message.notification?.title ?? '',
      'body': message.notification?.body ?? '',
      'data': message.data,
    };
    
    onNotificationReceived?.call(data);
  }

  /// Handle notification tap (when app is in background/closed)
  void _handleNotificationTap(RemoteMessage message) {
    Logger.info('Notification tapped: ${message.messageId}');
    
    // Extract deep link or action from message data
    final deepLink = message.data['deepLink'] as String?;
    if (deepLink != null) {
      onNotificationTapped?.call(deepLink);
    }
  }

  /// Get current FCM token
  String? get fcmToken => _fcmToken;

  /// Subscribe to topic
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _messaging.subscribeToTopic(topic);
      Logger.info('Subscribed to topic: $topic');
    } catch (e) {
      Logger.error('Error subscribing to topic', e);
    }
  }

  /// Unsubscribe from topic
  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _messaging.unsubscribeFromTopic(topic);
      Logger.info('Unsubscribed from topic: $topic');
    } catch (e) {
      Logger.error('Error unsubscribing from topic', e);
    }
  }

  /// Delete FCM token (logout)
  Future<void> deleteToken() async {
    try {
      await _messaging.deleteToken();
      _fcmToken = null;
      Logger.info('FCM token deleted');
    } catch (e) {
      Logger.error('Error deleting FCM token', e);
    }
  }
}


