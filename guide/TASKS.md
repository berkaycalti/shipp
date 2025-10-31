# 📋 İş Listesi - Shipp Dating App

> **Son Güncelleme:** Başlangıç  
> **Branch:** `second-screens`  
> **Durum:** Figma kodları entegre ediliyor

---

## 🎯 Genel İlerleme

- **Altyapı:** ✅ %100 Tamamlandı
- **Ekranlar (UI):** ⏳ %93 Tamamlandı (28/30 ekran) - **ÖNCEKİ ÖNCELİK: Tüm ekranlar UI olarak tamamlanacak**
- **API Entegrasyonu:** ❌ %0 Başlanmadı - **Ekranlar tamamlandıktan sonra yapılacak**
- **Testler:** ❌ %0 Başlanmadı - **Ekranlar tamamlandıktan sonra yapılacak**

> ⚠️ **Önemli:** Önce tüm ekranların UI'ları tamamlanacak, sonra API entegrasyonları ve diğer geliştirmeler yapılacak.

---

## 📱 Ekran Entegrasyonu

### ✅ Tamamlanan Ekranlar

#### Authentication & Onboarding
- [x] **Splash Screen** - Figma tasarımı entegre edildi
- [x] **Onboarding Screen** - 3 adımlı onboarding flow
- [x] **Login Screen** - Telefon numarası ve social login
- [x] **OTP Verification Screen** - 4 haneli kod doğrulama

#### Account Creation Flow (10 Adım - TAMAMLANDI ✅)
- [x] **Name Input Screen** - Hesap oluşturma 1. adım
- [x] **Gender Selection Screen** - Cinsiyeti seç (Step 2)
- [x] **Match Preference Screen** - Kimlerle eşleşmek istiyorsun? (Step 3)
- [x] **Birth Date Screen** - Doğum tarihini gir (Step 4)
- [x] **Birth Time Screen** - Doğum saatini gir (Step 5)
- [x] **Birth Location Screen** - Konumunu belirt (Step 6)
- [x] **Physical Attributes Screen** - Nasıl gözüküyorsun? Boy/Kilo (Step 7)
- [x] **Looking For Screen** - Ne arıyorsun? İlişki tipi (Step 8)
- [x] **Profile Photos Screen** - Profil fotoğrafı ekle (Step 9)
- [x] **Welcome Screen** - Hoş geldin ekranı + kurallar (Step 10)

#### Main Features
- [x] **Discover Screen** - Grid layout ile keşif ekranı
- [x] **Filter Screen** - Kullanıcı tercih filtreleri
- [x] **Map/Explore Screen** - Harita görünümü (UI tamamlandı, Google Maps entegrasyonu sonra)
- [x] **Showcase Screen** - Premium showcase (UI tamamlandı, API entegrasyonu sonra)
- [x] **Profile Screen** - Kullanıcı kendi profili (tabs: Hakkımda, Fotoğraflar, Astroloji)
- [x] **Profile Detail Screen** - Başka kullanıcı profil detay sayfası
- [x] **Matches Screen** - Eşleşmeler listesi (Shipped, Liked, Messages tabs) ✅
- [x] **Chat Screen** - Mesajlaşma ekranı (yenilenmiş tasarım) ✅
- [x] **Notifications Screen** - Bildirimler listesi ✅

#### Settings & Premium
- [x] **Settings Screen** - Ana ayarlar menüsü
- [x] **Profile Settings Screen** - Profil düzenleme ekranı
- [x] **Notification Settings Screen** - Bildirim ayarları
- [x] **Membership Screen** - Premium üyelik yönetimi
- [x] **Terms & Privacy Screen** - Şartlar ve gizlilik politikası

### ❌ Henüz Oluşturulmayan Ekranlar

#### Authentication Flow
- [ ] **Forgot Password Screen** - Şifre sıfırlama (Placeholder mevcut)

#### Main Features
- [ ] **Payment Steps Screen** - Ödeme adımları (TODO)

#### Astrology Features
- [ ] **Birth Chart Display Screen** - Doğum haritası görüntüleme
- [ ] **Daily Horoscope Screen** - Günlük burç yorumu
- [ ] **Compatibility Analysis Screen** - Uyumluluk analizi
- [ ] **Aura Points Screen** - Aura puanları

---

## 🔧 Altyapı & Core Features

> ⚠️ **Not:** Aşağıdaki geliştirmeler ekranlar tamamlandıktan sonra yapılacak. Şu an sadece ekran UI'larına odaklanıyoruz.

### ✅ Tamamlananlar

