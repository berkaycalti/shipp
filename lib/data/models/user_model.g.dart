// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      displayName: json['displayName'] as String,
      bio: json['bio'] as String?,
      birthDate:
          json['birthDate'] == null
              ? null
              : DateTime.parse(json['birthDate'] as String),
      birthTime: json['birthTime'] as String?,
      birthLocation: json['birthLocation'] as String?,
      gender: json['gender'] as String?,
      sexualOrientation: json['sexualOrientation'] as String?,
      profileStatus: json['profileStatus'] as String?,
      currentLocationLat: (json['currentLocationLat'] as num?)?.toDouble(),
      currentLocationLon: (json['currentLocationLon'] as num?)?.toDouble(),
      jobTitle: json['jobTitle'] as String?,
      education: json['education'] as String?,
      photoUrls:
          (json['photoUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      profilePhotoUrl: json['profilePhotoUrl'] as String?,
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
      updatedAt:
          json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
      isVerified: json['isVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'displayName': instance.displayName,
      'bio': instance.bio,
      'birthDate': instance.birthDate?.toIso8601String(),
      'birthTime': instance.birthTime,
      'birthLocation': instance.birthLocation,
      'gender': instance.gender,
      'sexualOrientation': instance.sexualOrientation,
      'profileStatus': instance.profileStatus,
      'currentLocationLat': instance.currentLocationLat,
      'currentLocationLon': instance.currentLocationLon,
      'jobTitle': instance.jobTitle,
      'education': instance.education,
      'photoUrls': instance.photoUrls,
      'profilePhotoUrl': instance.profilePhotoUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'isVerified': instance.isVerified,
    };

_$UserProfileModelImpl _$$UserProfileModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserProfileModelImpl(
  userId: json['userId'] as String,
  displayName: json['displayName'] as String,
  bio: json['bio'] as String?,
  gender: json['gender'] as String?,
  sexualOrientation: json['sexualOrientation'] as String?,
  currentLocationLat: (json['currentLocationLat'] as num?)?.toDouble(),
  currentLocationLon: (json['currentLocationLon'] as num?)?.toDouble(),
  jobTitle: json['jobTitle'] as String?,
  education: json['education'] as String?,
  interests:
      (json['interests'] as List<dynamic>?)?.map((e) => e as String).toList(),
  profileStatus: json['profileStatus'] as String?,
);

Map<String, dynamic> _$$UserProfileModelImplToJson(
  _$UserProfileModelImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'displayName': instance.displayName,
  'bio': instance.bio,
  'gender': instance.gender,
  'sexualOrientation': instance.sexualOrientation,
  'currentLocationLat': instance.currentLocationLat,
  'currentLocationLon': instance.currentLocationLon,
  'jobTitle': instance.jobTitle,
  'education': instance.education,
  'interests': instance.interests,
  'profileStatus': instance.profileStatus,
};
