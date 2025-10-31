// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_analysis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AIAnalysisModelImpl _$$AIAnalysisModelImplFromJson(
  Map<String, dynamic> json,
) => _$AIAnalysisModelImpl(
  analysis: json['analysis'] as String,
  score: (json['score'] as num).toDouble(),
  chartData: json['chartData'] as Map<String, dynamic>?,
  details: json['details'] as Map<String, dynamic>?,
  zodiacSign: json['zodiacSign'] as String?,
  keyInsights:
      (json['keyInsights'] as List<dynamic>?)?.map((e) => e as String).toList(),
  analyzedAt:
      json['analyzedAt'] == null
          ? null
          : DateTime.parse(json['analyzedAt'] as String),
);

Map<String, dynamic> _$$AIAnalysisModelImplToJson(
  _$AIAnalysisModelImpl instance,
) => <String, dynamic>{
  'analysis': instance.analysis,
  'score': instance.score,
  'chartData': instance.chartData,
  'details': instance.details,
  'zodiacSign': instance.zodiacSign,
  'keyInsights': instance.keyInsights,
  'analyzedAt': instance.analyzedAt?.toIso8601String(),
};

_$BirthChartDataModelImpl _$$BirthChartDataModelImplFromJson(
  Map<String, dynamic> json,
) => _$BirthChartDataModelImpl(
  planets:
      (json['planets'] as List<dynamic>)
          .map((e) => PlanetPositionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  houses:
      (json['houses'] as List<dynamic>)
          .map((e) => HouseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  aspects:
      (json['aspects'] as List<dynamic>)
          .map((e) => AspectModel.fromJson(e as Map<String, dynamic>))
          .toList(),
  ascendant: (json['ascendant'] as num).toDouble(),
  midheaven: (json['midheaven'] as num).toDouble(),
);

Map<String, dynamic> _$$BirthChartDataModelImplToJson(
  _$BirthChartDataModelImpl instance,
) => <String, dynamic>{
  'planets': instance.planets,
  'houses': instance.houses,
  'aspects': instance.aspects,
  'ascendant': instance.ascendant,
  'midheaven': instance.midheaven,
};

_$PlanetPositionModelImpl _$$PlanetPositionModelImplFromJson(
  Map<String, dynamic> json,
) => _$PlanetPositionModelImpl(
  planet: json['planet'] as String,
  degree: (json['degree'] as num).toDouble(),
  sign: json['sign'] as String,
  house: (json['house'] as num).toInt(),
);

Map<String, dynamic> _$$PlanetPositionModelImplToJson(
  _$PlanetPositionModelImpl instance,
) => <String, dynamic>{
  'planet': instance.planet,
  'degree': instance.degree,
  'sign': instance.sign,
  'house': instance.house,
};

_$HouseModelImpl _$$HouseModelImplFromJson(Map<String, dynamic> json) =>
    _$HouseModelImpl(
      houseNumber: (json['houseNumber'] as num).toInt(),
      cuspDegree: (json['cuspDegree'] as num).toDouble(),
      sign: json['sign'] as String,
    );

Map<String, dynamic> _$$HouseModelImplToJson(_$HouseModelImpl instance) =>
    <String, dynamic>{
      'houseNumber': instance.houseNumber,
      'cuspDegree': instance.cuspDegree,
      'sign': instance.sign,
    };

_$AspectModelImpl _$$AspectModelImplFromJson(Map<String, dynamic> json) =>
    _$AspectModelImpl(
      planet1: json['planet1'] as String,
      planet2: json['planet2'] as String,
      aspectType: json['aspectType'] as String,
      orb: (json['orb'] as num).toDouble(),
    );

Map<String, dynamic> _$$AspectModelImplToJson(_$AspectModelImpl instance) =>
    <String, dynamic>{
      'planet1': instance.planet1,
      'planet2': instance.planet2,
      'aspectType': instance.aspectType,
      'orb': instance.orb,
    };
