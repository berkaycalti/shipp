# 📁 Proje Yapısı ve Dosya Açıklamaları

## 📊 Genel Bakış

**Toplam Dosya Sayısı:** ~50+ Dart dosyası

**Durum:** 
- ✅ Altyapı tamamlandı
- ✅ Placeholder ekranlar oluşturuldu (tasarım henüz uygulanmadı)
- ✅ Figma kodları bekleniyor

---

## 🗂️ Klasör Yapısı ve Açıklamalar

### 📱 `lib/main.dart`
**Ne Yapar:**
- Uygulamanın giriş noktası
- Environment variables yükleme (.env)
- Storage service initialization
- Riverpod ProviderScope setup
- Theme configuration (light/dark)
- Router configuration

---

### ⚙️ `lib/config/`
**Konfigürasyon dosyaları**

#### `theme/app_theme.dart`
**Ne Yapar:**
- Light ve Dark theme tanımları
- Material 3 theme configuration
- Color schemes
- Component themes (Button, Input, Card, AppBar, vb.)
- Typography integration

#### `routes/app_router.dart`
**Ne Yapar:**
- GoRouter configuration
- Tüm route tanımları
- Bottom navigation shell
- Route guards yapısı (auth kontrolü için hazır)
- Deep linking desteği

---

### 🎨 `lib/design/`
**Design System**

#### `tokens/`
- **`app_colors.dart`** - Ana renk paleti (light/dark)
- **`app_additional_colors.dart`** - Genişletilmiş renk paleti (80+ renk)
- **`app_typography.dart`** - Tipografi sistemi (Clash Grotesk font)
- **`app_spacing.dart`** - Spacing sistemi + 4-column grid (70px columns, 16px gutters)
- **`app_border_radius.dart`** - Border radius değerleri

