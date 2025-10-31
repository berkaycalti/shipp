// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) {
  return _ReportModel.fromJson(json);
}

/// @nodoc
mixin _$ReportModel {
  String get id => throw _privateConstructorUsedError;
  String get reporterUserId => throw _privateConstructorUsedError;
  String get reportedUserId => throw _privateConstructorUsedError;
  ReportReason get reason => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Map<String, dynamic>? get evidence => throw _privateConstructorUsedError;
  ReportStatus? get status => throw _privateConstructorUsedError;
  String? get adminNotes => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ReportModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportModelCopyWith<ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportModelCopyWith<$Res> {
  factory $ReportModelCopyWith(
    ReportModel value,
    $Res Function(ReportModel) then,
  ) = _$ReportModelCopyWithImpl<$Res, ReportModel>;
  @useResult
  $Res call({
    String id,
    String reporterUserId,
    String reportedUserId,
    ReportReason reason,
    String? description,
    Map<String, dynamic>? evidence,
    ReportStatus? status,
    String? adminNotes,
    DateTime? reviewedAt,
    DateTime? createdAt,
  });
}

/// @nodoc
class _$ReportModelCopyWithImpl<$Res, $Val extends ReportModel>
    implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reporterUserId = null,
    Object? reportedUserId = null,
    Object? reason = null,
    Object? description = freezed,
    Object? evidence = freezed,
    Object? status = freezed,
    Object? adminNotes = freezed,
    Object? reviewedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            reporterUserId:
                null == reporterUserId
                    ? _value.reporterUserId
                    : reporterUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            reportedUserId:
                null == reportedUserId
                    ? _value.reportedUserId
                    : reportedUserId // ignore: cast_nullable_to_non_nullable
                        as String,
            reason:
                null == reason
                    ? _value.reason
                    : reason // ignore: cast_nullable_to_non_nullable
                        as ReportReason,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            evidence:
                freezed == evidence
                    ? _value.evidence
                    : evidence // ignore: cast_nullable_to_non_nullable
                        as Map<String, dynamic>?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as ReportStatus?,
            adminNotes:
                freezed == adminNotes
                    ? _value.adminNotes
                    : adminNotes // ignore: cast_nullable_to_non_nullable
                        as String?,
            reviewedAt:
                freezed == reviewedAt
                    ? _value.reviewedAt
                    : reviewedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
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
abstract class _$$ReportModelImplCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$$ReportModelImplCopyWith(
    _$ReportModelImpl value,
    $Res Function(_$ReportModelImpl) then,
  ) = __$$ReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String reporterUserId,
    String reportedUserId,
    ReportReason reason,
    String? description,
    Map<String, dynamic>? evidence,
    ReportStatus? status,
    String? adminNotes,
    DateTime? reviewedAt,
    DateTime? createdAt,
  });
}

/// @nodoc
class __$$ReportModelImplCopyWithImpl<$Res>
    extends _$ReportModelCopyWithImpl<$Res, _$ReportModelImpl>
    implements _$$ReportModelImplCopyWith<$Res> {
  __$$ReportModelImplCopyWithImpl(
    _$ReportModelImpl _value,
    $Res Function(_$ReportModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reporterUserId = null,
    Object? reportedUserId = null,
    Object? reason = null,
    Object? description = freezed,
    Object? evidence = freezed,
    Object? status = freezed,
    Object? adminNotes = freezed,
    Object? reviewedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$ReportModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        reporterUserId:
            null == reporterUserId
                ? _value.reporterUserId
                : reporterUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        reportedUserId:
            null == reportedUserId
                ? _value.reportedUserId
                : reportedUserId // ignore: cast_nullable_to_non_nullable
                    as String,
        reason:
            null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                    as ReportReason,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        evidence:
            freezed == evidence
                ? _value._evidence
                : evidence // ignore: cast_nullable_to_non_nullable
                    as Map<String, dynamic>?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as ReportStatus?,
        adminNotes:
            freezed == adminNotes
                ? _value.adminNotes
                : adminNotes // ignore: cast_nullable_to_non_nullable
                    as String?,
        reviewedAt:
            freezed == reviewedAt
                ? _value.reviewedAt
                : reviewedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
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
class _$ReportModelImpl implements _ReportModel {
  const _$ReportModelImpl({
    required this.id,
    required this.reporterUserId,
    required this.reportedUserId,
    required this.reason,
    this.description,
    final Map<String, dynamic>? evidence,
    this.status,
    this.adminNotes,
    this.reviewedAt,
    this.createdAt,
  }) : _evidence = evidence;

  factory _$ReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportModelImplFromJson(json);

  @override
  final String id;
  @override
  final String reporterUserId;
  @override
  final String reportedUserId;
  @override
  final ReportReason reason;
  @override
  final String? description;
  final Map<String, dynamic>? _evidence;
  @override
  Map<String, dynamic>? get evidence {
    final value = _evidence;
    if (value == null) return null;
    if (_evidence is EqualUnmodifiableMapView) return _evidence;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final ReportStatus? status;
  @override
  final String? adminNotes;
  @override
  final DateTime? reviewedAt;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'ReportModel(id: $id, reporterUserId: $reporterUserId, reportedUserId: $reportedUserId, reason: $reason, description: $description, evidence: $evidence, status: $status, adminNotes: $adminNotes, reviewedAt: $reviewedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reporterUserId, reporterUserId) ||
                other.reporterUserId == reporterUserId) &&
            (identical(other.reportedUserId, reportedUserId) ||
                other.reportedUserId == reportedUserId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._evidence, _evidence) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.adminNotes, adminNotes) ||
                other.adminNotes == adminNotes) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    reporterUserId,
    reportedUserId,
    reason,
    description,
    const DeepCollectionEquality().hash(_evidence),
    status,
    adminNotes,
    reviewedAt,
    createdAt,
  );

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      __$$ReportModelImplCopyWithImpl<_$ReportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportModelImplToJson(this);
  }
}

abstract class _ReportModel implements ReportModel {
  const factory _ReportModel({
    required final String id,
    required final String reporterUserId,
    required final String reportedUserId,
    required final ReportReason reason,
    final String? description,
    final Map<String, dynamic>? evidence,
    final ReportStatus? status,
    final String? adminNotes,
    final DateTime? reviewedAt,
    final DateTime? createdAt,
  }) = _$ReportModelImpl;

  factory _ReportModel.fromJson(Map<String, dynamic> json) =
      _$ReportModelImpl.fromJson;

  @override
  String get id;
  @override
  String get reporterUserId;
  @override
  String get reportedUserId;
  @override
  ReportReason get reason;
  @override
  String? get description;
  @override
  Map<String, dynamic>? get evidence;
  @override
  ReportStatus? get status;
  @override
  String? get adminNotes;
  @override
  DateTime? get reviewedAt;
  @override
  DateTime? get createdAt;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
