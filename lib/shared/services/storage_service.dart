import 'package:shared_preferences/shared_preferences.dart';

/// Storage Service
/// Handles local storage operations using SharedPreferences
class StorageService {
  static SharedPreferences? _prefs;

  /// Initialize storage service
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  /// Get string value
  static String? getString(String key) {
    return _prefs?.getString(key);
  }

  /// Set string value
  static Future<bool> setString(String key, String value) async {
    return await _prefs?.setString(key, value) ?? false;
  }

  /// Get int value
  static int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  /// Set int value
  static Future<bool> setInt(String key, int value) async {
    return await _prefs?.setInt(key, value) ?? false;
  }

  /// Get bool value
  static bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  /// Set bool value
  static Future<bool> setBool(String key, bool value) async {
    return await _prefs?.setBool(key, value) ?? false;
  }

  /// Get double value
  static double? getDouble(String key) {
    return _prefs?.getDouble(key);
  }

  /// Set double value
  static Future<bool> setDouble(String key, double value) async {
    return await _prefs?.setDouble(key, value) ?? false;
  }

  /// Get string list
  static List<String>? getStringList(String key) {
    return _prefs?.getStringList(key);
  }

  /// Set string list
  static Future<bool> setStringList(String key, List<String> value) async {
    return await _prefs?.setStringList(key, value) ?? false;
  }

  /// Remove value
  static Future<bool> remove(String key) async {
    return await _prefs?.remove(key) ?? false;
  }

  /// Clear all data
  static Future<bool> clear() async {
    return await _prefs?.clear() ?? false;
  }

  /// Check if key exists
  static bool containsKey(String key) {
    return _prefs?.containsKey(key) ?? false;
  }

  /// Get all keys
  static Set<String>? getKeys() {
    return _prefs?.getKeys();
  }
}

/// Storage Keys
class StorageKeys {
  StorageKeys._();

  // Auth
  static const String authToken = 'auth_token';
  static const String refreshToken = 'refresh_token';
  static const String userId = 'user_id';
  static const String isLoggedIn = 'is_logged_in';

  // User Preferences
  static const String onboardingCompleted = 'onboarding_completed';
  static const String themeMode = 'theme_mode';
  static const String language = 'language';

  // App Settings
  static const String lastSyncTime = 'last_sync_time';
  static const String appVersion = 'app_version';
}

