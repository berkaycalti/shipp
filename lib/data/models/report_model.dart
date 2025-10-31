import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

/// Report Model
@freezed
class ReportModel with _$ReportModel {
  const factory ReportModel({
    required String id,
    required String reporterUserId,
    required String reportedUserId,
    required ReportReason reason,
    String? description,
    Map<String, dynamic>? evidence,
    ReportStatus? status,
    String? adminNotes,
    DateTime? reviewedAt,
    DateTime? createdAt,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);
}

/// Report Reason
enum ReportReason {
  spam,
  harassment,
  inappropriateContent,
  fakeProfile,
  underage,
  other,
}

/// Report Status
enum ReportStatus {
  pending,
  underReview,
  resolved,
  dismissed,
}

