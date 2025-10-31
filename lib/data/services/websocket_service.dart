import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
import '../../core/utils/logger.dart';

/// WebSocket Service
/// Handles real-time communication for messaging
class WebSocketService {
  WebSocketChannel? _channel;
  String? _url;
  bool _isConnected = false;
  
  Function(Map<String, dynamic>)? onMessage;
  Function()? onConnected;
  Function()? onDisconnected;
  Function(dynamic)? onError;

  /// Connect to WebSocket server
  Future<void> connect(String url) async {
    if (_isConnected) {
      Logger.warning('WebSocket already connected');
      return;
    }

    try {
      _url = url;
      _channel = WebSocketChannel.connect(Uri.parse(url));
      _isConnected = true;

      // Listen to messages
      _channel!.stream.listen(
        (message) {
          try {
            final data = message as Map<String, dynamic>;
            onMessage?.call(data);
          } catch (e) {
            Logger.error('Error parsing WebSocket message', e);
          }
        },
        onError: (error) {
          Logger.error('WebSocket error', error);
          _isConnected = false;
          onError?.call(error);
        },
        onDone: () {
          Logger.info('WebSocket connection closed');
          _isConnected = false;
          onDisconnected?.call();
        },
      );

      onConnected?.call();
      Logger.info('WebSocket connected to $url');
    } catch (e) {
      Logger.error('WebSocket connection error', e);
      _isConnected = false;
      onError?.call(e);
      rethrow;
    }
  }

  /// Send message through WebSocket
  void send(Map<String, dynamic> message) {
    if (!_isConnected || _channel == null) {
      Logger.error('WebSocket not connected');
      throw Exception('WebSocket not connected');
    }

    try {
      _channel!.sink.add(message);
    } catch (e) {
      Logger.error('Error sending WebSocket message', e);
      rethrow;
    }
  }

  /// Disconnect from WebSocket server
  Future<void> disconnect() async {
    if (_channel != null) {
      await _channel!.sink.close(status.normalClosure);
      _channel = null;
      _isConnected = false;
      Logger.info('WebSocket disconnected');
    }
  }

  /// Reconnect to WebSocket server
  Future<void> reconnect() async {
    if (_url != null) {
      await disconnect();
      await Future.delayed(const Duration(seconds: 1));
      await connect(_url!);
    }
  }

  /// Check if connected
  bool get isConnected => _isConnected;
}

