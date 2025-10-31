// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'support_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SupportTicketModelImpl _$$SupportTicketModelImplFromJson(
  Map<String, dynamic> json,
) => _$SupportTicketModelImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  ticketNumber: json['ticketNumber'] as String,
  priority: $enumDecode(_$TicketPriorityEnumMap, json['priority']),
  status: $enumDecode(_$TicketStatusEnumMap, json['status']),
  category: json['category'] as String,
  subject: json['subject'] as String,
  description: json['description'] as String,
  assignedTo: json['assignedTo'] as String?,
  resolution: json['resolution'] as String?,
  slaDeadline:
      json['slaDeadline'] == null
          ? null
          : DateTime.parse(json['slaDeadline'] as String),
  resolvedAt:
      json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
  satisfactionRating: (json['satisfactionRating'] as num?)?.toInt(),
  createdAt:
      json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$SupportTicketModelImplToJson(
  _$SupportTicketModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'ticketNumber': instance.ticketNumber,
  'priority': _$TicketPriorityEnumMap[instance.priority]!,
  'status': _$TicketStatusEnumMap[instance.status]!,
  'category': instance.category,
  'subject': instance.subject,
  'description': instance.description,
  'assignedTo': instance.assignedTo,
  'resolution': instance.resolution,
  'slaDeadline': instance.slaDeadline?.toIso8601String(),
  'resolvedAt': instance.resolvedAt?.toIso8601String(),
  'satisfactionRating': instance.satisfactionRating,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

const _$TicketPriorityEnumMap = {
  TicketPriority.low: 'low',
  TicketPriority.medium: 'medium',
  TicketPriority.high: 'high',
  TicketPriority.urgent: 'urgent',
};

const _$TicketStatusEnumMap = {
  TicketStatus.open: 'open',
  TicketStatus.inProgress: 'inProgress',
  TicketStatus.waitingForUser: 'waitingForUser',
  TicketStatus.resolved: 'resolved',
  TicketStatus.closed: 'closed',
};
