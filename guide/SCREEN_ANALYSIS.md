# Ekran Analizi ve İş Listesi - Shipp Dating App

## 📱 Ekran Kategorileri

### 1. 🚀 Splash & Onboarding (4 ekran)

#### Splash Screens:
- **Splash 1** (Light & Dark mode)
- **Splash 2** (Light & Dark mode)

**Özellikler:**
- Uygulama başlatma ekranları
- Logo gösterimi
- Loading animasyonu gerekli

#### Onboarding:
- **Onboarding 1, 2, 3** (Light & Dark mode)
- Kullanıcıyı uygulamaya tanıtma
- Swipe ile geçiş
- Skip butonu

---

### 2. 🔐 Authentication Flow (10+ ekran)

#### Welcome Screen:
- **Welcome** (Light & Dark mode)
- Giriş seçenekleri
- Google/Apple/Phone login

#### Sign In:
- **Sign In** (Default state)
- **Sign In (Error)** - Hata durumu
- E-posta/şifre girişi
- "Şifremi unuttum" linki
- Sosyal medya girişleri

#### Create Account:
- **Create Account** (8 adım - Create Account _ White-1.png to _ White-8.png)
- **Adım 1-8**: Onboarding formu
- Telefon/Email doğrulama
- Profil bilgileri
- Doğum tarihi/saati/yeri (astroloji için)
- Fotoğraf yükleme

#### Verification:
- **Verification** (Default)
- **Verification (Keyboard)** - Klavye açık durumu
- SMS/Email doğrulama kodu
- OTP input alanı

---

### 3. 🏠 Home/Discovery Screen (15+ ekran)

#### Ana Home Ekranı:
- **Home** (Light & Dark mode)
- **Home (Another Person)** - Başka kullanıcı profili görünümü
- Kart tabanlı swipe arayüzü
- Profil fotoğrafları
- Burç bilgisi gösterimi
- Uyumluluk yüzdesi

#### Swipe Actions:
- **Home (Liked)** - Beğenildi durumu
- **Home (Unliked)** - Beğenilmedi durumu
- **Home (Super Like)** - Süper beğeni
- **Home (Boost)** - Boost aktif
- **Home (Boost Successful)** - Boost başarılı
- **Home (You Have No Boost Left!)** - Boost bitti uyarısı
- **Home (Popup)** - Genel popup

**Özellikler:**
- Swipe gestures (left/right/up)
- Like/Dislike/SuperLike/Boost butonları
- Profil kartları
- Astroloji uyumluluk skoru
- Konum mesafesi

---

### 4. 🗺️ Explore Screen (10+ ekran)

#### Görünüm Modları:
- **Explore (Map View)** - Harita görünümü
- **Explore (List View)** - Liste görünümü
- **Explore (Click Map)** - Haritada tıklama
- **Explore (Click Profile)** - Profilde tıklama
- **Explore (View All)** - Tümünü gör

#### Filtreleme:
- **Filters** (Light & Dark mode)
- Yaş aralığı
- Mesafe
- Burç filtreleri
- İlgi alanları

**Özellikler:**
- Harita entegrasyonu (Google Maps/Mapbox)
- Kullanıcı pin'leri
- Liste/grid görünüm değiştirme
- Gelişmiş filtreleme seçenekleri

---

### 5. 💬 Messages Screen (15+ ekran)

#### Ana Mesajlaşma:
- **Messages** (Light & Dark mode)
- Konuşma listesi
- Son mesaj önizlemesi
- Okunmamış mesaj sayısı
- Online durumu

#### Mesaj Detay:
- **Messages (Keyboard)** - Klavye açık
- **Messages (Photo)** - Fotoğraf gönderme
- **Messages (Photo Dropdown)** - Fotoğraf seçenekleri
- **Messages (Single-Show Photo)** - Fotoğraf görüntüleme
- **Messages (Voice Record)** - Ses kaydı
- **Messages (Delete)** - Mesaj silme
- **Messages (Delete Dropdown)** - Silme seçenekleri

**Özellikler:**
- Text mesajları
- Fotoğraf/video gönderme
- Ses kaydı
- Emoji reactions
- Mesaj durumları (gönderildi/teslim edildi/okundu)
- Konuşma özellikleri (video call butonu)

---

### 6. 👤 Profile Screens (12+ ekran)

#### Profil Ana Ekranı:
- **Profile** (Light & Dark mode)
- **Profile (Premium)** - Premium kullanıcı badge
- Profil fotoğrafları (swipe)
- Bio
- Burç bilgileri
- İlgi alanları
- Düzenle butonu

