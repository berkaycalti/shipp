import '../services/api_service.dart';
import '../models/astrology_model.dart';
import '../../core/utils/logger.dart';
import '../../data/constants/api_endpoints.dart';

/// Astrology Service
/// Handles all astrology-related API calls including AI model integration
class AstrologyService {
  final ApiService _apiService;

  AstrologyService(this._apiService);

  /// Submit user birth info for AI analysis
  /// Sends birth data to AI model and returns analysis results
  Future<Map<String, dynamic>> analyzeBirthInfo({
    required DateTime birthDate,
    required String birthTime,
    required String birthLocation,
    String? latitude,
    String? longitude,
  }) async {
    try {
      final response = await _apiService.post(
        ApiEndpoints.birthChart,
        data: {
          'birthDate': birthDate.toIso8601String(),
          'birthTime': birthTime,
          'birthLocation': birthLocation,
          if (latitude != null) 'latitude': latitude,
          if (longitude != null) 'longitude': longitude,
        },
      );

      // Response contains AI analysis results
      return response.data;
    } catch (e) {
      Logger.error('Error analyzing birth info', e);
      rethrow;
    }
  }

  /// Get birth chart data
  Future<Map<String, dynamic>> getBirthChart(String userId) async {
    try {
      final response = await _apiService.get(
        '${ApiEndpoints.birthChart}/$userId',
      );
      return response.data;
    } catch (e) {
      Logger.error('Error getting birth chart', e);
      rethrow;
    }
  }

  /// Get daily horoscope (AI-generated)
  Future<Map<String, dynamic>> getDailyHoroscope({
    required int zodiacSignId,
    DateTime? date,
  }) async {
    try {
      final response = await _apiService.get(
        ApiEndpoints.dailyHoroscope,
        queryParameters: {
          'zodiacSignId': zodiacSignId,
          if (date != null) 'date': date.toIso8601String(),
        },
      );

      // Response contains AI-generated horoscope text
      return response.data;
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
      final response = await _apiService.get(
        ApiEndpoints.dailyAdvice,
        queryParameters: {
          'userId': userId,
          if (date != null) 'date': date.toIso8601String(),
        },
      );

      // Response contains AI-generated personalized advice
      return response.data;
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
      final response = await _apiService.get(
        ApiEndpoints.compatibilityAnalysis(user1Id, user2Id),
      );

      // Response contains AI-generated compatibility analysis
      return CompatibilityAnalysisModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error getting compatibility analysis', e);
      rethrow;
    }
  }

  /// Get astrology profile
  Future<AstrologyProfileModel> getAstrologyProfile(String userId) async {
    try {
      final response = await _apiService.get(
        '${ApiEndpoints.astrologyProfile}/$userId',
      );
      return AstrologyProfileModel.fromJson(response.data);
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
      final response = await _apiService.put(
        ApiEndpoints.astrologyProfile,
        data: {
          'userId': userId,
          'birthDate': birthDate.toIso8601String(),
          'birthTime': birthTime,
          'birthLocation': birthLocation,
        },
      );
      return AstrologyProfileModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error updating astrology profile', e);
      rethrow;
    }
  }

  /// Get all zodiac signs
  Future<List<ZodiacSignModel>> getZodiacSigns() async {
    try {
      final response = await _apiService.get(ApiEndpoints.zodiacSigns);
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => ZodiacSignModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting zodiac signs', e);
      rethrow;
    }
  }
}

