// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterestModelImpl _$$InterestModelImplFromJson(Map<String, dynamic> json) =>
    _$InterestModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String?,
      icon: json['icon'] as String?,
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$InterestModelImplToJson(_$InterestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'icon': instance.icon,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

_$UserInterestModelImpl _$$UserInterestModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserInterestModelImpl(
  userId: json['userId'] as String,
  interestId: json['interestId'] as String,
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$UserInterestModelImplToJson(
  _$UserInterestModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'interestId': instance.interestId,
  'createdAt': instance.createdAt?.toIso8601String(),
};
