/// API Endpoints Constants
/// All backend API endpoint definitions
class ApiEndpoints {
  ApiEndpoints._();

  // ========== Authentication ==========
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String logout = '/auth/logout';
  static const String refreshToken = '/auth/refresh';
  static const String forgotPassword = '/auth/forgot-password';
  static const String verifyOTP = '/auth/verify-otp';
  static const String resetPassword = '/auth/reset-password';

  // ========== Users ==========
  static const String currentUser = '/users/me';
  static String userById(String userId) => '/users/$userId';
  static const String updateProfile = '/users/me';
  static const String updateLocation = '/users/me/location';
  static const String uploadPhoto = '/users/me/photos';
  static String deletePhoto(String photoId) => '/users/me/photos/$photoId';
  static const String discovery = '/users/discovery';

  // ========== Matches ==========
  static const String matches = '/matches';
  static String matchById(String matchId) => '/matches/$matchId';
  static const String swipes = '/swipes';
  static const String compatibility = '/compatibility';

  // ========== Conversations ==========
  static const String conversations = '/conversations';
  static String conversationById(String conversationId) =>
      '/conversations/$conversationId';
  static String conversationMessages(String conversationId) =>
      '/conversations/$conversationId/messages';
  static String markConversationRead(String conversationId) =>
      '/conversations/$conversationId/read';

  // ========== Messages ==========
  static String messages(String conversationId) =>
      '/conversations/$conversationId/messages';
  static String messageById(String messageId) => '/messages/$messageId';
  static String markMessageRead(String messageId) => '/messages/$messageId/read';
  static String deleteMessage(String messageId) => '/messages/$messageId';
  static const String uploadMedia = '/messages/media';

  // ========== Astrology ==========
  static const String astrologyProfile = '/astrology/profile';
  static const String zodiacSigns = '/astrology/zodiac-signs';
  static String compatibilityAnalysis(String user1Id, String user2Id) =>
      '/astrology/compatibility/$user1Id/$user2Id';
  static const String dailyHoroscope = '/astrology/daily-horoscope';
  static const String dailyAdvice = '/astrology/daily-advice';
  static const String birthChart = '/astrology/birth-chart';

  // ========== Premium & Payments ==========
  static const String subscriptions = '/subscriptions';
  static String subscriptionById(String subscriptionId) =>
      '/subscriptions/$subscriptionId';
  static const String products = '/products';
  static const String consumableProducts = '/products/consumable';
  static const String purchases = '/purchases';
  static const String payments = '/payments';

  // ========== Notifications ==========
  static const String notifications = '/notifications';
  static String notificationById(String notificationId) =>
      '/notifications/$notificationId';
  static const String markAllRead = '/notifications/read-all';

  // ========== Reports ==========
  static const String reports = '/reports';
  static String reportById(String reportId) => '/reports/$reportId';

  // ========== Support ==========
  static const String tickets = '/support/tickets';
  static String ticketById(String ticketId) => '/support/tickets/$ticketId';

  // ========== Settings ==========
  static const String preferences = '/settings/preferences';
  static const String notificationSettings = '/settings/notifications';
  static const String privacySettings = '/settings/privacy';

  // ========== Push Notifications ==========
  static const String fcmToken = '/users/fcm-token';
}

