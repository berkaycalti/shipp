import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/match_model.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repositories/match_repository.dart';
import '../../../data/providers/repository_providers.dart';

/// Matches State
class MatchesState {
  final List<MatchModel> matches;
  final bool isLoading;
  final String? error;
  final bool hasMore;

  MatchesState({
    this.matches = const [],
    this.isLoading = false,
    this.error,
    this.hasMore = true,
  });

  MatchesState copyWith({
    List<MatchModel>? matches,
    bool? isLoading,
    String? error,
    bool? hasMore,
  }) {
    return MatchesState(
      matches: matches ?? this.matches,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

/// Matches Notifier
class MatchesNotifier extends StateNotifier<MatchesState> {
  final MatchRepository _matchRepository;
  int _currentPage = 1;

  MatchesNotifier(this._matchRepository) : super(MatchesState()) {
    loadMatches();
  }

  Future<void> loadMatches({bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      state = state.copyWith(matches: []);
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      final newMatches = await _matchRepository.getMatches(
        page: _currentPage,
        limit: 20,
      );

      state = state.copyWith(
        matches: refresh
            ? newMatches
            : [...state.matches, ...newMatches],
        isLoading: false,
        hasMore: newMatches.length >= 20,
      );

      if (newMatches.isNotEmpty) {
        _currentPage++;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> unmatch(String matchId) async {
    try {
      await _matchRepository.unmatch(matchId);
      state = state.copyWith(
        matches: state.matches.where((m) => m.id != matchId).toList(),
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}

/// Matches State Provider
final matchesProvider =
    StateNotifierProvider<MatchesNotifier, MatchesState>((ref) {
  final matchRepository = ref.watch(matchRepositoryProvider);
  return MatchesNotifier(matchRepository);
});

/// Discovery State (Potential Matches)
class DiscoveryState {
  final List<UserModel> users;
  final bool isLoading;
  final String? error;
  final bool hasMore;

  DiscoveryState({
    this.users = const [],
    this.isLoading = false,
    this.error,
    this.hasMore = true,
  });

  DiscoveryState copyWith({
    List<UserModel>? users,
    bool? isLoading,
    String? error,
    bool? hasMore,
  }) {
    return DiscoveryState(
      users: users ?? this.users,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

/// Discovery Notifier
class DiscoveryNotifier extends StateNotifier<DiscoveryState> {
  final MatchRepository _matchRepository;
  int _currentPage = 1;

  DiscoveryNotifier(this._matchRepository) : super(DiscoveryState()) {
    loadUsers();
  }

  Future<void> loadUsers({bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      state = state.copyWith(users: []);
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      final newUsers = await _matchRepository.getPotentialMatches(
        page: _currentPage,
        limit: 10,
      );

      state = state.copyWith(
        users: refresh ? newUsers : [...state.users, ...newUsers],
        isLoading: false,
        hasMore: newUsers.length >= 10,
      );

      if (newUsers.isNotEmpty) {
        _currentPage++;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<Map<String, dynamic>> swipe({
    required String swipedUserId,
    required SwipeType action,
  }) async {
    try {
      final result = await _matchRepository.swipe(
        swipedUserId: swipedUserId,
        action: action,
      );
      // Remove swiped user from discovery
      state = state.copyWith(
        users: state.users.where((u) => u.id != swipedUserId).toList(),
      );
      return result;
    } catch (e) {
      state = state.copyWith(error: e.toString());
      rethrow;
    }
  }
}

/// Discovery State Provider
final discoveryProvider =
    StateNotifierProvider<DiscoveryNotifier, DiscoveryState>((ref) {
  final matchRepository = ref.watch(matchRepositoryProvider);
  return DiscoveryNotifier(matchRepository);
});

