// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivacySettingsModelImpl _$$PrivacySettingsModelImplFromJson(
  Map<String, dynamic> json,
) => _$PrivacySettingsModelImpl(
  userId: json['userId'] as String,
  locationVisibility: json['locationVisibility'] as bool? ?? false,
  profileVisibilityToNonMatches:
      json['profileVisibilityToNonMatches'] as bool? ?? false,
  showAstrologicalChartDetails:
      json['showAstrologicalChartDetails'] as bool? ?? true,
  isDiscoverable: json['isDiscoverable'] as bool? ?? true,
  showOnlineStatus: json['showOnlineStatus'] as bool? ?? false,
  allowMessagesFromNonMatches:
      json['allowMessagesFromNonMatches'] as bool? ?? false,
);

Map<String, dynamic> _$$PrivacySettingsModelImplToJson(
  _$PrivacySettingsModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'locationVisibility': instance.locationVisibility,
  'profileVisibilityToNonMatches': instance.profileVisibilityToNonMatches,
  'showAstrologicalChartDetails': instance.showAstrologicalChartDetails,
  'isDiscoverable': instance.isDiscoverable,
  'showOnlineStatus': instance.showOnlineStatus,
  'allowMessagesFromNonMatches': instance.allowMessagesFromNonMatches,
};

_$NotificationSettingsModelImpl _$$NotificationSettingsModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationSettingsModelImpl(
  userId: json['userId'] as String,
  matchNotifications: json['matchNotifications'] as bool? ?? true,
  messageNotifications: json['messageNotifications'] as bool? ?? true,
  likeNotifications: json['likeNotifications'] as bool? ?? true,
  superlikeNotifications: json['superlikeNotifications'] as bool? ?? true,
  subscriptionNotifications: json['subscriptionNotifications'] as bool? ?? true,
  systemNotifications: json['systemNotifications'] as bool? ?? true,
  reminderNotifications: json['reminderNotifications'] as bool? ?? true,
  emailNotifications: json['emailNotifications'] as bool? ?? false,
  smsNotifications: json['smsNotifications'] as bool? ?? false,
);

Map<String, dynamic> _$$NotificationSettingsModelImplToJson(
  _$NotificationSettingsModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'matchNotifications': instance.matchNotifications,
  'messageNotifications': instance.messageNotifications,
  'likeNotifications': instance.likeNotifications,
  'superlikeNotifications': instance.superlikeNotifications,
  'subscriptionNotifications': instance.subscriptionNotifications,
  'systemNotifications': instance.systemNotifications,
  'reminderNotifications': instance.reminderNotifications,
  'emailNotifications': instance.emailNotifications,
  'smsNotifications': instance.smsNotifications,
};

_$UserPreferencesModelImpl _$$UserPreferencesModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserPreferencesModelImpl(
  userId: json['userId'] as String,
  language: json['language'] as String? ?? 'en',
  theme: json['theme'] as String? ?? 'light',
  ageRangeMin: (json['ageRangeMin'] as num?)?.toInt(),
  ageRangeMax: (json['ageRangeMax'] as num?)?.toInt(),
  maxDistanceKm: (json['maxDistanceKm'] as num?)?.toInt(),
  preferredGenders:
      (json['preferredGenders'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  showOnlyVerified: json['showOnlyVerified'] as bool?,
  discoveryPreferences: json['discoveryPreferences'] as Map<String, dynamic>?,
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$UserPreferencesModelImplToJson(
  _$UserPreferencesModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'language': instance.language,
  'theme': instance.theme,
  'ageRangeMin': instance.ageRangeMin,
  'ageRangeMax': instance.ageRangeMax,
  'maxDistanceKm': instance.maxDistanceKm,
  'preferredGenders': instance.preferredGenders,
  'showOnlyVerified': instance.showOnlyVerified,
  'discoveryPreferences': instance.discoveryPreferences,
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
