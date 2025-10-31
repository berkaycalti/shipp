import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/subscription_model.dart';
import '../../../data/repositories/subscription_repository.dart';
import '../../../data/providers/repository_providers.dart';

/// Subscription State
class SubscriptionState {
  final SubscriptionModel? subscription;
  final bool isLoading;
  final String? error;
  final bool isPremium;

  SubscriptionState({
    this.subscription,
    this.isLoading = false,
    this.error,
    this.isPremium = false,
  });

  SubscriptionState copyWith({
    SubscriptionModel? subscription,
    bool? isLoading,
    String? error,
    bool? isPremium,
  }) {
    return SubscriptionState(
      subscription: subscription ?? this.subscription,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      isPremium: isPremium ?? this.isPremium,
    );
  }
}

/// Subscription Notifier
class SubscriptionNotifier extends StateNotifier<SubscriptionState> {
  final SubscriptionRepository _subscriptionRepository;

  SubscriptionNotifier(this._subscriptionRepository)
      : super(SubscriptionState()) {
    loadSubscription();
  }

  Future<void> loadSubscription() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final subscription = await _subscriptionRepository.getCurrentSubscription();
      state = state.copyWith(
        subscription: subscription,
        isLoading: false,
        isPremium: subscription != null &&
            subscription.status == SubscriptionStatus.active,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> purchaseSubscription(String productId) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      await _subscriptionRepository.purchaseSubscription(productId);
      await loadSubscription();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }

  Future<void> cancelSubscription() async {
    if (state.subscription == null) return;

    state = state.copyWith(isLoading: true, error: null);

    try {
      await _subscriptionRepository.cancelSubscription(state.subscription!.id);
      await loadSubscription();
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      rethrow;
    }
  }
}

/// Subscription State Provider
final subscriptionProvider =
    StateNotifierProvider<SubscriptionNotifier, SubscriptionState>((ref) {
  final subscriptionRepository = ref.watch(subscriptionRepositoryProvider);
  return SubscriptionNotifier(subscriptionRepository);
});

