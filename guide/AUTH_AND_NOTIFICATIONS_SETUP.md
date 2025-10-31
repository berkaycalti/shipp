# 🔐 Authentication & Notifications Setup Guide

## 📋 Özet

Bu doküman, Shipp uygulamasında kullanılacak authentication ve notification sistemlerinin kurulumunu açıklar.

---

## 🔑 1. Authentication Methods

### 1.1 Email/Password Login
✅ **Durum:** Implement edildi
- `AuthService.login()` - Email ve password ile giriş
- `AuthService.register()` - Yeni kullanıcı kaydı
- Token management (access token + refresh token)

### 1.2 Google Sign In
⏳ **Durum:** Entegrasyon gerekiyor
**Paket:** `google_sign_in: ^6.2.1`

**Kurulum:**
1. Google Cloud Console'da OAuth 2.0 Client ID oluştur
2. Android/iOS platformları için konfigürasyon
3. Backend'de Google token verification

**Kullanım:**
```dart
final GoogleSignIn _googleSignIn = GoogleSignIn();
final GoogleSignInAccount? account = await _googleSignIn.signIn();
final GoogleSignInAuthentication auth = await account!.authentication;
// Backend'e idToken gönder
```

### 1.3 Apple Sign In
⏳ **Durum:** Entegrasyon gerekiyor
**Paket:** `sign_in_with_apple: ^6.1.3`

**Kurulum:**
1. Apple Developer Console'da Service ID oluştur
2. iOS için Info.plist konfigürasyonu
3. Backend'de Apple token verification

**Kullanım:**
```dart
final credential = await SignInWithApple.getAppleIDCredential(
  scopes: [
    AppleIDAuthorizationScopes.email,
    AppleIDAuthorizationScopes.fullName,
  ],
);
// Backend'e identityToken gönder
```

---

## 📱 2. Phone Number & SMS Verification

### 2.1 SMS Verification Flow
⏳ **Durum:** Backend entegrasyonu bekleniyor

**Yaklaşım:**
1. **Backend OTP Service** (Önerilen)
   - Kullanıcı telefon numarası girer
   - Backend SMS gönderir (Twilio, AWS SNS, vb.)
   - OTP kodu backend'e gönderilir
   - Backend doğrular

2. **Firebase Auth Phone** (Alternatif)
   - Firebase Authentication kullanır
   - Firebase otomatik SMS gönderir
   - `firebase_auth` paketi gerekir

**Mevcut Implementation:**
- `AuthService.verifyOTP()` - OTP doğrulama methodu var
- SMS gönderme backend'den yapılacak

**Backend API Endpoints:**
```
POST /auth/send-sms-otp
{
  "phoneNumber": "+905551234567"
}

POST /auth/verify-phone-otp
{
  "phoneNumber": "+905551234567",
  "otp": "123456"
}
```

---

## 💬 3. Messaging System

### 3.1 Mevcut Durum
✅ **WebSocket Service** - Implement edildi
**Paket:** `web_socket_channel: ^2.4.0`

**Dosya:** `lib/data/services/websocket_service.dart`

**Özellikler:**
- WebSocket connection management
- Message sending/receiving
- Reconnection logic
- Error handling

### 3.2 Kullanım
```dart
final wsService = WebSocketService();

// Connect
await wsService.connect('wss://api.shipp.app/ws');

// Listen to messages
wsService.onMessage = (data) {
  // Handle incoming message
};

// Send message
wsService.send({
  'type': 'message',
  'conversationId': '123',
  'text': 'Hello!',
});

// Disconnect
await wsService.disconnect();
```

### 3.3 Backend Integration
- WebSocket server URL: Backend'den alınacak
- Authentication: WebSocket connection'da token gönderilmeli
- Message format: Backend API specification'a göre

---

## 🔔 4. Push Notifications

### 4.1 Mevcut Durum
❌ **Durum:** Henüz implement edilmedi

### 4.2 Firebase Cloud Messaging (FCM)
**Paket:** `firebase_messaging: ^14.7.9`

**Kurulum Adımları:**
1. Firebase Console'da proje oluştur
2. iOS için APNs sertifikası ekle
3. Android için google-services.json ekle
4. `firebase_core` ve `firebase_messaging` paketlerini ekle

**Implementation:**
```dart
// Initialize
await Firebase.initializeApp();

// Request permission
FirebaseMessaging messaging = FirebaseMessaging.instance;
NotificationSettings settings = await messaging.requestPermission();

// Get FCM token
String? token = await messaging.getToken();

// Send token to backend
await apiService.post('/users/fcm-token', data: {'token': token});

// Listen to messages
FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  // Handle foreground message
});

// Handle background messages
FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
```

### 4.3 Notification Types
1. **New Match** - Yeni eşleşme bildirimi
2. **New Message** - Yeni mesaj bildirimi
3. **Super Like** - Super like alındı bildirimi
4. **Daily Horoscope** - Günlük burç bildirimi
5. **Premium Reminder** - Premium hatırlatması

---

## 📦 Gerekli Paketler

### Yeni Eklenmesi Gerekenler:
```yaml
dependencies:
  # Social Auth
  google_sign_in: ^6.2.1
  sign_in_with_apple: ^6.1.3
  
  # Push Notifications
  firebase_core: ^2.24.2
  firebase_messaging: ^14.7.9
  
  # SMS Verification (Opsiyonel - Firebase kullanılırsa)
  # firebase_auth: ^4.15.3
```

---

## 🔧 Implementation Plan

### Phase 1: Social Auth
- [ ] Google Sign In setup (Android + iOS)
- [ ] Apple Sign In setup (iOS)
- [ ] Backend integration
- [ ] UI integration (Login screen)

### Phase 2: SMS Verification
- [ ] Phone number input UI
- [ ] OTP input UI
- [ ] Backend API integration
- [ ] Verification flow

### Phase 3: Push Notifications
- [ ] Firebase setup
- [ ] FCM token management
- [ ] Background message handler
- [ ] Notification UI
- [ ] Deep linking

---

## 📝 Notlar

1. **Backend Koordinasyonu:** Tüm authentication ve notification işlemleri backend ile koordine edilmeli
2. **Platform-Specific:** iOS ve Android için farklı konfigürasyonlar gerekebilir
3. **Privacy:** GDPR/KVKK uyumluluğu için kullanıcı onayı alınmalı
4. **Testing:** Her entegrasyon gerçek cihazlarda test edilmeli

