import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

/// Privacy Settings Model
@freezed
class PrivacySettingsModel with _$PrivacySettingsModel {
  const factory PrivacySettingsModel({
    required String userId,
    @Default(false) bool locationVisibility,
    @Default(false) bool profileVisibilityToNonMatches,
    @Default(true) bool showAstrologicalChartDetails,
    @Default(true) bool isDiscoverable,
    @Default(false) bool showOnlineStatus,
    @Default(false) bool allowMessagesFromNonMatches,
  }) = _PrivacySettingsModel;

  factory PrivacySettingsModel.fromJson(Map<String, dynamic> json) =>
      _$PrivacySettingsModelFromJson(json);
}

/// Notification Settings Model
@freezed
class NotificationSettingsModel with _$NotificationSettingsModel {
  const factory NotificationSettingsModel({
    required String userId,
    @Default(true) bool matchNotifications,
    @Default(true) bool messageNotifications,
    @Default(true) bool likeNotifications,
    @Default(true) bool superlikeNotifications,
    @Default(true) bool subscriptionNotifications,
    @Default(true) bool systemNotifications,
    @Default(true) bool reminderNotifications,
    @Default(false) bool emailNotifications,
    @Default(false) bool smsNotifications,
  }) = _NotificationSettingsModel;

  factory NotificationSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationSettingsModelFromJson(json);
}

/// User Preferences Model
@freezed
class UserPreferencesModel with _$UserPreferencesModel {
  const factory UserPreferencesModel({
    required String userId,
    @Default('en') String language,
    @Default('light') String theme,
    int? ageRangeMin,
    int? ageRangeMax,
    int? maxDistanceKm,
    List<String>? preferredGenders,
    bool? showOnlyVerified,
    Map<String, dynamic>? discoveryPreferences,
    DateTime? updatedAt,
  }) = _UserPreferencesModel;

  factory UserPreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$UserPreferencesModelFromJson(json);
}

