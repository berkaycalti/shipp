import '../../core/utils/logger.dart';
import '../../data/services/api_service.dart';
import '../../data/constants/api_endpoints.dart';

/// SMS Service
/// Handles SMS OTP sending and verification
/// Note: SMS is sent by backend, this service only handles API calls
class SMSService {
  final ApiService _apiService;

  SMSService(this._apiService);

  /// Send OTP to phone number
  /// Backend will send SMS with OTP code
  Future<bool> sendOTP({
    required String phoneNumber,
    String? countryCode,
  }) async {
    try {
      final response = await _apiService.post(
        '/auth/send-sms-otp',
        data: {
          'phoneNumber': phoneNumber,
          if (countryCode != null) 'countryCode': countryCode,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        Logger.info('SMS OTP sent successfully to $phoneNumber');
        return true;
      }

      Logger.error('Failed to send SMS OTP', response.statusCode);
      return false;
    } catch (e) {
      Logger.error('Error sending SMS OTP', e);
      rethrow;
    }
  }

  /// Verify OTP code
  /// Returns true if OTP is valid
  Future<Map<String, dynamic>?> verifyOTP({
    required String phoneNumber,
    required String otp,
  }) async {
    try {
      final response = await _apiService.post(
        '/auth/verify-phone-otp',
        data: {
          'phoneNumber': phoneNumber,
          'otp': otp,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;

        // Save tokens if provided
        if (data['token'] != null) {
          await _apiService.setAuthToken(data['token']);
        }

        Logger.info('SMS OTP verified successfully');
        return data;
      }

      Logger.error('SMS OTP verification failed', response.statusCode);
      return null;
    } catch (e) {
      Logger.error('Error verifying SMS OTP', e);
      rethrow;
    }
  }

  /// Resend OTP
  /// Same as sendOTP but indicates it's a resend
  Future<bool> resendOTP({
    required String phoneNumber,
  }) async {
    return await sendOTP(phoneNumber: phoneNumber);
  }

  /// Format phone number (add country code if missing)
  static String formatPhoneNumber(String phoneNumber, String countryCode) {
    // Remove any existing country code
    String cleaned = phoneNumber.replaceAll(RegExp(r'[^\d+]'), '');
    
    // Add country code if not present
    if (!cleaned.startsWith('+')) {
      cleaned = '+$countryCode$cleaned';
    }
    
    return cleaned;
  }

  /// Validate phone number format
  static bool isValidPhoneNumber(String phoneNumber) {
    // Basic validation: should start with + and have 10-15 digits
    final regex = RegExp(r'^\+\d{10,15}$');
    return regex.hasMatch(phoneNumber);
  }
}

