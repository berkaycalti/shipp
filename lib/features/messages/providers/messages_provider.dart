import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/message_model.dart';
import '../../../data/repositories/message_repository.dart';
import '../../../data/providers/repository_providers.dart';

/// Conversations State
class ConversationsState {
  final List<ConversationModel> conversations;
  final bool isLoading;
  final String? error;

  ConversationsState({
    this.conversations = const [],
    this.isLoading = false,
    this.error,
  });

  ConversationsState copyWith({
    List<ConversationModel>? conversations,
    bool? isLoading,
    String? error,
  }) {
    return ConversationsState(
      conversations: conversations ?? this.conversations,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

/// Conversations Notifier
class ConversationsNotifier extends StateNotifier<ConversationsState> {
  final MessageRepository _messageRepository;

  ConversationsNotifier(this._messageRepository)
      : super(ConversationsState()) {
    loadConversations();
  }

  Future<void> loadConversations() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final conversations = await _messageRepository.getConversations();
      state = state.copyWith(
        conversations: conversations,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> markAsRead(String conversationId) async {
    try {
      await _messageRepository.markConversationAsRead(conversationId);
      state = state.copyWith(
        conversations: state.conversations.map((conv) {
          if (conv.id == conversationId) {
            return conv.copyWith(unreadCount: 0);
          }
          return conv;
        }).toList(),
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}

/// Conversations State Provider
final conversationsProvider =
    StateNotifierProvider<ConversationsNotifier, ConversationsState>((ref) {
  final messageRepository = ref.watch(messageRepositoryProvider);
  return ConversationsNotifier(messageRepository);
});

/// Messages State (for a specific conversation)
class MessagesState {
  final List<MessageModel> messages;
  final bool isLoading;
  final String? error;
  final bool hasMore;

  MessagesState({
    this.messages = const [],
    this.isLoading = false,
    this.error,
    this.hasMore = true,
  });

  MessagesState copyWith({
    List<MessageModel>? messages,
    bool? isLoading,
    String? error,
    bool? hasMore,
  }) {
    return MessagesState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

/// Messages Notifier
class MessagesNotifier extends StateNotifier<MessagesState> {
  final MessageRepository _messageRepository;
  final String conversationId;
  int _currentPage = 1;

  MessagesNotifier(this._messageRepository, this.conversationId)
      : super(MessagesState()) {
    loadMessages();
  }

  Future<void> loadMessages({bool refresh = false}) async {
    if (refresh) {
      _currentPage = 1;
      state = state.copyWith(messages: []);
    }

    state = state.copyWith(isLoading: true, error: null);

    try {
      final newMessages = await _messageRepository.getMessages(
        conversationId,
        page: _currentPage,
        limit: 50,
      );

      state = state.copyWith(
        messages: refresh
            ? newMessages
            : [...newMessages.reversed, ...state.messages],
        isLoading: false,
        hasMore: newMessages.length >= 50,
      );

      if (newMessages.isNotEmpty) {
        _currentPage++;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> sendMessage({
    required MessageType type,
    required Map<String, dynamic> content,
  }) async {
    try {
      final message = await _messageRepository.sendMessage(
        conversationId: conversationId,
        type: type,
        content: content,
      );
      state = state.copyWith(
        messages: [message, ...state.messages],
      );
    } catch (e) {
      state = state.copyWith(error: e.toString());
      rethrow;
    }
  }

  Future<void> markAsRead(String messageId) async {
    try {
      await _messageRepository.markAsRead(messageId);
      state = state.copyWith(
        messages: state.messages.map((msg) {
          if (msg.id == messageId) {
            return msg.copyWith(isRead: true);
          }
          return msg;
        }).toList(),
      );
    } catch (e) {
      // Silent fail
    }
  }
}

/// Messages State Provider Factory
final messagesProvider =
    StateNotifierProvider.family<MessagesNotifier, MessagesState, String>(
  (ref, conversationId) {
    final messageRepository = ref.watch(messageRepositoryProvider);
    return MessagesNotifier(messageRepository, conversationId);
  },
);

