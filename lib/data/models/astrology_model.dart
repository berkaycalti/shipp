import 'package:freezed_annotation/freezed_annotation.dart';

part 'astrology_model.freezed.dart';
part 'astrology_model.g.dart';

/// Astrology Profile Model
@freezed
class AstrologyProfileModel with _$AstrologyProfileModel {
  const factory AstrologyProfileModel({
    required String userId,
    int? sunSignId,
    int? moonSignId,
    int? risingSignId,
    Map<String, dynamic>? fullChartData,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AstrologyProfileModel;

  factory AstrologyProfileModel.fromJson(Map<String, dynamic> json) =>
      _$AstrologyProfileModelFromJson(json);
}

/// Zodiac Sign Model
@freezed
class ZodiacSignModel with _$ZodiacSignModel {
  const factory ZodiacSignModel({
    required int id,
    required String signName,
    required String element,
    required String modality,
    String? description,
    DateTime? createdAt,
  }) = _ZodiacSignModel;

  factory ZodiacSignModel.fromJson(Map<String, dynamic> json) =>
      _$ZodiacSignModelFromJson(json);
}

/// Compatibility Analysis Model
@freezed
class CompatibilityAnalysisModel with _$CompatibilityAnalysisModel {
  const factory CompatibilityAnalysisModel({
    required String id,
    required String user1Id,
    required String user2Id,
    required double score,
    Map<String, dynamic>? analysisDetails,
    String? version,
    DateTime? createdAt,
  }) = _CompatibilityAnalysisModel;

  factory CompatibilityAnalysisModel.fromJson(Map<String, dynamic> json) =>
      _$CompatibilityAnalysisModelFromJson(json);
}

