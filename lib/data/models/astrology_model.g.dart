// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'astrology_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AstrologyProfileModelImpl _$$AstrologyProfileModelImplFromJson(
  Map<String, dynamic> json,
) => _$AstrologyProfileModelImpl(
  userId: json['userId'] as String,
  sunSignId: (json['sunSignId'] as num?)?.toInt(),
  moonSignId: (json['moonSignId'] as num?)?.toInt(),
  risingSignId: (json['risingSignId'] as num?)?.toInt(),
  fullChartData: json['fullChartData'] as Map<String, dynamic>?,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$AstrologyProfileModelImplToJson(
  _$AstrologyProfileModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'sunSignId': instance.sunSignId,
  'moonSignId': instance.moonSignId,
  'risingSignId': instance.risingSignId,
  'fullChartData': instance.fullChartData,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

_$ZodiacSignModelImpl _$$ZodiacSignModelImplFromJson(
  Map<String, dynamic> json,
) => _$ZodiacSignModelImpl(
  id: (json['id'] as num).toInt(),
  signName: json['signName'] as String,
  element: json['element'] as String,
  modality: json['modality'] as String,
  description: json['description'] as String?,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$ZodiacSignModelImplToJson(
  _$ZodiacSignModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'signName': instance.signName,
  'element': instance.element,
  'modality': instance.modality,
  'description': instance.description,
  'createdAt': instance.createdAt?.toIso8601String(),
};

_$CompatibilityAnalysisModelImpl _$$CompatibilityAnalysisModelImplFromJson(
  Map<String, dynamic> json,
) => _$CompatibilityAnalysisModelImpl(
  id: json['id'] as String,
  user1Id: json['user1Id'] as String,
  user2Id: json['user2Id'] as String,
  score: (json['score'] as num).toDouble(),
  analysisDetails: json['analysisDetails'] as Map<String, dynamic>?,
  version: json['version'] as String?,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$CompatibilityAnalysisModelImplToJson(
  _$CompatibilityAnalysisModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'user1Id': instance.user1Id,
  'user2Id': instance.user2Id,
  'score': instance.score,
  'analysisDetails': instance.analysisDetails,
  'version': instance.version,
  'createdAt': instance.createdAt?.toIso8601String(),
};
