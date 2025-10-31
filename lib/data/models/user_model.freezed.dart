// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  String? get birthTime => throw _privateConstructorUsedError;
  String? get birthLocation => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get sexualOrientation => throw _privateConstructorUsedError;
  String? get profileStatus => throw _privateConstructorUsedError;
  double? get currentLocationLat => throw _privateConstructorUsedError;
  double? get currentLocationLon => throw _privateConstructorUsedError;
  String? get jobTitle => throw _privateConstructorUsedError;
  String? get education => throw _privateConstructorUsedError;
  List<String>? get photoUrls => throw _privateConstructorUsedError;
  String? get profilePhotoUrl => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call({
    String id,
    String? email,
    String? phoneNumber,
    String displayName,
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
    bool isVerified,
  });
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? displayName = null,
    Object? bio = freezed,
    Object? birthDate = freezed,
    Object? birthTime = freezed,
    Object? birthLocation = freezed,
    Object? gender = freezed,
    Object? sexualOrientation = freezed,
    Object? profileStatus = freezed,
    Object? currentLocationLat = freezed,
    Object? currentLocationLon = freezed,
    Object? jobTitle = freezed,
    Object? education = freezed,
    Object? photoUrls = freezed,
    Object? profilePhotoUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isVerified = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            email:
                freezed == email
                    ? _value.email
                    : email // ignore: cast_nullable_to_non_nullable
                        as String?,
            phoneNumber:
                freezed == phoneNumber
                    ? _value.phoneNumber
                    : phoneNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            displayName:
                null == displayName
                    ? _value.displayName
                    : displayName // ignore: cast_nullable_to_non_nullable
                        as String,
            bio:
                freezed == bio
                    ? _value.bio
                    : bio // ignore: cast_nullable_to_non_nullable
                        as String?,
            birthDate:
                freezed == birthDate
                    ? _value.birthDate
                    : birthDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            birthTime:
                freezed == birthTime
                    ? _value.birthTime
                    : birthTime // ignore: cast_nullable_to_non_nullable
                        as String?,
            birthLocation:
                freezed == birthLocation
                    ? _value.birthLocation
                    : birthLocation // ignore: cast_nullable_to_non_nullable
                        as String?,
            gender:
                freezed == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String?,
            sexualOrientation:
                freezed == sexualOrientation
                    ? _value.sexualOrientation
                    : sexualOrientation // ignore: cast_nullable_to_non_nullable
                        as String?,
            profileStatus:
                freezed == profileStatus
                    ? _value.profileStatus
                    : profileStatus // ignore: cast_nullable_to_non_nullable
                        as String?,
            currentLocationLat:
                freezed == currentLocationLat
                    ? _value.currentLocationLat
                    : currentLocationLat // ignore: cast_nullable_to_non_nullable
                        as double?,
            currentLocationLon:
                freezed == currentLocationLon
                    ? _value.currentLocationLon
                    : currentLocationLon // ignore: cast_nullable_to_non_nullable
                        as double?,
            jobTitle:
                freezed == jobTitle
                    ? _value.jobTitle
                    : jobTitle // ignore: cast_nullable_to_non_nullable
                        as String?,
            education:
                freezed == education
                    ? _value.education
                    : education // ignore: cast_nullable_to_non_nullable
                        as String?,
            photoUrls:
                freezed == photoUrls
                    ? _value.photoUrls
                    : photoUrls // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            profilePhotoUrl:
                freezed == profilePhotoUrl
                    ? _value.profilePhotoUrl
                    : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            isVerified:
                null == isVerified
                    ? _value.isVerified
                    : isVerified // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
    _$UserModelImpl value,
    $Res Function(_$UserModelImpl) then,
  ) = __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? email,
    String? phoneNumber,
    String displayName,
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
    bool isVerified,
  });
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
    _$UserModelImpl _value,
    $Res Function(_$UserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? displayName = null,
    Object? bio = freezed,
    Object? birthDate = freezed,
    Object? birthTime = freezed,
    Object? birthLocation = freezed,
    Object? gender = freezed,
    Object? sexualOrientation = freezed,
    Object? profileStatus = freezed,
    Object? currentLocationLat = freezed,
    Object? currentLocationLon = freezed,
    Object? jobTitle = freezed,
    Object? education = freezed,
    Object? photoUrls = freezed,
    Object? profilePhotoUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isVerified = null,
  }) {
    return _then(
      _$UserModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        email:
            freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String?,
        phoneNumber:
            freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        displayName:
            null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                    as String,
        bio:
            freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                    as String?,
        birthDate:
            freezed == birthDate
                ? _value.birthDate
                : birthDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        birthTime:
            freezed == birthTime
                ? _value.birthTime
                : birthTime // ignore: cast_nullable_to_non_nullable
                    as String?,
        birthLocation:
            freezed == birthLocation
                ? _value.birthLocation
                : birthLocation // ignore: cast_nullable_to_non_nullable
                    as String?,
        gender:
            freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String?,
        sexualOrientation:
            freezed == sexualOrientation
                ? _value.sexualOrientation
                : sexualOrientation // ignore: cast_nullable_to_non_nullable
                    as String?,
        profileStatus:
            freezed == profileStatus
                ? _value.profileStatus
                : profileStatus // ignore: cast_nullable_to_non_nullable
                    as String?,
        currentLocationLat:
            freezed == currentLocationLat
                ? _value.currentLocationLat
                : currentLocationLat // ignore: cast_nullable_to_non_nullable
                    as double?,
        currentLocationLon:
            freezed == currentLocationLon
                ? _value.currentLocationLon
                : currentLocationLon // ignore: cast_nullable_to_non_nullable
                    as double?,
        jobTitle:
            freezed == jobTitle
                ? _value.jobTitle
                : jobTitle // ignore: cast_nullable_to_non_nullable
                    as String?,
        education:
            freezed == education
                ? _value.education
                : education // ignore: cast_nullable_to_non_nullable
                    as String?,
        photoUrls:
            freezed == photoUrls
                ? _value._photoUrls
                : photoUrls // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        profilePhotoUrl:
            freezed == profilePhotoUrl
                ? _value.profilePhotoUrl
                : profilePhotoUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        isVerified:
            null == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl({
    required this.id,
    this.email,
    this.phoneNumber,
    required this.displayName,
    this.bio,
    this.birthDate,
    this.birthTime,
    this.birthLocation,
    this.gender,
    this.sexualOrientation,
    this.profileStatus,
    this.currentLocationLat,
    this.currentLocationLon,
    this.jobTitle,
    this.education,
    final List<String>? photoUrls,
    this.profilePhotoUrl,
    this.createdAt,
    this.updatedAt,
    this.isVerified = false,
  }) : _photoUrls = photoUrls;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String displayName;
  @override
  final String? bio;
  @override
  final DateTime? birthDate;
  @override
  final String? birthTime;
  @override
  final String? birthLocation;
  @override
  final String? gender;
  @override
  final String? sexualOrientation;
  @override
  final String? profileStatus;
  @override
  final double? currentLocationLat;
  @override
  final double? currentLocationLon;
  @override
  final String? jobTitle;
  @override
  final String? education;
  final List<String>? _photoUrls;
  @override
  List<String>? get photoUrls {
    final value = _photoUrls;
    if (value == null) return null;
    if (_photoUrls is EqualUnmodifiableListView) return _photoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? profilePhotoUrl;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  @JsonKey()
  final bool isVerified;

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, phoneNumber: $phoneNumber, displayName: $displayName, bio: $bio, birthDate: $birthDate, birthTime: $birthTime, birthLocation: $birthLocation, gender: $gender, sexualOrientation: $sexualOrientation, profileStatus: $profileStatus, currentLocationLat: $currentLocationLat, currentLocationLon: $currentLocationLon, jobTitle: $jobTitle, education: $education, photoUrls: $photoUrls, profilePhotoUrl: $profilePhotoUrl, createdAt: $createdAt, updatedAt: $updatedAt, isVerified: $isVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.birthTime, birthTime) ||
                other.birthTime == birthTime) &&
            (identical(other.birthLocation, birthLocation) ||
                other.birthLocation == birthLocation) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.sexualOrientation, sexualOrientation) ||
                other.sexualOrientation == sexualOrientation) &&
            (identical(other.profileStatus, profileStatus) ||
                other.profileStatus == profileStatus) &&
            (identical(other.currentLocationLat, currentLocationLat) ||
                other.currentLocationLat == currentLocationLat) &&
            (identical(other.currentLocationLon, currentLocationLon) ||
                other.currentLocationLon == currentLocationLon) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.education, education) ||
                other.education == education) &&
            const DeepCollectionEquality().equals(
              other._photoUrls,
              _photoUrls,
            ) &&
            (identical(other.profilePhotoUrl, profilePhotoUrl) ||
                other.profilePhotoUrl == profilePhotoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    email,
    phoneNumber,
    displayName,
    bio,
    birthDate,
    birthTime,
    birthLocation,
    gender,
    sexualOrientation,
    profileStatus,
    currentLocationLat,
    currentLocationLon,
    jobTitle,
    education,
    const DeepCollectionEquality().hash(_photoUrls),
    profilePhotoUrl,
    createdAt,
    updatedAt,
    isVerified,
  ]);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel({
    required final String id,
    final String? email,
    final String? phoneNumber,
    required final String displayName,
    final String? bio,
    final DateTime? birthDate,
    final String? birthTime,
    final String? birthLocation,
    final String? gender,
    final String? sexualOrientation,
    final String? profileStatus,
    final double? currentLocationLat,
    final double? currentLocationLon,
    final String? jobTitle,
    final String? education,
    final List<String>? photoUrls,
    final String? profilePhotoUrl,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final bool isVerified,
  }) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String get displayName;
  @override
  String? get bio;
  @override
  DateTime? get birthDate;
  @override
  String? get birthTime;
  @override
  String? get birthLocation;
  @override
  String? get gender;
  @override
  String? get sexualOrientation;
  @override
  String? get profileStatus;
  @override
  double? get currentLocationLat;
  @override
  double? get currentLocationLon;
  @override
  String? get jobTitle;
  @override
  String? get education;
  @override
  List<String>? get photoUrls;
  @override
  String? get profilePhotoUrl;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  bool get isVerified;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileModel {
  String get userId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get sexualOrientation => throw _privateConstructorUsedError;
  double? get currentLocationLat => throw _privateConstructorUsedError;
  double? get currentLocationLon => throw _privateConstructorUsedError;
  String? get jobTitle => throw _privateConstructorUsedError;
  String? get education => throw _privateConstructorUsedError;
  List<String>? get interests => throw _privateConstructorUsedError;
  String? get profileStatus => throw _privateConstructorUsedError;

  /// Serializes this UserProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
    UserProfileModel value,
    $Res Function(UserProfileModel) then,
  ) = _$UserProfileModelCopyWithImpl<$Res, UserProfileModel>;
  @useResult
  $Res call({
    String userId,
    String displayName,
    String? bio,
    String? gender,
    String? sexualOrientation,
    double? currentLocationLat,
    double? currentLocationLon,
    String? jobTitle,
    String? education,
    List<String>? interests,
    String? profileStatus,
  });
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res, $Val extends UserProfileModel>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? bio = freezed,
    Object? gender = freezed,
    Object? sexualOrientation = freezed,
    Object? currentLocationLat = freezed,
    Object? currentLocationLon = freezed,
    Object? jobTitle = freezed,
    Object? education = freezed,
    Object? interests = freezed,
    Object? profileStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            displayName:
                null == displayName
                    ? _value.displayName
                    : displayName // ignore: cast_nullable_to_non_nullable
                        as String,
            bio:
                freezed == bio
                    ? _value.bio
                    : bio // ignore: cast_nullable_to_non_nullable
                        as String?,
            gender:
                freezed == gender
                    ? _value.gender
                    : gender // ignore: cast_nullable_to_non_nullable
                        as String?,
            sexualOrientation:
                freezed == sexualOrientation
                    ? _value.sexualOrientation
                    : sexualOrientation // ignore: cast_nullable_to_non_nullable
                        as String?,
            currentLocationLat:
                freezed == currentLocationLat
                    ? _value.currentLocationLat
                    : currentLocationLat // ignore: cast_nullable_to_non_nullable
                        as double?,
            currentLocationLon:
                freezed == currentLocationLon
                    ? _value.currentLocationLon
                    : currentLocationLon // ignore: cast_nullable_to_non_nullable
                        as double?,
            jobTitle:
                freezed == jobTitle
                    ? _value.jobTitle
                    : jobTitle // ignore: cast_nullable_to_non_nullable
                        as String?,
            education:
                freezed == education
                    ? _value.education
                    : education // ignore: cast_nullable_to_non_nullable
                        as String?,
            interests:
                freezed == interests
                    ? _value.interests
                    : interests // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            profileStatus:
                freezed == profileStatus
                    ? _value.profileStatus
                    : profileStatus // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileModelImplCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$UserProfileModelImplCopyWith(
    _$UserProfileModelImpl value,
    $Res Function(_$UserProfileModelImpl) then,
  ) = __$$UserProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String displayName,
    String? bio,
    String? gender,
    String? sexualOrientation,
    double? currentLocationLat,
    double? currentLocationLon,
    String? jobTitle,
    String? education,
    List<String>? interests,
    String? profileStatus,
  });
}

