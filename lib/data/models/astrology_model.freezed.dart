// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'astrology_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AstrologyProfileModel _$AstrologyProfileModelFromJson(
  Map<String, dynamic> json,
) {
  return _AstrologyProfileModel.fromJson(json);
}

/// @nodoc
mixin _$AstrologyProfileModel {
  String get userId => throw _privateConstructorUsedError;
  int? get sunSignId => throw _privateConstructorUsedError;
  int? get moonSignId => throw _privateConstructorUsedError;
  int? get risingSignId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get fullChartData => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AstrologyProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AstrologyProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AstrologyProfileModelCopyWith<AstrologyProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AstrologyProfileModelCopyWith<$Res> {
  factory $AstrologyProfileModelCopyWith(
    AstrologyProfileModel value,
    $Res Function(AstrologyProfileModel) then,
  ) = _$AstrologyProfileModelCopyWithImpl<$Res, AstrologyProfileModel>;
  @useResult
  $Res call({
    String userId,
    int? sunSignId,
    int? moonSignId,
    int? risingSignId,
    Map<String, dynamic>? fullChartData,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$AstrologyProfileModelCopyWithImpl<
  $Res,
  $Val extends AstrologyProfileModel
>
    implements $AstrologyProfileModelCopyWith<$Res> {
  _$AstrologyProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AstrologyProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? sunSignId = freezed,
    Object? moonSignId = freezed,
    Object? risingSignId = freezed,
    Object? fullChartData = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            sunSignId:
                freezed == sunSignId
                    ? _value.sunSignId
                    : sunSignId // ignore: cast_nullable_to_non_nullable
                        as int?,
            moonSignId:
                freezed == moonSignId
                    ? _value.moonSignId
                    : moonSignId // ignore: cast_nullable_to_non_nullable
                        as int?,
            risingSignId:
                freezed == risingSignId
                    ? _value.risingSignId
                    : risingSignId // ignore: cast_nullable_to_non_nullable
                        as int?,
            fullChartData:
                freezed == fullChartData
                    ? _value.fullChartData
                    : fullChartData // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AstrologyProfileModelImplCopyWith<$Res>
    implements $AstrologyProfileModelCopyWith<$Res> {
  factory _$$AstrologyProfileModelImplCopyWith(
    _$AstrologyProfileModelImpl value,
    $Res Function(_$AstrologyProfileModelImpl) then,
  ) = __$$AstrologyProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    int? sunSignId,
    int? moonSignId,
    int? risingSignId,
    Map<String, dynamic>? fullChartData,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$AstrologyProfileModelImplCopyWithImpl<$Res>
    extends
        _$AstrologyProfileModelCopyWithImpl<$Res, _$AstrologyProfileModelImpl>
    implements _$$AstrologyProfileModelImplCopyWith<$Res> {
  __$$AstrologyProfileModelImplCopyWithImpl(
    _$AstrologyProfileModelImpl _value,
    $Res Function(_$AstrologyProfileModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AstrologyProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? sunSignId = freezed,
    Object? moonSignId = freezed,
    Object? risingSignId = freezed,
    Object? fullChartData = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$AstrologyProfileModelImpl(
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        sunSignId:
            freezed == sunSignId
                ? _value.sunSignId
                : sunSignId // ignore: cast_nullable_to_non_nullable
                    as int?,
        moonSignId:
            freezed == moonSignId
                ? _value.moonSignId
                : moonSignId // ignore: cast_nullable_to_non_nullable
                    as int?,
        risingSignId:
            freezed == risingSignId
                ? _value.risingSignId
                : risingSignId // ignore: cast_nullable_to_non_nullable
                    as int?,
        fullChartData:
            freezed == fullChartData
                ? _value._fullChartData
                : fullChartData // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AstrologyProfileModelImpl implements _AstrologyProfileModel {
  const _$AstrologyProfileModelImpl({
    required this.userId,
    this.sunSignId,
    this.moonSignId,
    this.risingSignId,
    final Map<String, dynamic>? fullChartData,
    this.createdAt,
    this.updatedAt,
  }) : _fullChartData = fullChartData;

  factory _$AstrologyProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AstrologyProfileModelImplFromJson(json);

  @override
  final String userId;
  @override
  final int? sunSignId;
  @override
  final int? moonSignId;
  @override
  final int? risingSignId;
  final Map<String, dynamic>? _fullChartData;
  @override
  Map<String, dynamic>? get fullChartData {
    final value = _fullChartData;
    if (value == null) return null;
    if (_fullChartData is EqualUnmodifiableMapView) return _fullChartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AstrologyProfileModel(userId: $userId, sunSignId: $sunSignId, moonSignId: $moonSignId, risingSignId: $risingSignId, fullChartData: $fullChartData, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AstrologyProfileModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sunSignId, sunSignId) ||
                other.sunSignId == sunSignId) &&
            (identical(other.moonSignId, moonSignId) ||
                other.moonSignId == moonSignId) &&
            (identical(other.risingSignId, risingSignId) ||
                other.risingSignId == risingSignId) &&
            const DeepCollectionEquality().equals(
              other._fullChartData,
              _fullChartData,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    sunSignId,
    moonSignId,
    risingSignId,
    const DeepCollectionEquality().hash(_fullChartData),
    createdAt,
    updatedAt,
  );

  /// Create a copy of AstrologyProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AstrologyProfileModelImplCopyWith<_$AstrologyProfileModelImpl>
  get copyWith =>
      __$$AstrologyProfileModelImplCopyWithImpl<_$AstrologyProfileModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AstrologyProfileModelImplToJson(this);
  }
}

abstract class _AstrologyProfileModel implements AstrologyProfileModel {
  const factory _AstrologyProfileModel({
    required final String userId,
    final int? sunSignId,
    final int? moonSignId,
    final int? risingSignId,
    final Map<String, dynamic>? fullChartData,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$AstrologyProfileModelImpl;

  factory _AstrologyProfileModel.fromJson(Map<String, dynamic> json) =
      _$AstrologyProfileModelImpl.fromJson;

  @override
  String get userId;
  @override
  int? get sunSignId;
  @override
  int? get moonSignId;
  @override
  int? get risingSignId;
  @override
  Map<String, dynamic>? get fullChartData;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of AstrologyProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AstrologyProfileModelImplCopyWith<_$AstrologyProfileModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ZodiacSignModel _$ZodiacSignModelFromJson(Map<String, dynamic> json) {
  return _ZodiacSignModel.fromJson(json);
}

/// @nodoc
mixin _$ZodiacSignModel {
  int get id => throw _privateConstructorUsedError;
  String get signName => throw _privateConstructorUsedError;
  String get element => throw _privateConstructorUsedError;
  String get modality => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ZodiacSignModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ZodiacSignModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ZodiacSignModelCopyWith<ZodiacSignModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZodiacSignModelCopyWith<$Res> {
  factory $ZodiacSignModelCopyWith(
    ZodiacSignModel value,
    $Res Function(ZodiacSignModel) then,
  ) = _$ZodiacSignModelCopyWithImpl<$Res, ZodiacSignModel>;
  @useResult
  $Res call({
    int id,
    String signName,
    String element,
    String modality,
    String? description,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$ZodiacSignModelCopyWithImpl<$Res, $Val extends ZodiacSignModel>
    implements $ZodiacSignModelCopyWith<$Res> {
  _$ZodiacSignModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ZodiacSignModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? signName = null,
    Object? element = null,
    Object? modality = null,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            signName:
                null == signName
                    ? _value.signName
                    : signName // ignore: cast_nullable_to_non_nullable
                        as String,
            element:
                null == element
                    ? _value.element
                    : element // ignore: cast_nullable_to_non_nullable
                        as String,
            modality:
                null == modality
                    ? _value.modality
                    : modality // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ZodiacSignModelImplCopyWith<$Res>
    implements $ZodiacSignModelCopyWith<$Res> {
  factory _$$ZodiacSignModelImplCopyWith(
    _$ZodiacSignModelImpl value,
    $Res Function(_$ZodiacSignModelImpl) then,
  ) = __$$ZodiacSignModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String signName,
    String element,
    String modality,
    String? description,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$ZodiacSignModelImplCopyWithImpl<$Res>
    extends _$ZodiacSignModelCopyWithImpl<$Res, _$ZodiacSignModelImpl>
    implements _$$ZodiacSignModelImplCopyWith<$Res> {
  __$$ZodiacSignModelImplCopyWithImpl(
    _$ZodiacSignModelImpl _value,
    $Res Function(_$ZodiacSignModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ZodiacSignModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? signName = null,
    Object? element = null,
    Object? modality = null,
    Object? description = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$ZodiacSignModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        signName:
            null == signName
                ? _value.signName
                : signName // ignore: cast_nullable_to_non_nullable
                    as String,
        element:
            null == element
                ? _value.element
                : element // ignore: cast_nullable_to_non_nullable
                    as String,
        modality:
            null == modality
                ? _value.modality
                : modality // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ZodiacSignModelImpl implements _ZodiacSignModel {
  const _$ZodiacSignModelImpl({
    required this.id,
    required this.signName,
    required this.element,
    required this.modality,
    this.description,
    this.createdAt,
  });

  factory _$ZodiacSignModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZodiacSignModelImplFromJson(json);

  @override
  final int id;
  @override
  final String signName;
  @override
  final String element;
  @override
  final String modality;
  @override
  final String? description;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ZodiacSignModel(id: $id, signName: $signName, element: $element, modality: $modality, description: $description, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZodiacSignModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.signName, signName) ||
                other.signName == signName) &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.modality, modality) ||
                other.modality == modality) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    signName,
    element,
    modality,
    description,
    createdAt,
  );

  /// Create a copy of ZodiacSignModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ZodiacSignModelImplCopyWith<_$ZodiacSignModelImpl> get copyWith =>
      __$$ZodiacSignModelImplCopyWithImpl<_$ZodiacSignModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ZodiacSignModelImplToJson(this);
  }
}

abstract class _ZodiacSignModel implements ZodiacSignModel {
  const factory _ZodiacSignModel({
    required final int id,
    required final String signName,
    required final String element,
    required final String modality,
    final String? description,
    final DateTime? createdAt,
  }) = _$ZodiacSignModelImpl;

  factory _ZodiacSignModel.fromJson(Map<String, dynamic> json) =
      _$ZodiacSignModelImpl.fromJson;

  @override
  int get id;
  @override
  String get signName;
  @override
  String get element;
  @override
  String get modality;
  @override
  String? get description;
  @override
  DateTime? get createdAt;

  /// Create a copy of ZodiacSignModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ZodiacSignModelImplCopyWith<_$ZodiacSignModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CompatibilityAnalysisModel _$CompatibilityAnalysisModelFromJson(
  Map<String, dynamic> json,
) {
  return _CompatibilityAnalysisModel.fromJson(json);
}

/// @nodoc
mixin _$CompatibilityAnalysisModel {
  String get id => throw _privateConstructorUsedError;
  String get user1Id => throw _privateConstructorUsedError;
  String get user2Id => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  Map<String, dynamic>? get analysisDetails =>
      throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CompatibilityAnalysisModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CompatibilityAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompatibilityAnalysisModelCopyWith<CompatibilityAnalysisModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompatibilityAnalysisModelCopyWith<$Res> {
  factory $CompatibilityAnalysisModelCopyWith(
    CompatibilityAnalysisModel value,
    $Res Function(CompatibilityAnalysisModel) then,
  ) =
      _$CompatibilityAnalysisModelCopyWithImpl<
        $Res,
        CompatibilityAnalysisModel
      >;
  @useResult
  $Res call({
    String id,
    String user1Id,
    String user2Id,
    double score,
    Map<String, dynamic>? analysisDetails,
    String? version,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$CompatibilityAnalysisModelCopyWithImpl<
  $Res,
  $Val extends CompatibilityAnalysisModel
>
    implements $CompatibilityAnalysisModelCopyWith<$Res> {
  _$CompatibilityAnalysisModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompatibilityAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user1Id = null,
    Object? user2Id = null,
    Object? score = null,
    Object? analysisDetails = freezed,
    Object? version = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            user1Id:
                null == user1Id
                    ? _value.user1Id
                    : user1Id // ignore: cast_nullable_to_non_nullable
                        as String,
            user2Id:
                null == user2Id
                    ? _value.user2Id
                    : user2Id // ignore: cast_nullable_to_non_nullable
                        as String,
            score:
                null == score
                    ? _value.score
                    : score // ignore: cast_nullable_to_non_nullable
                        as double,
            analysisDetails:
                freezed == analysisDetails
                    ? _value.analysisDetails
                    : analysisDetails // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            version:
                freezed == version
                    ? _value.version
                    : version // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CompatibilityAnalysisModelImplCopyWith<$Res>
    implements $CompatibilityAnalysisModelCopyWith<$Res> {
  factory _$$CompatibilityAnalysisModelImplCopyWith(
    _$CompatibilityAnalysisModelImpl value,
    $Res Function(_$CompatibilityAnalysisModelImpl) then,
  ) = __$$CompatibilityAnalysisModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String user1Id,
    String user2Id,
    double score,
    Map<String, dynamic>? analysisDetails,
    String? version,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$CompatibilityAnalysisModelImplCopyWithImpl<$Res>
    extends
        _$CompatibilityAnalysisModelCopyWithImpl<
          $Res,
          _$CompatibilityAnalysisModelImpl
        >
    implements _$$CompatibilityAnalysisModelImplCopyWith<$Res> {
  __$$CompatibilityAnalysisModelImplCopyWithImpl(
    _$CompatibilityAnalysisModelImpl _value,
    $Res Function(_$CompatibilityAnalysisModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompatibilityAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user1Id = null,
    Object? user2Id = null,
    Object? score = null,
    Object? analysisDetails = freezed,
    Object? version = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$CompatibilityAnalysisModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        user1Id:
            null == user1Id
                ? _value.user1Id
                : user1Id // ignore: cast_nullable_to_non_nullable
                    as String,
        user2Id:
            null == user2Id
                ? _value.user2Id
                : user2Id // ignore: cast_nullable_to_non_nullable
                    as String,
        score:
            null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                    as double,
        analysisDetails:
            freezed == analysisDetails
                ? _value._analysisDetails
                : analysisDetails // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        version:
            freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CompatibilityAnalysisModelImpl implements _CompatibilityAnalysisModel {
  const _$CompatibilityAnalysisModelImpl({
    required this.id,
    required this.user1Id,
    required this.user2Id,
    required this.score,
    final Map<String, dynamic>? analysisDetails,
    this.version,
    this.createdAt,
  }) : _analysisDetails = analysisDetails;

  factory _$CompatibilityAnalysisModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$CompatibilityAnalysisModelImplFromJson(json);

  @override
  final String id;
  @override
  final String user1Id;
  @override
  final String user2Id;
  @override
  final double score;
  final Map<String, dynamic>? _analysisDetails;
  @override
  Map<String, dynamic>? get analysisDetails {
    final value = _analysisDetails;
    if (value == null) return null;
    if (_analysisDetails is EqualUnmodifiableMapView) return _analysisDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? version;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'CompatibilityAnalysisModel(id: $id, user1Id: $user1Id, user2Id: $user2Id, score: $score, analysisDetails: $analysisDetails, version: $version, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompatibilityAnalysisModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user1Id, user1Id) || other.user1Id == user1Id) &&
            (identical(other.user2Id, user2Id) || other.user2Id == user2Id) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(
              other._analysisDetails,
              _analysisDetails,
            ) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    user1Id,
    user2Id,
    score,
    const DeepCollectionEquality().hash(_analysisDetails),
    version,
    createdAt,
  );

  /// Create a copy of CompatibilityAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompatibilityAnalysisModelImplCopyWith<_$CompatibilityAnalysisModelImpl>
  get copyWith => __$$CompatibilityAnalysisModelImplCopyWithImpl<
    _$CompatibilityAnalysisModelImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CompatibilityAnalysisModelImplToJson(this);
  }
}

abstract class _CompatibilityAnalysisModel
    implements CompatibilityAnalysisModel {
  const factory _CompatibilityAnalysisModel({
    required final String id,
    required final String user1Id,
    required final String user2Id,
    required final double score,
    final Map<String, dynamic>? analysisDetails,
    final String? version,
    final DateTime? createdAt,
  }) = _$CompatibilityAnalysisModelImpl;

  factory _CompatibilityAnalysisModel.fromJson(Map<String, dynamic> json) =
      _$CompatibilityAnalysisModelImpl.fromJson;

  @override
  String get id;
  @override
  String get user1Id;
  @override
  String get user2Id;
  @override
  double get score;
  @override
  Map<String, dynamic>? get analysisDetails;
  @override
  String? get version;
  @override
  DateTime? get createdAt;

  /// Create a copy of CompatibilityAnalysisModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompatibilityAnalysisModelImplCopyWith<_$CompatibilityAnalysisModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
