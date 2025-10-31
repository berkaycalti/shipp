import '../models/message_model.dart';
import '../services/api_service.dart';
import '../../core/utils/logger.dart';

/// Message Repository
/// Handles all messaging-related API calls
class MessageRepository {
  final ApiService _apiService;

  MessageRepository(this._apiService);

  /// Get all conversations
  Future<List<ConversationModel>> getConversations() async {
    try {
      final response = await _apiService.get('/conversations');
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => ConversationModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting conversations', e);
      rethrow;
    }
  }

  /// Get messages for a conversation
  Future<List<MessageModel>> getMessages(
    String conversationId, {
    int page = 1,
    int limit = 50,
  }) async {
    try {
      final response = await _apiService.get(
        '/conversations/$conversationId/messages',
        queryParameters: {
          'page': page,
          'limit': limit,
        },
      );
      final List<dynamic> data = response.data['data'] ?? response.data;
      return data.map((json) => MessageModel.fromJson(json)).toList();
    } catch (e) {
      Logger.error('Error getting messages', e);
      rethrow;
    }
  }

  /// Send a message
  Future<MessageModel> sendMessage({
    required String conversationId,
    required MessageType type,
    required Map<String, dynamic> content,
  }) async {
    try {
      final response = await _apiService.post(
        '/conversations/$conversationId/messages',
        data: {
          'type': type.name,
          'contentPayload': content,
        },
      );
      return MessageModel.fromJson(response.data);
    } catch (e) {
      Logger.error('Error sending message', e);
      rethrow;
    }
  }

  /// Mark message as read
  Future<void> markAsRead(String messageId) async {
    try {
      await _apiService.put('/messages/$messageId/read');
    } catch (e) {
      Logger.error('Error marking message as read', e);
      rethrow;
    }
  }

  /// Mark all messages in conversation as read
  Future<void> markConversationAsRead(String conversationId) async {
    try {
      await _apiService.put('/conversations/$conversationId/read');
    } catch (e) {
      Logger.error('Error marking conversation as read', e);
      rethrow;
    }
  }

  /// Delete a message
  Future<void> deleteMessage(String messageId) async {
    try {
      await _apiService.delete('/messages/$messageId');
    } catch (e) {
      Logger.error('Error deleting message', e);
      rethrow;
    }
  }

  /// Upload media file for message
  Future<String> uploadMedia(String filePath, MessageType type) async {
    try {
      final response = await _apiService.uploadFile(
        '/messages/media',
        filePath,
        fileKey: type == MessageType.image ? 'image' : 'video',
      );
      return response.data['url'];
    } catch (e) {
      Logger.error('Error uploading media', e);
      rethrow;
    }
  }
}

