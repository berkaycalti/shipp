import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

/// User Model
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    String? email,
    String? phoneNumber,
    required String displayName,
    String? bio,
    DateTime? birthDate,
    String? birthTime,
    String? birthLocation,
    String? gender,
    String? sexualOrientation,
    String? profileStatus,
    double? currentLocationLat,
    double? currentLocationLon,
    String? jobTitle,
    String? education,
    List<String>? photoUrls,
    String? profilePhotoUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default(false) bool isVerified,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

/// User Profile Model (extended user info)
@freezed
class UserProfileModel with _$UserProfileModel {
  const factory UserProfileModel({
    required String userId,
    required String displayName,
    String? bio,
    String? gender,
    String? sexualOrientation,
    double? currentLocationLat,
    double? currentLocationLon,
    String? jobTitle,
    String? education,
    List<String>? interests,
    String? profileStatus,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

