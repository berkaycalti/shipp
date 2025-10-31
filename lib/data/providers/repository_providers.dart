import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/user_repository.dart';
import '../repositories/match_repository.dart';
import '../repositories/message_repository.dart';
import '../repositories/subscription_repository.dart';
import '../repositories/notification_repository.dart';
import '../repositories/settings_repository.dart';
import '../repositories/support_repository.dart';
import '../repositories/interest_repository.dart';
import '../../features/auth/providers/auth_provider.dart';

/// User Repository Provider
final userRepositoryProvider = Provider<UserRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return UserRepository(apiService);
});

/// Match Repository Provider
final matchRepositoryProvider = Provider<MatchRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return MatchRepository(apiService);
});

/// Message Repository Provider
final messageRepositoryProvider = Provider<MessageRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return MessageRepository(apiService);
});

/// Subscription Repository Provider
final subscriptionRepositoryProvider = Provider<SubscriptionRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return SubscriptionRepository(apiService);
});

/// Notification Repository Provider
final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return NotificationRepository(apiService);
});

/// Settings Repository Provider
final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return SettingsRepository(apiService);
});

/// Support Repository Provider
final supportRepositoryProvider = Provider<SupportRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return SupportRepository(apiService);
});

/// Interest Repository Provider
final interestRepositoryProvider = Provider<InterestRepository>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return InterestRepository(apiService);
});

