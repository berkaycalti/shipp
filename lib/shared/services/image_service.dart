import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import '../../core/utils/logger.dart';
import 'permission_service.dart';

/// Image Service
/// Handles image picking, cropping, and manipulation
class ImageService {
  final ImagePicker _picker = ImagePicker();

  /// Pick image from gallery
  Future<File?> pickImageFromGallery() async {
    try {
      final hasPermission = await PermissionService.requestPhotoLibraryPermission();
      if (!hasPermission) {
        throw Exception('Photo library permission denied');
      }

      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxWidth: 1920,
        maxHeight: 1920,
      );

      if (image != null) {
        return File(image.path);
      }
      return null;
    } catch (e) {
      Logger.error('Error picking image from gallery', e);
      rethrow;
    }
  }

  /// Pick image from camera
  Future<File?> pickImageFromCamera() async {
    try {
      final hasPermission = await PermissionService.requestCameraPermission();
      if (!hasPermission) {
        throw Exception('Camera permission denied');
      }

      final XFile? image = await _picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 85,
        maxWidth: 1920,
        maxHeight: 1920,
      );

      if (image != null) {
        return File(image.path);
      }
      return null;
    } catch (e) {
      Logger.error('Error picking image from camera', e);
      rethrow;
    }
  }

  /// Pick multiple images
  Future<List<File>> pickMultipleImages({int maxImages = 6}) async {
    try {
      final hasPermission = await PermissionService.requestPhotoLibraryPermission();
      if (!hasPermission) {
        throw Exception('Photo library permission denied');
      }

      final List<XFile> images = await _picker.pickMultiImage(
        imageQuality: 85,
        maxWidth: 1920,
        maxHeight: 1920,
      );

      if (images.length > maxImages) {
        images.removeRange(maxImages, images.length);
      }

      return images.map((xFile) => File(xFile.path)).toList();
    } catch (e) {
      Logger.error('Error picking multiple images', e);
      rethrow;
    }
  }

  /// Crop image
  Future<File?> cropImage({
    required File imageFile,
    CropAspectRatioPreset? aspectRatioPreset,
    bool circle = false,
  }) async {
    try {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: imageFile.path,
        cropStyle: circle ? CropStyle.circle : CropStyle.rectangle,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Crop Image',
            toolbarColor: const Color(0xFFFF004F),
            toolbarWidgetColor: Colors.white,
            initAspectRatio: aspectRatioPreset ?? CropAspectRatioPreset.original,
            lockAspectRatio: aspectRatioPreset != null,
          ),
          IOSUiSettings(
            title: 'Crop Image',
            aspectRatioLockEnabled: aspectRatioPreset != null,
          ),
        ],
      );

      if (croppedFile != null) {
        return File(croppedFile.path);
      }
      return null;
    } catch (e) {
      Logger.error('Error cropping image', e);
      rethrow;
    }
  }

  /// Pick and crop image (combined flow)
  Future<File?> pickAndCropImage({
    ImageSource source = ImageSource.gallery,
    CropAspectRatioPreset? aspectRatioPreset,
    bool circle = false,
  }) async {
    try {
      File? imageFile;
      
      if (source == ImageSource.gallery) {
        imageFile = await pickImageFromGallery();
      } else {
        imageFile = await pickImageFromCamera();
      }

      if (imageFile == null) return null;

      return await cropImage(
        imageFile: imageFile,
        aspectRatioPreset: aspectRatioPreset,
        circle: circle,
      );
    } catch (e) {
      Logger.error('Error in pick and crop image', e);
      rethrow;
    }
  }
}