- [x] **Design System** - Colors, Typography, Spacing, Grid
- [x] **Theme Configuration** - Light/Dark mode
- [x] **Navigation** - GoRouter setup, route tanımları
- [x] **State Management** - Riverpod providers
- [x] **API Service Layer** - Dio, interceptors, error handling
- [x] **Data Models** - Freezed models (User, Match, Message, Astrology)
- [x] **Repositories** - User, Match, Message, Astrology
- [x] **Common Widgets** - Button, TextField, Card, Loading, Error
- [x] **Services** - Storage, Permission, Image, Location, WebSocket
- [x] **Utilities** - Validators, DateFormatter, Logger, ScreenUtils
- [x] **Firebase Integration** - Firebase options, initialization

### ⏳ Ekranlar Tamamlandıktan Sonra Yapılacaklar

> 📌 **Sıra:** Önce tüm ekranlar UI olarak tamamlanacak, sonra aşağıdaki geliştirmeler yapılacak.

#### State Management & Providers
- [ ] **Auth Provider** - Login, OTP, account creation flow
  - [ ] Phone number authentication API
  - [ ] OTP verification API
  - [ ] Token management
  - [ ] Session management
- [ ] **User Provider** - Kullanıcı profil state
  - [ ] Profile fetching
  - [ ] Profile update
  - [ ] Photo upload
- [ ] **Matches Provider** - Discovery ve swipe
  - [ ] Discovery feed API
  - [ ] Like/Super Like/Pass API
  - [ ] Filter preferences kaydetme
- [ ] **Messages Provider** - Chat ve mesajlaşma
  - [ ] Conversations list API
  - [ ] Messages API
  - [ ] WebSocket real-time messaging
  - [ ] Read receipts
  - [ ] Typing indicators
- [ ] **Premium Provider** - Premium üyelik
  - [ ] Subscription status
  - [ ] In-app purchase entegrasyonu
  - [ ] Hype, Aura, Crush purchase

---

## 🌐 API Entegrasyonu

> ⏳ **Durum:** Ekranlar tamamlandıktan sonra başlanacak

### ❌ Başlanmadı (Ekranlar sonrası)

#### Authentication Endpoints
- [ ] `POST /auth/send-sms-otp` - SMS OTP gönderme
- [ ] `POST /auth/verify-phone-otp` - OTP doğrulama
- [ ] `POST /auth/refresh-token` - Token yenileme
- [ ] `POST /auth/logout` - Çıkış

#### User Endpoints
- [ ] `GET /users/me` - Kullanıcı bilgilerini getir
- [ ] `PUT /users/me` - Profil güncelle
- [ ] `POST /users/me/photos` - Fotoğraf yükle
- [ ] `DELETE /users/me/photos/:id` - Fotoğraf sil
- [ ] `PUT /users/me/preferences` - Tercihleri güncelle

#### Match Endpoints
- [ ] `GET /matches/discovery` - Keşif feed'i getir
- [ ] `POST /matches/:id/like` - Beğen
- [ ] `POST /matches/:id/super-like` - Super like
- [ ] `POST /matches/:id/pass` - Geç
- [ ] `GET /matches` - Eşleşmeleri listele
- [ ] `DELETE /matches/:id` - Eşleşmeyi kaldır

#### Message Endpoints
- [ ] `GET /conversations` - Konuşmaları listele
- [ ] `GET /conversations/:id/messages` - Mesajları getir
- [ ] `POST /conversations/:id/messages` - Mesaj gönder
- [ ] `PUT /messages/:id/read` - Mesajı okundu işaretle

#### Premium Endpoints
- [ ] `GET /subscriptions/status` - Üyelik durumu
- [ ] `POST /subscriptions/purchase` - Üyelik satın al
- [ ] `POST /products/:id/purchase` - Ürün satın al (Hype, Aura, Crush)

#### Astrology Endpoints
- [ ] `GET /astrology/birth-chart` - Doğum haritası
- [ ] `GET /astrology/horoscope` - Günlük burç
- [ ] `GET /astrology/compatibility` - Uyumluluk analizi

---

## 🔔 Real-time Features

### ⏳ Geliştirilmeye Devam Edilecekler

- [ ] **WebSocket Service**
  - [ ] Connection management
  - [ ] Reconnection logic
  - [ ] Heartbeat/ping
  - [ ] Message queuing (offline)
- [ ] **Push Notifications**
  - [ ] FCM token kaydetme
  - [ ] Foreground notification handling
  - [ ] Background notification handling
  - [ ] Notification tap handling
  - [ ] Deep linking

---

## 🗺️ Location & Map Features

### ⏳ Geliştirilmeye Devam Edilecekler

- [ ] **Location Permission** - İlk açılışta permission iste
- [ ] **Current Location** - Kullanıcı konumunu al
- [ ] **Map Markers** - Kullanıcıları harita üzerinde göster
- [ ] **Distance Calculation** - Kullanıcılar arası mesafe
- [ ] **Location Update** - Konum değişikliklerini gönder

---

## 🖼️ Image Handling

### ⏳ Geliştirilmeye Devam Edilecekler

