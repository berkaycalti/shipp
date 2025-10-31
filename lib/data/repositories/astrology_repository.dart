import '../models/astrology_model.dart';
import '../services/astrology_service.dart';
import '../../core/utils/logger.dart';

/// Astrology Repository
/// Handles astrology-related data operations
class AstrologyRepository {
  final AstrologyService _astrologyService;

  AstrologyRepository(this._astrologyService);

  /// Analyze birth info with AI model
  /// This sends data to AI model and gets personalized analysis
  Future<Map<String, dynamic>> analyzeBirthInfo({
    required DateTime birthDate,
    required String birthTime,
    required String birthLocation,
    String? latitude,
    String? longitude,
  }) async {
    try {
      return await _astrologyService.analyzeBirthInfo(
        birthDate: birthDate,
        birthTime: birthTime,
        birthLocation: birthLocation,
        latitude: latitude,
        longitude: longitude,
      );
    } catch (e) {
      Logger.error('Error in analyzeBirthInfo repository', e);
      rethrow;
    }
  }

  /// Get birth chart visualization data
  Future<Map<String, dynamic>> getBirthChart(String userId) async {
    try {
      return await _astrologyService.getBirthChart(userId);
    } catch (e) {
      Logger.error('Error getting birth chart', e);
      rethrow;
    }
  }

  /// Get daily horoscope (AI-generated content)
  Future<Map<String, dynamic>> getDailyHoroscope({
    required int zodiacSignId,
    DateTime? date,
  }) async {
    try {
      return await _astrologyService.getDailyHoroscope(
        zodiacSignId: zodiacSignId,
        date: date,
      );
    } catch (e) {
      Logger.error('Error getting daily horoscope', e);
      rethrow;
    }
  }

  /// Get personalized daily advice (AI-generated)
  Future<Map<String, dynamic>> getDailyAdvice({
    required String userId,
    DateTime? date,
  }) async {
    try {
      return await _astrologyService.getDailyAdvice(
        userId: userId,
        date: date,
      );
    } catch (e) {
      Logger.error('Error getting daily advice', e);
      rethrow;
    }
  }

  /// Get compatibility analysis (AI-generated)
  Future<CompatibilityAnalysisModel> getCompatibilityAnalysis({
    required String user1Id,
    required String user2Id,
  }) async {
    try {
      return await _astrologyService.getCompatibilityAnalysis(
        user1Id: user1Id,
        user2Id: user2Id,
      );
    } catch (e) {
      Logger.error('Error getting compatibility analysis', e);
      rethrow;
    }
  }

  /// Get astrology profile
  Future<AstrologyProfileModel> getAstrologyProfile(String userId) async {
    try {
      return await _astrologyService.getAstrologyProfile(userId);
    } catch (e) {
      Logger.error('Error getting astrology profile', e);
      rethrow;
    }
  }

  /// Update astrology profile
  Future<AstrologyProfileModel> updateAstrologyProfile({
    required String userId,
    required DateTime birthDate,
    required String birthTime,
    required String birthLocation,
  }) async {
    try {
      return await _astrologyService.updateAstrologyProfile(
        userId: userId,
        birthDate: birthDate,
        birthTime: birthTime,
        birthLocation: birthLocation,
      );
    } catch (e) {
      Logger.error('Error updating astrology profile', e);
      rethrow;
    }
  }

  /// Get zodiac signs list
  Future<List<ZodiacSignModel>> getZodiacSigns() async {
    try {
      return await _astrologyService.getZodiacSigns();
    } catch (e) {
      Logger.error('Error getting zodiac signs', e);
      rethrow;
    }
  }
}

