# Shipp - Astroloji Tabanlı Dating App

Modern, astroloji odaklı bir dating uygulaması. Flutter ile geliştirilmiştir.

## 🚀 Özellikler

- **Astroloji Tabanlı Eşleşme**: Doğum haritası ve burç uyumuna göre eşleştirme
- **Harita Tabanlı Keşif**: Yakınındaki kullanıcıları harita üzerinde görüntüleme
- **Gerçek Zamanlı Mesajlaşma**: WebSocket ile anlık mesajlaşma
- **Push Bildirimleri**: Firebase Cloud Messaging ile bildirimler
- **Premium Üyelik**: Boost, Aura, Crush gibi premium özellikler

## 🛠 Teknolojiler

- **Framework**: Flutter
- **State Management**: Riverpod
- **Routing**: GoRouter
- **HTTP Client**: Dio
- **Database**: PostgreSQL (Backend)
- **Real-time**: WebSocket
- **Push Notifications**: Firebase Cloud Messaging

## 📋 Gereksinimler

- Flutter SDK 3.x veya üzeri
- Dart 3.x veya üzeri
- Node.js 22 (Backend)
- PostgreSQL (Backend)

## 🔧 Kurulum

1. Repository'yi klonlayın:
```bash
git clone <repository-url>
cd shipp
```

2. Bağımlılıkları yükleyin:
```bash
flutter pub get
```

3. Environment değişkenlerini ayarlayın:
```bash
cp .env.example .env
# .env dosyasını düzenleyin
```

4. Firebase yapılandırması:
   - `google-services.json` dosyasını `android/app/` klasörüne ekleyin
   - `GoogleService-Info.plist` dosyasını `ios/Runner/` klasörüne ekleyin

5. Uygulamayı çalıştırın:
```bash
flutter run
```

## 📁 Proje Yapısı

```
lib/
├── config/          # Konfigürasyon (theme, routes)
├── core/            # Core utilities, constants, extensions
├── data/            # Data layer (models, repositories, services)
├── design/          # Design system (tokens, colors, typography)
├── features/        # Feature modules
│   ├── auth/       # Authentication
│   ├── home/       # Home/Discovery
│   ├── explore/    # Map/Explore
│   ├── matches/    # Matches
│   ├── messages/   # Messaging
│   ├── profile/    # Profile
│   └── premium/    # Premium features
└── shared/          # Shared widgets, services
```

## 🔐 Environment Variables

`.env` dosyasında şu değişkenler tanımlı olmalıdır:

```
API_BASE_URL=https://api.shipp.app
FIREBASE_API_KEY=your_firebase_api_key
```

## 📱 Platform Desteği

- ✅ iOS
- ✅ Android
- ⚠️ Web (planlanıyor)
- ⚠️ macOS (planlanıyor)

## 🤝 Katkıda Bulunma

1. Fork edin
2. Feature branch oluşturun (`git checkout -b feature/AmazingFeature`)
3. Commit edin (`git commit -m 'Add some AmazingFeature'`)
4. Push edin (`git push origin feature/AmazingFeature`)
5. Pull Request açın

## 📄 Lisans

Bu proje özel lisans altındadır.

## 👥 Takım

- Development Team

---

**Not**: Bu proje aktif geliştirme aşamasındadır.

