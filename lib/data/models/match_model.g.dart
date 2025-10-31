// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchModelImpl _$$MatchModelImplFromJson(Map<String, dynamic> json) =>
    _$MatchModelImpl(
      id: json['id'] as String,
      user1Id: json['user1Id'] as String,
      user2Id: json['user2Id'] as String,
      status: $enumDecode(_$MatchStatusEnumMap, json['status']),
      compatibilityScore: (json['compatibilityScore'] as num?)?.toDouble(),
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
      matchedUser:
          json['matchedUser'] == null
              ? null
              : UserModel.fromJson(json['matchedUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MatchModelImplToJson(_$MatchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user1Id': instance.user1Id,
      'user2Id': instance.user2Id,
      'status': _$MatchStatusEnumMap[instance.status]!,
      'compatibilityScore': instance.compatibilityScore,
      'createdAt': instance.createdAt?.toIso8601String(),
      'matchedUser': instance.matchedUser,
    };

const _$MatchStatusEnumMap = {
  MatchStatus.active: 'active',
  MatchStatus.unmatched: 'unmatched',
  MatchStatus.blocked: 'blocked',
  MatchStatus.expired: 'expired',
};

_$SwipeActionModelImpl _$$SwipeActionModelImplFromJson(
  Map<String, dynamic> json,
) => _$SwipeActionModelImpl(
  swipedUserId: json['swipedUserId'] as String,
  action: $enumDecode(_$SwipeTypeEnumMap, json['action']),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$SwipeActionModelImplToJson(
  _$SwipeActionModelImpl instance,
) => <String, dynamic>{
  'swipedUserId': instance.swipedUserId,
  'action': _$SwipeTypeEnumMap[instance.action]!,
  'createdAt': instance.createdAt?.toIso8601String(),
};

const _$SwipeTypeEnumMap = {
  SwipeType.like: 'like',
  SwipeType.dislike: 'dislike',
  SwipeType.superLike: 'superLike',
};