/// @nodoc
class __$$UserProfileModelImplCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res, _$UserProfileModelImpl>
    implements _$$UserProfileModelImplCopyWith<$Res> {
  __$$UserProfileModelImplCopyWithImpl(
    _$UserProfileModelImpl _value,
    $Res Function(_$UserProfileModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? bio = freezed,
    Object? gender = freezed,
    Object? sexualOrientation = freezed,
    Object? currentLocationLat = freezed,
    Object? currentLocationLon = freezed,
    Object? jobTitle = freezed,
    Object? education = freezed,
    Object? interests = freezed,
    Object? profileStatus = freezed,
  }) {
    return _then(
      _$UserProfileModelImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        displayName:
            null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                    as String,
        bio:
            freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                    as String?,
        gender:
            freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                    as String?,
        sexualOrientation:
            freezed == sexualOrientation
                ? _value.sexualOrientation
                : sexualOrientation // ignore: cast_nullable_to_non_nullable
                    as String?,
        currentLocationLat:
            freezed == currentLocationLat
                ? _value.currentLocationLat
                : currentLocationLat // ignore: cast_nullable_to_non_nullable
                    as double?,
        currentLocationLon:
            freezed == currentLocationLon
                ? _value.currentLocationLon
                : currentLocationLon // ignore: cast_nullable_to_non_nullable
                    as double?,
        jobTitle:
            freezed == jobTitle
                ? _value.jobTitle
                : jobTitle // ignore: cast_nullable_to_non_nullable
                    as String?,
        education:
            freezed == education
                ? _value.education
                : education // ignore: cast_nullable_to_non_nullable
                    as String?,
        interests:
            freezed == interests
                ? _value._interests
                : interests // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        profileStatus:
            freezed == profileStatus
                ? _value.profileStatus
                : profileStatus // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileModelImpl implements _UserProfileModel {
  const _$UserProfileModelImpl({
    required this.userId,
    required this.displayName,
    this.bio,
    this.gender,
    this.sexualOrientation,
    this.currentLocationLat,
    this.currentLocationLon,
    this.jobTitle,
    this.education,
    final List<String>? interests,
    this.profileStatus,
  }) : _interests = interests;

  factory _$UserProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String displayName;
  @override
  final String? bio;
  @override
  final String? gender;
  @override
  final String? sexualOrientation;
  @override
  final double? currentLocationLat;
  @override
  final double? currentLocationLon;
  @override
  final String? jobTitle;
  @override
  final String? education;
  final List<String>? _interests;
  @override
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? profileStatus;

  @override
  String toString() {
    return 'UserProfileModel(userId: $userId, displayName: $displayName, bio: $bio, gender: $gender, sexualOrientation: $sexualOrientation, currentLocationLat: $currentLocationLat, currentLocationLon: $currentLocationLon, jobTitle: $jobTitle, education: $education, interests: $interests, profileStatus: $profileStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.sexualOrientation, sexualOrientation) ||
                other.sexualOrientation == sexualOrientation) &&
            (identical(other.currentLocationLat, currentLocationLat) ||
                other.currentLocationLat == currentLocationLat) &&
            (identical(other.currentLocationLon, currentLocationLon) ||
                other.currentLocationLon == currentLocationLon) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.education, education) ||
                other.education == education) &&
            const DeepCollectionEquality().equals(
              other._interests,
              _interests,
            ) &&
            (identical(other.profileStatus, profileStatus) ||
                other.profileStatus == profileStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    displayName,
    bio,
    gender,
    sexualOrientation,
    currentLocationLat,
    currentLocationLon,
    jobTitle,
    education,
    const DeepCollectionEquality().hash(_interests),
    profileStatus,
  );

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      __$$UserProfileModelImplCopyWithImpl<_$UserProfileModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileModelImplToJson(this);
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel({
    required final String userId,
    required final String displayName,
    final String? bio,
    final String? gender,
    final String? sexualOrientation,
    final double? currentLocationLat,
    final double? currentLocationLon,
    final String? jobTitle,
    final String? education,
    final List<String>? interests,
    final String? profileStatus,
  }) = _$UserProfileModelImpl;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get displayName;
  @override
  String? get bio;
  @override
  String? get gender;
  @override
  String? get sexualOrientation;
  @override
  double? get currentLocationLat;
  @override
  double? get currentLocationLon;
  @override
  String? get jobTitle;
  @override
  String? get education;
  @override
  List<String>? get interests;
  @override
  String? get profileStatus;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
