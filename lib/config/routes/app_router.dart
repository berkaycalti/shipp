import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/constants/app_routes.dart';
import '../../features/splash/screens/splash_screen.dart';
import '../../features/onboarding/screens/onboarding_screen.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/otp_verification_screen.dart';
import '../../features/auth/screens/create_account_screen.dart';
import '../../features/auth/screens/name_input_screen.dart';
import '../../features/auth/screens/gender_selection_screen.dart';
import '../../features/auth/screens/match_preference_screen.dart';
import '../../features/auth/screens/birth_date_screen.dart';
import '../../features/auth/screens/birth_time_screen.dart';
import '../../features/auth/screens/birth_location_screen.dart';
import '../../features/auth/screens/physical_attributes_screen.dart';
import '../../features/auth/screens/looking_for_screen.dart';
import '../../features/auth/screens/profile_photos_screen.dart';
import '../../features/auth/screens/welcome_screen.dart';
import '../../features/auth/screens/forgot_password_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/home/screens/filter_screen.dart';
import '../../features/home/screens/notifications_screen.dart';
import '../../features/explore/screens/map_screen.dart';
import '../../features/premium/screens/showcase_screen.dart';
import '../../features/premium/screens/membership_screen.dart';
import '../../features/messages/screens/matches_screen.dart';
import '../../features/messages/screens/chat_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import '../../features/profile/screens/notification_settings_screen.dart';
import '../../features/profile/screens/settings_screen.dart';
import '../../features/profile/screens/terms_and_privacy_screen.dart';
import '../../features/profile/screens/profile_settings_screen.dart';
import '../../features/profile/screens/profile_detail_screen.dart';
import '../../features/astrology/screens/astrology_journey_screen.dart';
import '../../features/astrology/screens/add_profile_screen.dart';
import '../../features/astrology/screens/astrology_result_screen.dart';

/// App Router Configuration
/// Handles navigation and route management
class AppRouter {
  AppRouter._();

