// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SupportTicketModel _$SupportTicketModelFromJson(Map<String, dynamic> json) {
  return _SupportTicketModel.fromJson(json);
}

/// @nodoc
mixin _$SupportTicketModel {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get ticketNumber => throw _privateConstructorUsedError;
  TicketPriority get priority => throw _privateConstructorUsedError;
  TicketStatus get status => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get assignedTo => throw _privateConstructorUsedError;
  String? get resolution => throw _privateConstructorUsedError;
  DateTime? get slaDeadline => throw _privateConstructorUsedError;
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  int? get satisfactionRating => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this SupportTicketModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupportTicketModelCopyWith<SupportTicketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportTicketModelCopyWith<$Res> {
  factory $SupportTicketModelCopyWith(
    SupportTicketModel value,
    $Res Function(SupportTicketModel) then,
  ) = _$SupportTicketModelCopyWithImpl<$Res, SupportTicketModel>;
  @useResult
  $Res call({
    String id,
    String userId,
    String ticketNumber,
    TicketPriority priority,
    TicketStatus status,
    String category,
    String subject,
    String description,
    String? assignedTo,
    String? resolution,
    DateTime? slaDeadline,
    DateTime? resolvedAt,
    int? satisfactionRating,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$SupportTicketModelCopyWithImpl<$Res, $Val extends SupportTicketModel>
    implements $SupportTicketModelCopyWith<$Res> {
  _$SupportTicketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? ticketNumber = null,
    Object? priority = null,
    Object? status = null,
    Object? category = null,
    Object? subject = null,
    Object? description = null,
    Object? assignedTo = freezed,
    Object? resolution = freezed,
    Object? slaDeadline = freezed,
    Object? resolvedAt = freezed,
    Object? satisfactionRating = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            ticketNumber:
                null == ticketNumber
                    ? _value.ticketNumber
                    : ticketNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            priority:
                null == priority
                    ? _value.priority
                    : priority // ignore: cast_nullable_to_non_nullable
                        as TicketPriority,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as TicketStatus,
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as String,
            subject:
                null == subject
                    ? _value.subject
                    : subject // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            assignedTo:
                freezed == assignedTo
                    ? _value.assignedTo
                    : assignedTo // ignore: cast_nullable_to_non_nullable
                        as String?,
            resolution:
                freezed == resolution
                    ? _value.resolution
                    : resolution // ignore: cast_nullable_to_non_nullable
                        as String?,
            slaDeadline:
                freezed == slaDeadline
                    ? _value.slaDeadline
                    : slaDeadline // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            resolvedAt:
                freezed == resolvedAt
                    ? _value.resolvedAt
                    : resolvedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            satisfactionRating:
                freezed == satisfactionRating
                    ? _value.satisfactionRating
                    : satisfactionRating // ignore: cast_nullable_to_non_nullable
                        as int?,
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
abstract class _$$SupportTicketModelImplCopyWith<$Res>
    implements $SupportTicketModelCopyWith<$Res> {
  factory _$$SupportTicketModelImplCopyWith(
    _$SupportTicketModelImpl value,
    $Res Function(_$SupportTicketModelImpl) then,
  ) = __$$SupportTicketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String userId,
    String ticketNumber,
    TicketPriority priority,
    TicketStatus status,
    String category,
    String subject,
    String description,
    String? assignedTo,
    String? resolution,
    DateTime? slaDeadline,
    DateTime? resolvedAt,
    int? satisfactionRating,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$SupportTicketModelImplCopyWithImpl<$Res>
    extends _$SupportTicketModelCopyWithImpl<$Res, _$SupportTicketModelImpl>
    implements _$$SupportTicketModelImplCopyWith<$Res> {
  __$$SupportTicketModelImplCopyWithImpl(
    _$SupportTicketModelImpl _value,
    $Res Function(_$SupportTicketModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? ticketNumber = null,
    Object? priority = null,
    Object? status = null,
    Object? category = null,
    Object? subject = null,
    Object? description = null,
    Object? assignedTo = freezed,
    Object? resolution = freezed,
    Object? slaDeadline = freezed,
    Object? resolvedAt = freezed,
    Object? satisfactionRating = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$SupportTicketModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        ticketNumber:
            null == ticketNumber
                ? _value.ticketNumber
                : ticketNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        priority:
            null == priority
                ? _value.priority
                : priority // ignore: cast_nullable_to_non_nullable
                    as TicketPriority,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as TicketStatus,
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as String,
        subject:
            null == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        assignedTo:
            freezed == assignedTo
                ? _value.assignedTo
                : assignedTo // ignore: cast_nullable_to_non_nullable
                    as String?,
        resolution:
            freezed == resolution
                ? _value.resolution
                : resolution // ignore: cast_nullable_to_non_nullable
                    as String?,
        slaDeadline:
            freezed == slaDeadline
                ? _value.slaDeadline
                : slaDeadline // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        resolvedAt:
            freezed == resolvedAt
                ? _value.resolvedAt
                : resolvedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        satisfactionRating:
            freezed == satisfactionRating
                ? _value.satisfactionRating
                : satisfactionRating // ignore: cast_nullable_to_non_nullable
                    as int?,
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
class _$SupportTicketModelImpl implements _SupportTicketModel {
  const _$SupportTicketModelImpl({
    required this.id,
    required this.userId,
    required this.ticketNumber,
    required this.priority,
    required this.status,
    required this.category,
    required this.subject,
    required this.description,
    this.assignedTo,
    this.resolution,
    this.slaDeadline,
    this.resolvedAt,
    this.satisfactionRating,
    this.createdAt,
    this.updatedAt,
  });

  factory _$SupportTicketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupportTicketModelImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String ticketNumber;
  @override
  final TicketPriority priority;
  @override
  final TicketStatus status;
  @override
  final String category;
  @override
  final String subject;
  @override
  final String description;
  @override
  final String? assignedTo;
  @override
  final String? resolution;
  @override
  final DateTime? slaDeadline;
  @override
  final DateTime? resolvedAt;
  @override
  final int? satisfactionRating;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'SupportTicketModel(id: $id, userId: $userId, ticketNumber: $ticketNumber, priority: $priority, status: $status, category: $category, subject: $subject, description: $description, assignedTo: $assignedTo, resolution: $resolution, slaDeadline: $slaDeadline, resolvedAt: $resolvedAt, satisfactionRating: $satisfactionRating, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportTicketModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ticketNumber, ticketNumber) ||
                other.ticketNumber == ticketNumber) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            (identical(other.resolution, resolution) ||
                other.resolution == resolution) &&
            (identical(other.slaDeadline, slaDeadline) ||
                other.slaDeadline == slaDeadline) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.satisfactionRating, satisfactionRating) ||
                other.satisfactionRating == satisfactionRating) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    ticketNumber,
    priority,
    status,
    category,
    subject,
    description,
    assignedTo,
    resolution,
    slaDeadline,
    resolvedAt,
    satisfactionRating,
    createdAt,
    updatedAt,
  );

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportTicketModelImplCopyWith<_$SupportTicketModelImpl> get copyWith =>
      __$$SupportTicketModelImplCopyWithImpl<_$SupportTicketModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SupportTicketModelImplToJson(this);
  }
}

abstract class _SupportTicketModel implements SupportTicketModel {
  const factory _SupportTicketModel({
    required final String id,
    required final String userId,
    required final String ticketNumber,
    required final TicketPriority priority,
    required final TicketStatus status,
    required final String category,
    required final String subject,
    required final String description,
    final String? assignedTo,
    final String? resolution,
    final DateTime? slaDeadline,
    final DateTime? resolvedAt,
    final int? satisfactionRating,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$SupportTicketModelImpl;

  factory _SupportTicketModel.fromJson(Map<String, dynamic> json) =
      _$SupportTicketModelImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get ticketNumber;
  @override
  TicketPriority get priority;
  @override
  TicketStatus get status;
  @override
  String get category;
  @override
  String get subject;
  @override
  String get description;
  @override
  String? get assignedTo;
  @override
  String? get resolution;
  @override
  DateTime? get slaDeadline;
  @override
  DateTime? get resolvedAt;
  @override
  int? get satisfactionRating;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of SupportTicketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupportTicketModelImplCopyWith<_$SupportTicketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
