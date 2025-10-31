import '../services/api_service.dart';
import '../../shared/services/storage_service.dart';
import '../../core/utils/logger.dart';

/// Authentication Service
/// Handles all authentication-related API calls
class AuthService {
  final ApiService _apiService;

  AuthService(this._apiService);

  /// Login with email and password
  Future<Map<String, dynamic>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _apiService.post(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        
        // Save tokens
        if (data['token'] != null) {
          await StorageService.setString(
            StorageKeys.authToken,
            data['token'],
          );
          _apiService.setAuthToken(data['token']);
        }

        if (data['refreshToken'] != null) {
          await StorageService.setString(
            StorageKeys.refreshToken,
            data['refreshToken'],
          );
        }

        if (data['user']?['id'] != null) {
          await StorageService.setString(
            StorageKeys.userId,
            data['user']['id'].toString(),
          );
        }

        await StorageService.setBool(StorageKeys.isLoggedIn, true);

        return data;
      }

      throw Exception('Login failed');
    } catch (e) {
      Logger.error('Login error', e);
      rethrow;
    }
  }

  /// Register new user
  Future<Map<String, dynamic>> register({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final response = await _apiService.post(
        '/auth/register',
        data: {
          'email': email,
          'password': password,
          'name': name,
        },
      );

      if (response.statusCode == 201) {
        return response.data;
      }

      throw Exception('Registration failed');
    } catch (e) {
      Logger.error('Registration error', e);
      rethrow;
    }
  }

  /// Logout
  Future<void> logout() async {
    try {
      await _apiService.post('/auth/logout');
    } catch (e) {
      Logger.error('Logout error', e);
    } finally {
      // Clear local storage
      await StorageService.remove(StorageKeys.authToken);
      await StorageService.remove(StorageKeys.refreshToken);
      await StorageService.remove(StorageKeys.userId);
      await StorageService.setBool(StorageKeys.isLoggedIn, false);
      
      // Remove auth token from API service
      _apiService.removeAuthToken();
    }
  }

  /// Check if user is logged in
  Future<bool> isLoggedIn() async {
    final token = StorageService.getString(StorageKeys.authToken);
    final isLoggedIn = StorageService.getBool(StorageKeys.isLoggedIn) ?? false;
    
    if (token != null && isLoggedIn) {
      _apiService.setAuthToken(token);
      return true;
    }
    
    return false;
  }

  /// Refresh token
  Future<String?> refreshToken() async {
    try {
      final refreshToken = StorageService.getString(StorageKeys.refreshToken);
      if (refreshToken == null) return null;

      final response = await _apiService.post(
        '/auth/refresh',
        data: {'refreshToken': refreshToken},
      );

      if (response.statusCode == 200) {
        final newToken = response.data['token'];
        await StorageService.setString(StorageKeys.authToken, newToken);
        _apiService.setAuthToken(newToken);
        return newToken;
      }

      return null;
    } catch (e) {
      Logger.error('Token refresh error', e);
      return null;
    }
  }

  /// Forgot password
  Future<void> forgotPassword(String email) async {
    try {
      await _apiService.post(
        '/auth/forgot-password',
        data: {'email': email},
      );
    } catch (e) {
      Logger.error('Forgot password error', e);
      rethrow;
    }
  }

  /// Verify OTP (Email)
  Future<bool> verifyEmailOTP({
    required String email,
    required String otp,
  }) async {
    try {
      final response = await _apiService.post(
        '/auth/verify-otp',
        data: {
          'email': email,
          'otp': otp,
        },
      );

      return response.statusCode == 200;
    } catch (e) {
      Logger.error('Email OTP verification error', e);
      return false;
    }
  }

  /// Login with phone number and OTP
  Future<Map<String, dynamic>> loginWithPhone({
    required String phoneNumber,
    required String otp,
  }) async {
    try {
      final response = await _apiService.post(
        '/auth/phone-login',
        data: {
          'phoneNumber': phoneNumber,
          'otp': otp,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;

        // Save tokens
        if (data['token'] != null) {
          await StorageService.setString(
            StorageKeys.authToken,
            data['token'],
          );
          _apiService.setAuthToken(data['token']);
        }

        if (data['refreshToken'] != null) {
          await StorageService.setString(
            StorageKeys.refreshToken,
            data['refreshToken'],
          );
        }

        await StorageService.setBool(StorageKeys.isLoggedIn, true);

        return data;
      }

      throw Exception('Phone login failed');
    } catch (e) {
      Logger.error('Phone login error', e);
      rethrow;
    }
  }
}

