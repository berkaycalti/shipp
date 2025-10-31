/// App Routes Constants
/// Based on Userflow diagram
class AppRoutes {
  AppRoutes._();

  // ========== Authentication Flow ==========
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String registerLogin = '/register-login';
  static const String otpVerification = '/otp-verification';
  static const String createAccount = '/create-account';
  static const String createAccountName = '/create-account/name';
  static const String forgotPassword = '/forgot-password';

  // ========== Main Navigation (Bottom Nav Bar) ==========
  static const String home = '/home';
  static const String map = '/map';
  static const String showcase = '/showcase'; // Stage (Premium Showcase)
  static const String matches = '/matches'; // Matches / Chats
  static const String profile = '/profile';

  // ========== Home Flow ==========
  static const String notifications = '/notifications';
  static const String filter = '/filter';

  // ========== Showcase Flow ==========
  static const String paymentSteps = '/payment-steps';

  // ========== Matches/Chats Flow ==========
  static const String chat = '/chat';
  static const String voiceVideoCall = '/voice-video-call';

  // ========== Profile Flow ==========
  static const String profileDetail = '/profile-detail';
  static const String settings = '/settings';

  // ========== Astrology Journey Flow ==========
  static const String astrologyJourney = '/astrology-journey';
  static const String addAstrologyProfile = '/astrology/add-profile';
  static const String birthChart = '/astrology/birth-chart';
  static const String dailyHoroscope = '/astrology/daily-horoscope';
  static const String dailyAdvice = '/astrology/daily-advice';
  static const String compatibility = '/astrology/compatibility';
  static const String astrologyResult = '/astrology/result';
  
  // Settings sub-routes
  static const String profileSettings = '/settings/profile';
  static const String notificationSettings = '/settings/notification';
  static const String membership = '/settings/membership';
  static const String termsAndPrivacy = '/settings/terms-privacy';

  // ========== Other ==========
  static const String exit = '/exit';

  // ========== Route Groups ==========
  /// Routes that require authentication
  static const List<String> authenticatedRoutes = [
    home,
    map,
    showcase,
    matches,
    profile,
    notifications,
    paymentSteps,
    chat,
    voiceVideoCall,
    profileDetail,
    settings,
    profileSettings,
    notificationSettings,
    membership,
  ];

  /// Routes accessible without authentication
  static const List<String> publicRoutes = [
    splash,
    onboarding,
    registerLogin,
    createAccount,
    forgotPassword,
    termsAndPrivacy,
  ];
}