- [ ] **Photo Upload** - Profile photo upload API
- [ ] **Image Compression** - Upload öncesi optimize
- [ ] **Cached Images** - Network image caching
- [ ] **Image Gallery** - Profile photo gallery

---

## 💎 Premium Features

### ❌ Başlanmadı

- [ ] **In-App Purchase Setup**
  - [ ] iOS IAP entegrasyonu
  - [ ] Android IAP entegrasyonu
  - [ ] Subscription purchase flow
  - [ ] Consumable products (Hype, Aura, Crush)
- [ ] **Payment Flow** - Ödeme adımları ekranı
- [ ] **Subscription Management** - Cancel, renew, upgrade

---

## 🎯 Discovery & Matching

### ⏳ Geliştirilmeye Devam Edilecekler

- [ ] **Swipeable Card Stack** - Ana discovery feed
  - [ ] Gesture detection (swipe left/right/up)
  - [ ] Animation
  - [ ] Card removal
  - [ ] Load more cards
- [ ] **Match Algorithm** - Backend match scoring entegrasyonu
- [ ] **Filter Persistence** - Filter ayarlarını local'de kaydet
- [ ] **Empty States** - No matches, no results durumları

---

## 💬 Chat & Messaging

### ❌ Başlanmadı

- [ ] **Chat UI** - Message bubble'lar, timestamps
- [ ] **Media Messages** - Photo, video, voice message
- [ ] **Message Status** - Sent, delivered, read indicators
- [ ] **Typing Indicator** - Real-time typing status
- [ ] **Message Search** - Chat içinde arama
- [ ] **Unread Count** - Badge'lerde unread count

---

## 🔮 Astrology Features

### ⏳ Kısmen Tamamlandı (Placeholder ekranlar var)

- [x] **Astrology Journey Screen** - Placeholder
- [x] **Add Profile Screen** - Placeholder
- [x] **Result Screen** - Placeholder
- [ ] **Birth Chart Display** - API entegrasyonu
- [ ] **Compatibility Score** - Match'lerde göster
- [ ] **Daily Horoscope** - Günlük burç yorumu
- [ ] **Zodiac Badge** - Kullanıcı profillerinde

---

## ⚙️ Settings & Preferences

### ❌ Başlanmadı

- [ ] **Notification Settings** - Push notification preferences
- [ ] **Privacy Settings** - Profile visibility, data sharing
- [ ] **Language Selection** - TR/EN dil değiştirme (ileride)
- [ ] **Theme Toggle** - Light/Dark mode toggle (şu an auto)
- [ ] **Account Deletion** - Hesap silme flow'u

---

## 🛠️ Technical Improvements

### ⏳ Geliştirilmeye Devam Edilecekler

- [ ] **Phosphor Icons Fix** - Şu an Material Icons kullanılıyor
- [ ] **Error Handling** - Network errors, API errors
- [ ] **Empty States** - Her ekran için empty state widget'ları
- [ ] **Loading States** - Skeleton loaders
- [ ] **Animations** - Screen transitions, card swipes
- [ ] **Performance** - Image optimization, list optimization
- [ ] **Accessibility** - Screen readers, semantic labels

---

## 🧪 Testing

### ❌ Başlanmadı

- [ ] **Unit Tests** - Utils, validators, formatters
- [ ] **Widget Tests** - Common widgets
- [ ] **Integration Tests** - Critical flows (login, matching, messaging)

---

## 📝 Documentation

### ✅ Tamamlananlar

- [x] **README.md** - Proje genel bakış
- [x] **CONTRIBUTING.md** - Katkıda bulunma rehberi
- [x] **.git-workflow.md** - Git workflow rehberi
- [x] **guide/PROJECT_STRUCTURE.md** - Proje yapısı
- [x] **guide/TASKS.md** - Bu dosya (iş listesi)

### ⏳ Geliştirilmeye Devam Edilecekler

- [ ] **API Documentation** - Endpoint dokümantasyonu
- [ ] **Component Documentation** - Widget kullanım örnekleri
- [ ] **Architecture Documentation** - Mimari açıklamalar

---

## 🎯 Priority Order

### Phase 1: Core Features (Kritik)
1. ✅ Authentication Flow (Ekranlar tamamlandı, API entegrasyonu bekliyor)
2. ⏳ Discovery & Matching (Ekranlar var, swipe stack ve API entegrasyonu gerekli)
3. ❌ Messaging (Chat ekranı ve WebSocket gerekli)

### Phase 2: Secondary Features
4. ⏳ Profile Management (Ekranlar kısmen var)
5. ❌ Premium Features (Ödeme akışı gerekli)
6. ⏳ Astrology Features (Placeholder'lar var, API entegrasyonu gerekli)

### Phase 3: Polish & Optimization
7. ❌ Settings & Preferences
8. ❌ Performance Optimization
9. ❌ Testing

---

**Not:** Bu liste düzenli olarak güncellenecektir. Her tamamlanan görev için checkbox işaretlenecektir.

