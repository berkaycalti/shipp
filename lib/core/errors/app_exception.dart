/// App Exception
/// Base exception class for app-specific errors
abstract class AppException implements Exception {
  final String message;
  final String? code;

  AppException(this.message, {this.code});

  @override
  String toString() => message;
}

/// Network Exception
class NetworkException extends AppException {
  NetworkException(super.message, {super.code});
}

/// Authentication Exception
class AuthenticationException extends AppException {
  AuthenticationException(super.message, {super.code});
}

/// Validation Exception
class ValidationException extends AppException {
  ValidationException(super.message, {super.code});
}

/// Server Exception
class ServerException extends AppException {
  final int? statusCode;
  
  ServerException(super.message, {super.code, this.statusCode});
}

/// Cache Exception
class CacheException extends AppException {
  CacheException(super.message, {super.code});
}

/// Permission Exception
class PermissionException extends AppException {
  PermissionException(super.message, {super.code});
}

