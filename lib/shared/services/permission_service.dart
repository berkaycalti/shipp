import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../core/utils/logger.dart';

/// Permission Service
/// Handles app permissions (location, camera, etc.)
class PermissionService {
  PermissionService._();

  /// Request location permission
  static Future<bool> requestLocationPermission() async {
    try {
      // Check if location services are enabled
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        Logger.warning('Location services are disabled');
        return false;
      }

      // Check location permission status
      LocationPermission permission = await Geolocator.checkPermission();
      
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          Logger.warning('Location permissions are denied');
          return false;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        Logger.warning('Location permissions are permanently denied');
        return false;
      }

      return true;
    } catch (e) {
      Logger.error('Error requesting location permission', e);
      return false;
    }
  }

  /// Request camera permission
  static Future<bool> requestCameraPermission() async {
    try {
      final status = await Permission.camera.request();
      return status.isGranted;
    } catch (e) {
      Logger.error('Error requesting camera permission', e);
      return false;
    }
  }

  /// Request photo library permission
  static Future<bool> requestPhotoLibraryPermission() async {
    try {
      final status = await Permission.photos.request();
      return status.isGranted;
    } catch (e) {
      Logger.error('Error requesting photo library permission', e);
      return false;
    }
  }

  /// Check if location permission is granted
  static Future<bool> isLocationPermissionGranted() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      return permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always;
    } catch (e) {
      Logger.error('Error checking location permission', e);
      return false;
    }
  }

  /// Check if camera permission is granted
  static Future<bool> isCameraPermissionGranted() async {
    try {
      final status = await Permission.camera.status;
      return status.isGranted;
    } catch (e) {
      Logger.error('Error checking camera permission', e);
      return false;
    }
  }

  /// Check if photo library permission is granted
  static Future<bool> isPhotoLibraryPermissionGranted() async {
    try {
      final status = await Permission.photos.status;
      return status.isGranted;
    } catch (e) {
      Logger.error('Error checking photo library permission', e);
      return false;
    }
  }

  /// Open app settings
  static Future<void> openAppSettings() async {
    await openAppSettings();
  }
}

