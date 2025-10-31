import 'package:flutter/material.dart';
import '../../../design/tokens/app_colors.dart';
import '../../../design/tokens/app_typography.dart';

class ChatScreen extends StatefulWidget {
  final String? conversationId;
  final String? userId;
  final String? userName;
  final String? userAvatarUrl;

  const ChatScreen({
    super.key,
    this.conversationId,
    this.userId,
    this.userName,
    this.userAvatarUrl,
  });

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<Map<String, dynamic>> _messages = [];

  @override
  void initState() {
    super.initState();
    // Mock messages for UI - Using Figma design
    _messages.addAll([
      {
        'id': '1',
        'sender': 'Ecem',
        'text': 'Bugün kahve içmeye ne dersin?',
        'timestamp': DateTime.now().subtract(const Duration(hours: 1)),
      },
      {
        'id': '2',
        'sender': 'You',
        'text': 'Olur! seni kaç gibi alayım?',
        'timestamp': DateTime.now().subtract(const Duration(minutes: 55)),
      },
      {
        'id': '3',
        'sender': 'Ecem',
        'text': '16.00?',
        'timestamp': DateTime.now().subtract(const Duration(minutes: 50)),
      },
      {
        'id': '4',
        'sender': 'You',
        'text': 'Anlaştık!',
        'timestamp': DateTime.now().subtract(const Duration(minutes: 45)),
      },
    ]);
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    if (_messageController.text.trim().isEmpty) return;

    setState(() {
      _messages.add({
        'id': DateTime.now().millisecondsSinceEpoch.toString(),
        'sender': 'You',
        'text': _messageController.text.trim(),
        'timestamp': DateTime.now(),
      });
    });

    _messageController.clear();
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? AppDarkColors.background : AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isDark ? AppDarkColors.textPrimary : AppColors.textPrimary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                widget.userAvatarUrl ?? 'https://placehold.co/39x55',
                width: 30,
                height: 30,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  width: 30,
                  height: 30,
                  color: AppColors.border,
                  child: Icon(Icons.person, color: AppColors.textSecondary, size: 16),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              widget.userName ?? 'Ecem',
              style: AppTypography.bodyMedium.copyWith(
                fontWeight: AppTypography.regular,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: const Color(0x198390A1),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Messages List
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[index];
                final isSent = message['sender'] == 'You';
                return _buildMessageBubble(message, isSent);
              },
            ),
          ),
          // Input Area
          _buildInputArea(context, isDark),
        ],
      ),
    );
  }

  Widget _buildMessageBubble(Map<String, dynamic> message, bool isSent) {
    final sender = message['sender'] as String;
    final text = message['text'] as String;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Align(
        alignment: isSent ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 240),
          padding: const EdgeInsets.only(top: 8, left: 12, right: 12, bottom: 12),
          decoration: BoxDecoration(
            color: isSent
                ? const Color(0x0CFF437D)
                : const Color(0x198390A1),
            borderRadius: isSent
                ? const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  )
                : const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sender == 'You' ? 'Sen' : sender,
                style: AppTypography.caption.copyWith(
                  color: isSent
                      ? const Color(0xFF1C1C1E).withValues(alpha: 0.5)
                      : const Color(0xFFFF004F),
                  fontWeight: AppTypography.medium,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                text,
                style: AppTypography.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputArea(BuildContext context, bool isDark) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: isDark ? 0.03 : 1),
      ),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.add_circle_outline,
              color: const Color(0x198390A1),
            ),
            onPressed: () {},
          ),
          const SizedBox(width: 4),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: const Color(0x198390A1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      style: AppTypography.bodyMedium.copyWith(
                        fontSize: 12,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Bir şeyler yaz',
                        hintStyle: AppTypography.bodyMedium.copyWith(
                          color: const Color(0xFF8390A1).withValues(alpha: 0.5),
                          fontSize: 12,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(100),
            ),
            child: GestureDetector(
              onTap: _sendMessage,
              child: Text(
                'Gönder',
                style: AppTypography.caption.copyWith(
                  color: Colors.white,
                  fontWeight: AppTypography.medium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}