  // TODO: Implement authentication state provider check
  // For now, all routes are accessible
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      // ========== Authentication Flow ==========
      GoRoute(
        path: AppRoutes.splash,
        name: 'splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRoutes.onboarding,
        name: 'onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerLogin,
        name: 'register-login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.otpVerification,
        name: 'otp-verification',
        builder: (context, state) {
          final phoneNumber = state.uri.queryParameters['phone'];
          return OtpVerificationScreen(phoneNumber: phoneNumber);
        },
      ),
      GoRoute(
        path: AppRoutes.createAccount,
        name: 'create-account',
        builder: (context, state) => const CreateAccountScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountName,
        name: 'create-account-name',
        builder: (context, state) => const NameInputScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountGender,
        name: 'create-account-gender',
        builder: (context, state) => const GenderSelectionScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountMatchPreference,
        name: 'create-account-match-preference',
        builder: (context, state) => const MatchPreferenceScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountBirthDate,
        name: 'create-account-birth-date',
        builder: (context, state) => const BirthDateScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountBirthTime,
        name: 'create-account-birth-time',
        builder: (context, state) => const BirthTimeScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountBirthLocation,
        name: 'create-account-birth-location',
        builder: (context, state) => const BirthLocationScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountPhysicalAttributes,
        name: 'create-account-physical-attributes',
        builder: (context, state) => const PhysicalAttributesScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountLookingFor,
        name: 'create-account-looking-for',
        builder: (context, state) => const LookingForScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountPhotos,
        name: 'create-account-photos',
        builder: (context, state) => const ProfilePhotosScreen(),
      ),
      GoRoute(
        path: AppRoutes.createAccountWelcome,
        name: 'create-account-welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgotPassword,
        name: 'forgot-password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),

      // ========== Main Navigation (Bottom Nav) ==========
      // Using ShellRoute for bottom navigation persistence
      ShellRoute(
        builder: (context, state, child) => MainNavigationShell(child: child),
        routes: [
          GoRoute(
            path: AppRoutes.home,
            name: 'home',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: AppRoutes.map,
            name: 'map',
            builder: (context, state) => const MapScreen(),
          ),
          GoRoute(
            path: AppRoutes.showcase,
            name: 'showcase',
            builder: (context, state) => const ShowcaseScreen(),
          ),
          GoRoute(
            path: AppRoutes.matches,
            name: 'matches',
            builder: (context, state) => const MatchesScreen(),
          ),
          GoRoute(
            path: AppRoutes.profile,
            name: 'profile',
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),

      // ========== Home Flow ==========
      GoRoute(
        path: AppRoutes.filter,
        name: 'filter',
        builder: (context, state) => const FilterScreen(),
      ),
      GoRoute(
        path: AppRoutes.notifications,
        name: 'notifications',
        builder: (context, state) => const NotificationsScreen(),
      ),

      // ========== Showcase Flow ==========
      GoRoute(
        path: AppRoutes.paymentSteps,
        name: 'payment-steps',
        builder: (context, state) {
          // TODO: Implement PaymentStepsScreen
          return const Scaffold(body: Center(child: Text('Payment Steps')));
        },
      ),

      // ========== Matches/Chats Flow ==========
      GoRoute(
        path: AppRoutes.chat,
        name: 'chat',
        builder: (context, state) {
          final conversationId = state.uri.queryParameters['conversationId'];
          final userId = state.uri.queryParameters['userId'];
          final userName = state.uri.queryParameters['userName'];
          final userAvatarUrl = state.uri.queryParameters['userAvatarUrl'];
          return ChatScreen(
            conversationId: conversationId,
            userId: userId,
            userName: userName,
            userAvatarUrl: userAvatarUrl,
          );
        },
      ),
      // ========== Astrology Journey Flow ==========
      GoRoute(
        path: AppRoutes.astrologyJourney,
        name: 'astrology-journey',
        builder: (context, state) => const AstrologyJourneyScreen(),
      ),
      GoRoute(
        path: AppRoutes.addAstrologyProfile,
        name: 'add-astrology-profile',
        builder: (context, state) => const AddProfileScreen(),
      ),
      GoRoute(
        path: AppRoutes.birthChart,
        name: 'birth-chart',
        builder: (context, state) {
          // TODO: Implement BirthChartScreen
          return const Scaffold(body: Center(child: Text('Birth Chart')));
        },
      ),
      GoRoute(
        path: AppRoutes.dailyHoroscope,
        name: 'daily-horoscope',
        builder: (context, state) {
          // TODO: Implement DailyHoroscopeScreen
          return const Scaffold(body: Center(child: Text('Daily Horoscope')));
        },
      ),
      GoRoute(
        path: AppRoutes.dailyAdvice,
        name: 'daily-advice',
        builder: (context, state) {
          // TODO: Implement DailyAdviceScreen
          return const Scaffold(body: Center(child: Text('Daily Advice')));
        },
      ),
      GoRoute(
        path: AppRoutes.compatibility,
        name: 'compatibility',
        builder: (context, state) {
          // TODO: Implement CompatibilityScreen
          return const Scaffold(body: Center(child: Text('Compatibility')));
        },
      ),
      GoRoute(
        path: AppRoutes.astrologyResult,
        name: 'astrology-result',
        builder: (context, state) {
          final result = state.extra as Map<String, dynamic>?;
          if (result == null) {
            return const Scaffold(body: Center(child: Text('No result data')));
          }
          return AstrologyResultScreen(analysisResult: result);
        },
      ),

      // ========== Profile Flow ==========
      GoRoute(
        path: AppRoutes.profileDetail,
        name: 'profile-detail',
        builder: (context, state) {
          final userId = state.uri.queryParameters['userId'];
          final userName = state.uri.queryParameters['userName'];
          final userAvatarUrl = state.uri.queryParameters['userAvatarUrl'];
          return ProfileDetailScreen(
            userId: userId,
            userName: userName,
            userAvatarUrl: userAvatarUrl,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.settings,
        name: 'settings',
        builder: (context, state) => const SettingsScreen(),
        routes: [
          GoRoute(
            path: 'profile',
            name: 'profile-settings',
            builder: (context, state) => const ProfileSettingsScreen(),
          ),
          GoRoute(
            path: 'notification',
            name: 'notification-settings',
            builder: (context, state) => const NotificationSettingsScreen(),
          ),
          GoRoute(
            path: 'membership',
            name: 'membership',
            builder: (context, state) => const MembershipScreen(),
          ),
          GoRoute(
            path: 'terms-privacy',
            name: 'terms-privacy',
            builder: (context, state) => const TermsAndPrivacyScreen(),
          ),
        ],
      ),
    ],
  );
}

/// Main Navigation Shell
/// Provides bottom navigation bar for main tabs
class MainNavigationShell extends StatefulWidget {
  final Widget child;

  const MainNavigationShell({super.key, required this.child});

  @override
  State<MainNavigationShell> createState() => _MainNavigationShellState();
}

class _MainNavigationShellState extends State<MainNavigationShell> {
  int _currentIndex = 0;

  final List<String> _routes = [
    AppRoutes.home,
    AppRoutes.map,
    AppRoutes.showcase,
    AppRoutes.matches,
    AppRoutes.profile,
  ];

  void _onTabTapped(int index) {
    if (_currentIndex != index) {
      setState(() {
        _currentIndex = index;
      });
      context.go(_routes[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Showcase',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Matches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

