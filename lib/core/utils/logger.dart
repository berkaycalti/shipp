/// Logger Utility
/// Simple logging utility for debug and error messages
class Logger {
  static bool _isDebugMode = true;

  static void setDebugMode(bool enabled) {
    _isDebugMode = enabled;
  }

  static void debug(String message) {
    if (_isDebugMode) {
      print('[DEBUG] $message');
    }
  }

  static void info(String message) {
    if (_isDebugMode) {
      print('[INFO] $message');
    }
  }

  static void warning(String message) {
    if (_isDebugMode) {
      print('[WARNING] $message');
    }
  }

  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    if (_isDebugMode) {
      print('[ERROR] $message');
      if (error != null) {
        print('Error: $error');
      }
      if (stackTrace != null) {
        print('StackTrace: $stackTrace');
      }
    }
  }
}