#### `components/`
- (Boş - Figma kodları geldiğinde component'ler eklenecek)

---

### 🔧 `lib/core/`
**Core utilities ve helpers**

#### `constants/`
- **`app_routes.dart`** - Tüm route path'leri sabitleri
- **`app_icons.dart`** - Icon constant'ları (Phosphor Icons mapping)

#### `utils/`
- **`logger.dart`** - Logging utility (debug, info, warning, error)
- **`constants.dart`** - App-wide constants (timeouts, limits, formats)
- **`validators.dart`** - Form validation functions (email, phone, password, vb.)
- **`date_formatter.dart`** - Tarih formatlama fonksiyonları
- **`screen_utils.dart`** - Screen hesaplama utilities (column width, responsive, vb.)

#### `extensions/`
- **`string_extensions.dart`** - String helper methods (capitalize, isValidEmail, mask, vb.)
- **`datetime_extensions.dart`** - DateTime helper methods (isToday, timeAgo, vb.)

#### `errors/`
- **`app_exception.dart`** - Custom exception sınıfları (Network, Auth, Validation, Server, vb.)

#### `widgets/`
- (Boş - Ortak widget'lar shared/widgets'da)

---

### 💾 `lib/data/`
**Data layer - API ve veri yönetimi**

#### `models/`
**Freezed models (immutable, JSON serializable)**
- **`user_model.dart`** - Kullanıcı modeli (UserModel, UserProfileModel)
- **`match_model.dart`** - Eşleşme modeli (MatchModel, SwipeActionModel, MatchStatus enum)
- **`message_model.dart`** - Mesaj modeli (MessageModel, ConversationModel, MessageType enum)
- **`astrology_model.dart`** - Astroloji modeli (AstrologyProfileModel, ZodiacSignModel, CompatibilityAnalysisModel)
- **`*.freezed.dart`** - Freezed tarafından generate edilen dosyalar (copyWith, equality, vb.)
- **`*.g.dart`** - JSON serialization kodları

#### `services/`
- **`api_service.dart`** - HTTP client (Dio), request/response interceptors, error handling, file upload
- **`auth_service.dart`** - Authentication işlemleri (login, register, logout, refresh token, OTP)
- **`websocket_service.dart`** - Real-time messaging için WebSocket connection

#### `repositories/`
**Repository pattern - API çağrılarını yönetir**
- **`user_repository.dart`** - User API çağrıları (getCurrentUser, updateProfile, uploadPhoto, vb.)
- **`match_repository.dart`** - Match API çağrıları (getMatches, swipe, getPotentialMatches, compatibility)
- **`message_repository.dart`** - Message API çağrıları (getConversations, sendMessage, markAsRead, vb.)

#### `constants/`
- **`api_endpoints.dart`** - Tüm API endpoint'leri merkezi sabitler

---

### 🎯 `lib/features/`
**Feature-based organization - Her özellik kendi klasöründe**

#### `splash/`
- **`screens/splash_screen.dart`** - ✅ Placeholder - Uygulama açılış ekranı

#### `onboarding/`
- **`screens/onboarding_screen.dart`** - ✅ Placeholder - 3 adımlı onboarding (PageView ile)

#### `auth/`
- **`screens/login_screen.dart`** - ✅ Placeholder - Login ekranı (form validation ile)
- **`screens/create_account_screen.dart`** - ✅ Placeholder - 8 adımlı kayıt ekranı (TODO)
- **`screens/forgot_password_screen.dart`** - ✅ Placeholder - Şifre sıfırlama
- **`providers/auth_provider.dart`** - Riverpod auth state management

#### `home/`
- **`screens/home_screen.dart`** - ✅ Placeholder - Ana keşif ekranı (swipe cards için hazır)

#### `explore/`
- **`screens/map_screen.dart`** - ✅ Placeholder - Harita görünümü (Google Maps entegrasyonu için hazır)

#### `messages/`
- **`screens/matches_screen.dart`** - ✅ Placeholder - Eşleşmeler ve konuşmalar listesi

#### `profile/`
- **`screens/profile_screen.dart`** - ✅ Placeholder - Kullanıcı profili

#### `premium/`
- **`screens/showcase_screen.dart`** - ✅ Placeholder - Premium showcase

#### `astrology/`
- (Boş - Astroloji ekranları eklenecek)

#### `settings/`
- (Boş - Ayarlar ekranları eklenecek)

**Not:** Tüm ekranlar **placeholder** - Figma kodları geldiğinde gerçek tasarımlarla değiştirilecek.

---

### 🔄 `lib/shared/`
**Paylaşılan widget'lar ve servisler**

#### `widgets/`
- **`app_button.dart`** - Custom button widget (primary, secondary, outlined, text variants)
- **`app_text_field.dart`** - Custom text input widget
- **`app_card.dart`** - Card component
- **`loading_widget.dart`** - Loading indicator (full screen ve inline)
- **`error_widget.dart`** - Error display widget (retry button ile)
- **`app_snackbar.dart`** - Custom snackbar (success, error, warning, info)
- **`grid_container.dart`** - 4-column grid system wrapper
- **`safe_area_padding.dart`** - Safe area padding widget (design system spacing ile)

#### `services/`
- **`storage_service.dart`** - Local storage wrapper (SharedPreferences)
- **`permission_service.dart`** - Permission handling (location, camera, photos)
- **`image_service.dart`** - Image picker ve cropper service
- **`location_service.dart`** - Location operations (getCurrentLocation, geocoding, distance calculation)

---

## 📝 Ekranlar Durumu

### ✅ Oluşturuldu (Placeholder)
1. **Splash Screen** - Temel yapı, navigation logic hazır
2. **Onboarding Screen** - 3 adımlı PageView, skip button
3. **Login Screen** - Form validation, social login butonları
4. **Create Account Screen** - Placeholder (8 adım TODO)
5. **Forgot Password Screen** - Placeholder
6. **Home Screen** - Placeholder (swipe cards için hazır)
7. **Map Screen** - Placeholder (Google Maps entegrasyonu için hazır)
8. **Matches Screen** - Placeholder
9. **Profile Screen** - Placeholder
10. **Showcase Screen** - Placeholder

### ❌ Henüz Oluşturulmadı
- Profile Detail Screen
- Chat Screen
- Voice/Video Call Screen
- Settings Screens (Profile, Notifications, Membership, Terms & Privacy)
- Notifications Screen
- Payment Steps Screen
- Astrology Journey Screens
- Preferences Screens (7 steps)

**Not:** Figma kodları geldiğinde tüm ekranlar gerçek tasarımlarla implement edilecek.

---

## 🔑 Önemli Dosyalar ve İşlevleri

### State Management
- **`features/auth/providers/auth_provider.dart`** - Authentication state (isAuthenticated, user, loading, error)

### Routing
- **`config/routes/app_router.dart`** - Tüm navigation logic, route guards

### API Communication
- **`data/services/api_service.dart`** - HTTP client base
- **`data/repositories/*`** - Feature-specific API calls

### Design System
- **`design/tokens/*`** - Tüm design tokens (colors, typography, spacing, grid)
- **`config/theme/app_theme.dart`** - Theme configuration

### Utilities
- **`core/utils/*`** - Helper functions (validators, formatters, logger)
- **`core/extensions/*`** - Dart extensions (String, DateTime)

---

## 📚 Dokümantasyon Dosyaları

Tüm .md dosyaları `guide/` klasöründe:

- **`PROJECT_STRUCTURE.md`** (bu dosya) - Proje yapısı açıklamaları
- **`DATABASE_SCHEMA_ANALYSIS.md`** - Veritabanı şeması analizi
- **`SCREEN_ANALYSIS.md`** - Ekran analizleri ve özellikleri
- **`USERFLOW_ANALYSIS.md`** - Userflow diyagramı ve navigation akışları
- **`IMPLEMENTATION_TASKS.md`** - Detaylı implementasyon task listesi
- **`INFRASTRUCTURE_SUMMARY.md`** - Altyapı özeti
- **`FIGMA_CODES_README.md`** - Figma kodları için rehber
- **`PENDING_INFO.md`** - Beklenen bilgiler

---

## 🎯 Sonraki Adımlar

1. **Figma Kodları Bekleniyor** - Widget implementasyonları için
2. **Ekranlar Güncellenecek** - Placeholder'lar gerçek tasarımlarla değiştirilecek
3. **Eksik Ekranlar Oluşturulacak** - Settings, Astrology, Preferences, vb.
4. **Backend Entegrasyonu** - API endpoints bağlanacak
5. **Testing** - Unit ve widget testleri eklenecek

---

## 💡 Kullanım Örnekleri

### Button Kullanımı
```dart
AppButton(
  label: 'Sign In',
  onPressed: () {},
  type: AppButtonType.primary,
  fullWidth: true,
)
```

### TextField Kullanımı
```dart
AppTextField(
  label: 'Email',
  controller: emailController,
  validator: Validators.email,
)
```

### Loading Gösterme
```dart
LoadingWidget(message: 'Loading...')
```

### Error Gösterme
```dart
ErrorDisplayWidget(
  message: 'Something went wrong',
  onRetry: () {},
)
```

### Repository Kullanımı
```dart
final userRepo = UserRepository(apiService);
final user = await userRepo.getCurrentUser();
```

### Image Picker
```dart
final imageService = ImageService();
final image = await imageService.pickAndCropImage();
```

---

## ✅ Altyapı Hazır!

**Tüm temel yapı tamamlandı:**
- ✅ Design System
- ✅ Navigation
- ✅ State Management
- ✅ API Layer
- ✅ Data Models
- ✅ Common Widgets
- ✅ Services
- ✅ Utilities
- ✅ Placeholder Screens

**Figma kodları geldiğinde hızlıca implementasyona başlayabiliriz!** 🚀

