import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'config/theme/app_theme.dart';
import 'config/routes/app_router.dart';
import 'shared/services/storage_service.dart';
import 'core/utils/logger.dart';

// Background message handler - must be top-level
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  Logger.info('Background message received: ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Firebase
  try {
    await Firebase.initializeApp();
    Logger.info('Firebase initialized');
    
    // Set up background message handler
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  } catch (e) {
    Logger.warning('Firebase initialization failed: $e');
  }
  
  // Load environment variables
  try {
    await dotenv.load(fileName: '.env');
  } catch (e) {
    Logger.warning('Could not load .env file: $e');
  }
  
  // Initialize storage
  await StorageService.init();
  
  runApp(
    const ProviderScope(
      child: ShippApp(),
    ),
  );
}

class ShippApp extends ConsumerStatefulWidget {
  const ShippApp({super.key});

  @override
  ConsumerState<ShippApp> createState() => _ShippAppState();
}

class _ShippAppState extends ConsumerState<ShippApp> {
  @override
  void initState() {
    super.initState();
    // Initialize push notifications after app starts
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializePushNotifications();
    });
  }

  Future<void> _initializePushNotifications() async {
    try {
      // TODO: Initialize push notification service with API service
      // final apiService = ref.read(apiServiceProvider);
      // final pushService = PushNotificationService(apiService);
      // await pushService.initialize();
      Logger.info('Push notifications will be initialized after providers are ready');
    } catch (e) {
      Logger.error('Error initializing push notifications', e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Shipp',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system, // Auto detect system theme
      routerConfig: AppRouter.router,
    );
  }
}