#### Profil Detayı:
- **Profile Detail (Full View)** - Tam görünüm
- **Profile Detail (Phone Size)** - Telefon boyutu
- **Click Profile** - Profil tıklama
- **Click Profile (Dropdown)** - Dropdown menü
- Tüm fotoğraflar
- Detaylı astroloji bilgileri
- Uyumluluk skoru

#### Profil Ayarları:
- **Profile Settings** (Light & Dark mode)
- Profil düzenleme
- Fotoğraf ekleme/çıkarma
- Bio düzenleme
- İlgi alanları düzenleme

---

### 7. 🔮 Personal Astrology Journey (10+ ekran)

#### Ana Astroloji Ekranı:
- **Personal Astrology Journey** (Light & Dark mode)
- **Personal Astrology Journey (Add Profile)** - Profil ekleme durumu

#### Astroloji Özellikleri:
- **Personal Astrology Journey (Birth Chart)** - Doğum haritası
  - Gezegen pozisyonları
  - Evler
  - Açılar görselleştirme

- **Personal Astrology Journey (Daily Horoscope)** - Günlük burç
  - Güneş burcu için günlük öneriler

- **Personal Astrology Journey (Daily Advice)** - Günlük tavsiyeler
  - Kişiselleştirilmiş astroloji önerileri

- **Personal Astrology Journey (Astrological Compatibility)** - Uyumluluk
  - Karşılıklı uyumluluk analizi
  - Detaylı uyumluluk skoru

- **Personal Astrology Journey (Astrological Compatibility Default)** - Varsayılan

- **Personal Astrology Journey (Result)** - Sonuç ekranı

**Özellikler:**
- Doğum haritası görselleştirme
- Gezegen pozisyonları
- Günlük transitler
- Uyumluluk hesaplama
- Astroloji grafikleri/chart'ları

---

### 8. ⭐ Premium & Purchases (10+ ekran)

#### Premium Ekranı:
- **Premium** (Light & Dark mode)
- **Premium (First Login Ads)** - İlk giriş reklamları
- Premium özellikler listesi
- Fiyatlandırma
- Abonelik planları

#### Satın Alma Ekranları:
- **Buy (Boost)** - Boost satın alma
- **Buy (Aura)** - Aura satın alma
- **Buy (Süper Like)** - Süper Like satın alma
- Her biri için Light & Dark mode

**Özellikler:**
- In-app purchase entegrasyonu
- Abonelik yönetimi
- Tüketilebilir ürünler (consumables)
- Ödeme gateway entegrasyonu

---

### 9. 🎯 Showcase (6+ ekran)

#### Showcase Ekranı:
- **Showcase** (Light & Dark mode)
- **Showcase (Free User)** - Ücretsiz kullanıcı görünümü
- **Showcase (You Have No Point Left!)** - Puan bitti uyarısı
- Profil showcase
- Boost/Spotlight özellikleri

---

### 10. ⚙️ Settings & Preferences (12+ ekran)

#### Preferences:
- **Preferences** (7 adım - Preferences _ White-1.png to _ White-7.png)
- **Preferences-1** to **Preferences-7** - Tüm adımlar
- Eşleşme tercihleri
- Yaş aralığı
- Mesafe
- Cinsiyet tercihleri
- İlgi alanları seçimi

#### Bildirim Ayarları:
- **Notifications Settings** (Light & Dark mode)
- Push notification ayarları
- Email bildirimleri
- In-app bildirimler

#### Diğer Ayarlar:
- **Notifications** - Bildirim listesi
- Bildirim geçmişi

---

### 11. 📋 Other Screens (15+ ekran)

#### Hukuki & Destek:
- **Terms of Use** (Light & Dark mode)
- **Privacy Policy** (Light & Dark mode)
- **Support Request** (Light & Dark mode)
- **Support Request (Request Received)** - Talep alındı onayı

#### Card Dropdowns:
- **Card Dropdown** - Genel dropdown
- **Card Dropdown (Report)** - Şikayet dropdown
- **Card Dropdown (Request Received)** - İstek alındı

#### Diğer:
- **All Shipp** - Tüm özellikler
- **Exit** - Çıkış onayı
- **Plus** - Ekleme butonu

---

## 🎨 Design Patterns

### 1. **Dark Mode Support**
- Tüm ekranların light ve dark versiyonları var
- `_ White.png` suffix = Dark mode
- Normal suffix = Light mode

### 2. **State Variants**
- Default states
- Error states
- Loading states
- Success states
- Empty states

### 3. **Navigation Patterns**
- Bottom navigation bar (5 ana tab)
- Stack navigation (detail screens)
- Modal screens (popups)

---

## 📦 Teknik Gereksinimler

### State Management:
- Provider / Riverpod / Bloc
- Auth state
- Profile state
- Matches state
- Messages state

