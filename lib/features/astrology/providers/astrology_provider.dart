import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/services/astrology_service.dart';
import '../../../data/repositories/astrology_repository.dart';
import '../../auth/providers/auth_provider.dart'; // For apiServiceProvider

/// Astrology Service Provider
final astrologyServiceProvider = Provider<AstrologyService>((ref) {
  final apiService = ref.watch(apiServiceProvider);
  return AstrologyService(apiService);
});

/// Astrology Repository Provider
final astrologyRepositoryProvider = Provider<AstrologyRepository>((ref) {
  final astrologyService = ref.watch(astrologyServiceProvider);
  return AstrologyRepository(astrologyService);
});

/// Astrology Analysis State
class AstrologyAnalysisState {
  final bool isLoading;
  final Map<String, dynamic>? result;
  final String? error;
  final bool hasProfile;

  AstrologyAnalysisState({
    this.isLoading = false,
    this.result,
    this.error,
    this.hasProfile = false,
  });

  AstrologyAnalysisState copyWith({
    bool? isLoading,
    Map<String, dynamic>? result,
    String? error,
    bool? hasProfile,
  }) {
    return AstrologyAnalysisState(
      isLoading: isLoading ?? this.isLoading,
      result: result ?? this.result,
      error: error,
      hasProfile: hasProfile ?? this.hasProfile,
    );
  }
}

/// Astrology Analysis Notifier
class AstrologyAnalysisNotifier extends StateNotifier<AstrologyAnalysisState> {
  final AstrologyRepository _repository;

  AstrologyAnalysisNotifier(this._repository) : super(AstrologyAnalysisState());

  /// Analyze birth info with AI
  Future<void> analyzeBirthInfo({
    required DateTime birthDate,
    required String birthTime,
    required String birthLocation,
    String? latitude,
    String? longitude,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final result = await _repository.analyzeBirthInfo(
        birthDate: birthDate,
        birthTime: birthTime,
        birthLocation: birthLocation,
        latitude: latitude,
        longitude: longitude,
      );

      state = state.copyWith(
        isLoading: false,
        result: result,
        hasProfile: true,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  /// Get daily horoscope
  Future<Map<String, dynamic>?> getDailyHoroscope({
    required int zodiacSignId,
    DateTime? date,
  }) async {
    try {
      return await _repository.getDailyHoroscope(
        zodiacSignId: zodiacSignId,
        date: date,
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return null;
    }
  }

  /// Get daily advice
  Future<Map<String, dynamic>?> getDailyAdvice({
    required String userId,
    DateTime? date,
  }) async {
    try {
      return await _repository.getDailyAdvice(
        userId: userId,
        date: date,
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
      return null;
    }
  }
}

/// Astrology Analysis Provider
final astrologyAnalysisProvider =
    StateNotifierProvider<AstrologyAnalysisNotifier, AstrologyAnalysisState>(
  (ref) {
    final repository = ref.watch(astrologyRepositoryProvider);
    return AstrologyAnalysisNotifier(repository);
  },
);

