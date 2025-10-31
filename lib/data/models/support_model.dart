import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_model.freezed.dart';
part 'support_model.g.dart';

/// Support Ticket Model
@freezed
class SupportTicketModel with _$SupportTicketModel {
  const factory SupportTicketModel({
    required String id,
    required String userId,
    required String ticketNumber,
    required TicketPriority priority,
    required TicketStatus status,
    required String category,
    required String subject,
    required String description,
    String? assignedTo,
    String? resolution,
    DateTime? slaDeadline,
    DateTime? resolvedAt,
    int? satisfactionRating,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SupportTicketModel;

  factory SupportTicketModel.fromJson(Map<String, dynamic> json) =>
      _$SupportTicketModelFromJson(json);
}

/// Ticket Priority
enum TicketPriority {
  low,
  medium,
  high,
  urgent,
}

/// Ticket Status
enum TicketStatus {
  open,
  inProgress,
  waitingForUser,
  resolved,
  closed,
}

