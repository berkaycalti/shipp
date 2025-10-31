import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

/// Message Model
@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String id,
    required String conversationId,
    required String senderId,
    required MessageType type,
    required Map<String, dynamic> contentPayload,
    @Default(false) bool isRead,
    DateTime? createdAt,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}

/// Message Type
enum MessageType {
  text,
  image,
  video,
  audio,
  location,
  gif,
  sticker,
}

/// Conversation Model
@freezed
class ConversationModel with _$ConversationModel {
  const factory ConversationModel({
    required String id,
    required String matchId,
    String? lastMessage,
    DateTime? lastMessageAt,
    @Default(0) int unreadCount,
    required List<String> participantIds,
    DateTime? createdAt,
  }) = _ConversationModel;

  factory ConversationModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationModelFromJson(json);
}

