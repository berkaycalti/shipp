import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../core/utils/logger.dart';
import '../../data/services/api_service.dart';

/// Social Authentication Service
/// Handles Google and Apple Sign In
class SocialAuthService {
  final ApiService _apiService;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: ['email', 'profile'],
  );

  SocialAuthService(this._apiService);

  /// Sign in with Google
  /// Returns user data if successful, null otherwise
  Future<Map<String, dynamic>?> signInWithGoogle() async {
    try {
      // Trigger the Google Sign In flow
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        // User canceled the sign-in
        Logger.info('Google Sign In cancelled by user');
        return null;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Send token to backend for verification
      final response = await _apiService.post(
        '/auth/google',
        data: {
          'idToken': googleAuth.idToken,
          'accessToken': googleAuth.accessToken,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;

        // Save tokens if provided
        if (data['token'] != null) {
          await _apiService.setAuthToken(data['token']);
        }

        Logger.info('Google Sign In successful');
        return data;
      }

      Logger.error('Google Sign In failed', response.statusCode);
      return null;
    } catch (e) {
      Logger.error('Google Sign In error', e);
      rethrow;
    }
  }

  /// Sign in with Apple
  /// Returns user data if successful, null otherwise
  Future<Map<String, dynamic>?> signInWithApple() async {
    try {
      // Request credential
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      // Send identity token to backend for verification
      final response = await _apiService.post(
        '/auth/apple',
        data: {
          'identityToken': credential.identityToken,
          'authorizationCode': credential.authorizationCode,
          'userIdentifier': credential.userIdentifier,
          if (credential.email != null) 'email': credential.email,
          if (credential.givenName != null) 'givenName': credential.givenName,
          if (credential.familyName != null) 'familyName': credential.familyName,
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;

        // Save tokens if provided
        if (data['token'] != null) {
          await _apiService.setAuthToken(data['token']);
        }

        Logger.info('Apple Sign In successful');
        return data;
      }

      Logger.error('Apple Sign In failed', response.statusCode);
      return null;
    } catch (e) {
      Logger.error('Apple Sign In error', e);
      rethrow;
    }
  }

  /// Sign out from Google
  Future<void> signOutGoogle() async {
    try {
      await _googleSignIn.signOut();
      Logger.info('Google Sign Out successful');
    } catch (e) {
      Logger.error('Google Sign Out error', e);
    }
  }

  /// Check if user is signed in with Google
  Future<bool> isSignedInWithGoogle() async {
    return await _googleSignIn.isSignedIn();
  }
}

