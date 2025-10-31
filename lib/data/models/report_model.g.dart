// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) =>
    _$ReportModelImpl(
      id: json['id'] as String,
      reporterUserId: json['reporterUserId'] as String,
      reportedUserId: json['reportedUserId'] as String,
      reason: $enumDecode(_$ReportReasonEnumMap, json['reason']),
      description: json['description'] as String?,
      evidence: json['evidence'] as Map<String, dynamic>?,
      status: $enumDecodeNullable(_$ReportStatusEnumMap, json['status']),
      adminNotes: json['adminNotes'] as String?,
      reviewedAt:
          json['reviewedAt'] == null
              ? null
              : DateTime.parse(json['reviewedAt'] as String),
      createdAt:
          json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$ReportModelImplToJson(_$ReportModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'reporterUserId': instance.reporterUserId,
      'reportedUserId': instance.reportedUserId,
      'reason': _$ReportReasonEnumMap[instance.reason]!,
      'description': instance.description,
      'evidence': instance.evidence,
      'status': _$ReportStatusEnumMap[instance.status],
      'adminNotes': instance.adminNotes,
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$ReportReasonEnumMap = {
  ReportReason.spam: 'spam',
  ReportReason.harassment: 'harassment',
  ReportReason.inappropriateContent: 'inappropriateContent',
  ReportReason.fakeProfile: 'fakeProfile',
  ReportReason.underage: 'underage',
  ReportReason.other: 'other',
};

const _$ReportStatusEnumMap = {
  ReportStatus.pending: 'pending',
  ReportStatus.underReview: 'underReview',
  ReportStatus.resolved: 'resolved',
  ReportStatus.dismissed: 'dismissed',
};
