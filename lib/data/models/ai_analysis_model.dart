import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_analysis_model.freezed.dart';
part 'ai_analysis_model.g.dart';

/// AI Analysis Result Model
/// Represents the response from AI model after analyzing birth information
@freezed
class AIAnalysisModel with _$AIAnalysisModel {
  const factory AIAnalysisModel({
    required String analysis, // AI-generated analysis text
    required double score, // Compatibility/analysis score (0-100)
    Map<String, dynamic>? chartData, // Birth chart data
    Map<String, dynamic>? details, // Additional analysis details
    String? zodiacSign, // Calculated zodiac sign
    List<String>? keyInsights, // Key insights from AI
    DateTime? analyzedAt, // When the analysis was performed
  }) = _AIAnalysisModel;

  factory AIAnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$AIAnalysisModelFromJson(json);
}

/// Birth Chart Data Model
@freezed
class BirthChartDataModel with _$BirthChartDataModel {
  const factory BirthChartDataModel({
    required List<PlanetPositionModel> planets,
    required List<HouseModel> houses,
    required List<AspectModel> aspects,
    required double ascendant, // Rising sign degree
    required double midheaven, // MC degree
  }) = _BirthChartDataModel;

  factory BirthChartDataModel.fromJson(Map<String, dynamic> json) =>
      _$BirthChartDataModelFromJson(json);
}

/// Planet Position Model
@freezed
class PlanetPositionModel with _$PlanetPositionModel {
  const factory PlanetPositionModel({
    required String planet, // Planet name (Sun, Moon, etc.)
    required double degree, // Position in degrees
    required String sign, // Zodiac sign
    required int house, // House number (1-12)
  }) = _PlanetPositionModel;

  factory PlanetPositionModel.fromJson(Map<String, dynamic> json) =>
      _$PlanetPositionModelFromJson(json);
}

/// House Model
@freezed
class HouseModel with _$HouseModel {
  const factory HouseModel({
    required int houseNumber, // 1-12
    required double cuspDegree, // House cusp degree
    required String sign, // Sign on the cusp
  }) = _HouseModel;

  factory HouseModel.fromJson(Map<String, dynamic> json) =>
      _$HouseModelFromJson(json);
}

/// Aspect Model
@freezed
class AspectModel with _$AspectModel {
  const factory AspectModel({
    required String planet1,
    required String planet2,
    required String aspectType, // Conjunction, Opposition, etc.
    required double orb, // Orb in degrees
  }) = _AspectModel;

  factory AspectModel.fromJson(Map<String, dynamic> json) =>
      _$AspectModelFromJson(json);
}