### Routing:
- go_router veya navigator 2.0
- Deep linking
- Route guards (auth)

### API Integration:
- REST API client (dio/http)
- Authentication (JWT tokens)
- Real-time messaging (WebSocket)
- File upload (images)

### Astrology Calculations:
- Doğum haritası hesaplama kütüphanesi
- Gezegen pozisyonları
- Uyumluluk algoritması

### Maps:
- Google Maps / Mapbox
- Location services
- Geocoding

### Payments:
- In-app purchase (iOS/Android)
- Payment gateway (Stripe/PayPal)

### Notifications:
- Firebase Cloud Messaging
- Local notifications

### Media:
- Image picker
- Image cropper
- Video player
- Audio recorder

---

## 🗂️ Flutter Proje Yapısı Önerisi

```
lib/
├── main.dart
├── app.dart
├── config/
│   ├── theme.dart
│   ├── routes.dart
│   └── constants.dart
├── core/
│   ├── utils/
│   ├── widgets/
│   └── extensions/
├── features/
│   ├── auth/
│   │   ├── screens/
│   │   ├── widgets/
│   │   └── providers/
│   ├── onboarding/
│   ├── home/
│   ├── explore/
│   ├── messages/
│   ├── profile/
│   ├── astrology/
│   ├── premium/
│   └── settings/
├── data/
│   ├── models/
│   ├── repositories/
│   └── services/
└── shared/
    ├── widgets/
    ├── services/
    └── theme/
```

---

## ✅ İş Listesi (Task Breakdown)

### Phase 1: Proje Kurulumu
- [ ] Flutter proje yapısını oluştur
- [ ] Bağımlılıkları ekle (pubspec.yaml)
- [ ] Theme yapılandırması (light/dark mode)
- [ ] Routing yapılandırması
- [ ] State management setup

### Phase 2: Authentication Flow
- [ ] Splash screens
- [ ] Onboarding screens (3 ekran)
- [ ] Welcome screen
- [ ] Sign In screen (error handling)
- [ ] Create Account flow (8 adım)
- [ ] Verification screen (OTP)
- [ ] Auth service & API integration

### Phase 3: Ana Ekranlar
- [ ] Home/Discovery screen
- [ ] Swipe card widget
- [ ] Like/Dislike/SuperLike/Boost actions
- [ ] Profile card component
- [ ] Astrology compatibility display

### Phase 4: Explore & Map
- [ ] Map view screen
- [ ] List view screen
- [ ] View toggle
- [ ] Filters screen
- [ ] Google Maps integration
- [ ] Location services

### Phase 5: Messages
- [ ] Messages list screen
- [ ] Chat screen
- [ ] Message bubble widgets
- [ ] Photo picker & send
- [ ] Voice recorder
- [ ] Real-time messaging (WebSocket)

### Phase 6: Profile
- [ ] Profile screen
- [ ] Profile detail screen
- [ ] Profile settings
- [ ] Photo upload/edit
- [ ] Bio editor

### Phase 7: Astrology Features
- [ ] Astrology journey main screen
- [ ] Birth chart visualization
- [ ] Daily horoscope screen
- [ ] Daily advice screen
- [ ] Compatibility analysis screen
- [ ] Astrology calculation service

### Phase 8: Premium & Payments
- [ ] Premium screen
- [ ] Purchase screens (Boost, Aura, SuperLike)
- [ ] In-app purchase integration
- [ ] Subscription management
- [ ] Showcase screen

### Phase 9: Settings
- [ ] Preferences screen (7 steps)
- [ ] Notifications settings
- [ ] Profile settings
- [ ] Privacy settings

### Phase 10: Additional Features
- [ ] Support request screen
- [ ] Terms of Use screen
- [ ] Privacy Policy screen
- [ ] Dropdown components
- [ ] Notifications screen

### Phase 11: Polish & Optimization
- [ ] Dark mode tüm ekranlarda
- [ ] Animations & transitions
- [ ] Error handling
- [ ] Loading states
- [ ] Performance optimization

---

## 📝 Notlar

1. **Figma Kod Çıktısı:** Kullanıcı Figma'dan kod çıktısı alabileceği için, widget yapıları Figma çıktısına göre uyarlanacak.

2. **Backend Entegrasyonu:** Tüm ekranlar backend API'leri ile entegre edilecek (Node.js 22 + PostgreSQL).

3. **Astroloji Hesaplamaları:** Doğum haritası ve uyumluluk hesaplamaları backend'de yapılacak, frontend sadece görselleştirecek.

4. **Real-time Features:** Mesajlaşma ve bildirimler için WebSocket kullanılacak.

5. **State Management:** Önerilen: Riverpod veya Provider (büyük proje için).

