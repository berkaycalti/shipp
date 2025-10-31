# Veritabanı Şeması Analizi - Astroloji Tabanlı Dating App

## 📊 Genel Bakış

Bu veritabanı şeması, astroloji temalı bir dating uygulaması için kapsamlı bir yapı sunmaktadır. Toplam **80+ tablo** içermekte ve şu ana kategorilere ayrılmaktadır:

## 🗂️ Tablo Kategorileri

### 1. 👤 Kullanıcı Yönetimi ve Kimlik Doğrulama

#### Ana Tablolar:
- **`users`**: Kullanıcı hesapları, doğum bilgileri (astroloji için kritik)
  - `birthDate`, `birthTime`, `birthLocation` - Astroloji hesaplamaları için
  - `email`, `phoneNumber` - Çoklu doğrulama yöntemi
  - `status`, `emailVerified`, `phoneVerified`

- **`userProfiles`**: Kullanıcı profil bilgileri
  - `displayName`, `bio`, `gender`, `sexualOrientation`
  - `currentLocationLat`, `currentLocationLon` - Konum tabanlı eşleştirme
  - `jobTitle`, `education` - Sosyal bilgiler
  - `profileStatus` - Gizlilik kontrolü

- **`adminUsers`**: Yönetici kullanıcıları
- **`roles`**, **`permissions`**, **`rolePermissions`**: Rol bazlı yetkilendirme

#### İlgili Tablolar:
- **`userVerifications`**: Doğrulama işlemleri
- **`devices`**, **`sessions`**: Cihaz ve oturum yönetimi
- **`consents`**: GDPR onay kayıtları
- **`blacklist`**: Engellenen kullanıcılar

---

### 2. 🔮 Astroloji Özellikleri (Kritik Bölüm)

#### Temel Astroloji Tabloları:
- **`zodiacSigns`**: Burç bilgileri
  - `signName`, `element`, `modality`
  - 12 burç + element ve modalite bilgileri

- **`astrologyProfiles`**: Kullanıcı astroloji profilleri
  - `sunSignId`, `moonSignId`, `risingSignId` - Üç ana burç
  - `fullChartData` (JSONB) - Tam doğum haritası verisi

#### Uyumluluk ve Analiz:
- **`compatibilityAnalyses`**: İki kullanıcı arası astrolojik uyumluluk
  - `user1Id`, `user2Id`, `score` (0-100)
  - `analysisDetails` (JSONB) - Detaylı analiz verileri
  - `version` - Algoritma versiyonu

- **`planetaryAspects`**: Gezegen açılanmaları
  - `planet1`, `planet2`, `aspectType`, `orb`
  - Uyumluluk analizinin detaylı bileşenleri

#### Günlük Özellikler:
- **`dailyTransits`**: Günlük astrolojik transitler
  - Kullanıcılara özel günlük astroloji önerileri

---

### 3. 💑 Eşleşme ve Sosyal Etkileşim

#### Eşleşme Sistemi:
- **`matches`**: Karşılıklı eşleşmeler
  - `user1Id`, `user2Id`
  - `status`: active/unmatched/blocked/expired

- **`swipes`**: Kaydırma işlemleri
  - `swiperUserId`, `swipedUserId`
  - `action`: like/dislike/superlike

- **`matchFeedback`**: Eşleşme geri bildirimleri
  - Kullanıcı deneyimlerini toplama

#### Mesajlaşma:
- **`conversations`**: Konuşmalar
  - `matchId` ile bağlantılı

- **`messages`**: Mesajlar
  - `messageType`: text/image/video/audio/location/gif/sticker
  - `contentPayload` (JSONB) - Esnek içerik yapısı
  - `isRead` - Okunma durumu

- **`messageReactions`**: Mesaj tepkileri
  - Emoji tepkileri

- **`videoCallLogs`**: Video arama kayıtları
  - `durationSeconds`, `qualityScore`

---

### 4. 💰 Ödeme ve Abonelik Sistemi

#### Abonelik Yönetimi:
- **`products`**: Abonelik ürünleri
  - `productKey`, `name`, `price`, `durationDays`

- **`subscriptions`**: Aktif abonelikler
  - `status`: active/expired/cancelled/paused/suspended
  - `startsAt`, `endsAt`

#### Ödeme İşlemleri:
- **`payments`**: Ödeme kayıtları
  - `status`: pending/completed/failed/refunded/cancelled
  - `provider`, `providerTransactionId`

- **`refunds`**: İade işlemleri
  - `reason`, `status`

#### Tüketilebilir Ürünler (In-App Purchase):
- **`consumableProducts`**: Tüketilebilir ürünler (Hype, Aura, Crush vb.)
  - `productKey`, `name`, `price`, `currency`

- **`userConsumableInventory`**: Kullanıcı envanteri
  - `quantity` - Kullanıcının sahip olduğu miktar

- **`consumableUsageLog`**: Kullanım kayıtları
  - `context` (JSONB) - Kullanım bağlamı

---

### 5. 🛡️ Moderasyon ve Güvenlik

#### Profil Moderasyonu:
- **`profilemoderation`**: Profil inceleme süreci
  - `status`: pending/approved/rejected
  - `reviewedBy`, `reviewNotes`, `moderationReason`

- **`profilemoderationmedia`**: Moderasyona gönderilen medya
  - `mediatype`: profile_photo/verification_photo/document
  - `approved` - Tek tek medya onayı

- **`profilemoderationinterests`**: İlgi alanları moderasyonu

#### Şikayet ve Raporlama:
- **`reports`**: Kullanıcı şikayetleri
  - `reporterId`, `reportedUserId`
  - `reportableType`, `reportableId` - Esnek raporlama
  - `reasonCode`, `reasonDetails`

- **`moderationActions`**: Moderasyon eylemleri
  - `actionType`, `reason`, `expiresAt`
  - `isActive` - Geçici yasaklamalar için

---

### 6. 📸 İçerik ve Medya Yönetimi

- **`media`**: Medya dosyaları
  - `mediaType`, `url`, `uploadStatus`

- **`banners`**: Uygulama içi banner'lar
  - `position`, `targetAudience`, `clickCount`, `impressionCount`

- **`contentVersions`**: İçerik versiyonlama
  - `contentType`, `version`, `locale`
  - `status`, `publishedAt`

---

### 7. 🔔 Bildirimler

- **`pushNotifications`**: Push bildirimleri
  - `campaignId` - Kampanyalara bağlı
  - `scheduledAt`, `sentAt`
  - `targetCount`, `sentCount`, `openedCount`, `clickedCount`
  - Platform bazlı tracking

---

### 8. 🎮 Gamification: Quiz ve Başarımlar

#### Quiz Sistemi:
- **`quizzes`**: Quiz'ler
  - `quizType`: personality/compatibility/onboarding/interest
  - `isActive`

- **`quizQuestions`**: Sorular
  - `questionType`: multiple_choice/single_choice/text/rating/scale

- **`questionOptions`**: Seçenekler
  - `isCorrect`, `points` - Puanlama

- **`userQuizResponses`**: Kullanıcı yanıtları

#### Başarım Sistemi:
- **`achievements`**: Başarımlar
  - `achievementKey`, `name`, `iconUrl`
  - `pointsReward`

- **`userAchievements`**: Kullanıcı başarımları
  - `earnedAt`

- **`dailyStreaks`**: Günlük seriler
  - `currentStreakLength`, `lastActiveDate`

---

### 9. ⚙️ Yönetim ve Operasyon

#### A/B Testing ve Deneyler:
- **`abTests`**: A/B testleri
  - `variants`, `targetAudience`, `successMetrics`
  - `statisticalSignificance`, `results`

- **`experiments`**: Deneyler
  - `variants`, `targetAudience`

- **`featureFlags`**: Özellik bayrakları
  - `targetPercentage` - Kademeli yayınlama

#### Kampanya Yönetimi:
- **`campaigns`**: Pazarlama kampanyaları
  - `campaignType`, `targetAudience`
  - `budget`, `spend`, `metrics`
  - `scheduleConfig`

#### API ve Entegrasyon:
- **`apiKeys`**: API anahtarları
  - `permissions`, `rateLimit`
  - `lastUsedAt`, `usageCount`

- **`webhooks`**: Webhook'lar
  - `events[]`, `retryCount`
  - `lastSuccessAt`, `lastFailureAt`

---

### 10. 📋 GDPR ve Veri Yönetimi

- **`gdprRequests`**: GDPR istekleri
  - `requestType`, `verificationMethod`, `verificationStatus`
  - `slaDeadline`, `dataExportPath`

- **`dataExports`**: Veri dışa aktarımları
  - `exportType`, `status`, `filePath`
  - `dateRangeStart`, `dateRangeEnd`
  - `filters` (JSONB), `downloadUrl`, `expiresAt`

- **`consents`**: Onay kayıtları
  - `consentType`, `granted`, `version`

---

### 11. 🎫 Destek ve İşletme

- **`tickets`**: Destek talepleri
  - `ticketNumber`, `priority`, `status`, `category`
  - `slaDeadline`, `satisfactionRating`
  - `assignedTo`, `internalNotes`

- **`legalRequests`**: Hukuki istekler
  - `requestType`, `priority`
  - `requesterName`, `requesterOrganization`
  - `filesAttached[]`

---

### 12. 📊 Analytics ve Öğrenme

- **`userBehaviorEvents`**: Kullanıcı davranış takibi
  - `eventType`, `targetEntityType`, `targetEntityId`
  - `metadata` (JSONB), `sessionId`
  - `ipAddress`, `userAgent`

- **`userEmbeddingVectors`**: ML için embedding vektörleri
  - `modelVersion`, `vectorData` (real array)
  - Öneri sistemi için kullanılabilir

- **`auditLogs`**: Denetim kayıtları
  - `action`, `entityType`, `entityId`
  - `oldValues`, `newValues` (JSONB)

---

### 13. 🔗 İlişkisel Veriler

- **`interests`**: İlgi alanları katalogu
- **`userInterests`**: Kullanıcı-ilgi alanı eşleşmeleri
- **`privacySettings`**: Gizlilik ayarları
  - `locationVisibility`, `profileVisibilityToNonMatches`
  - `showAstrologicalChartDetails`, `isDiscoverable`

---

### 14. 🛠️ Geliştirme ve Test

- **`testScenarios`**: Test senaryoları
  - `scenarioKey`, `category`, `priority`
  - `steps` (JSONB), `expectedResults`, `actualResults`
  - `automated`, `runCount`, `successCount`, `failureCount`

- **`roadmapItems`**: Yol haritası öğeleri
  - `status`, `priority`, `category`
  - `estimatedEffort`, `dependsOn[]` (uuid array)
  - `progressPercentage`, `tags[]`

- **`incidentLogs`**: Olay kayıtları
  - `severity`, `status`, `affectedSystems[]`
  - `rootCause`, `resolution`, `downtimeMinutes`

---

## 🎯 Önemli Tasarım Kararları

### 1. **JSONB Kullanımı**
Birçok tabloda JSONB kullanılmış:
- Esnek veri yapıları için (`fullChartData`, `contentPayload`, `metadata`)
- Hızlı sorgulama için (PostgreSQL JSONB indexing)
- Schema değişikliklerine esneklik

### 2. **UUID Primary Keys**
Neredeyse tüm tablolarda UUID kullanılmış:
- Güvenlik (tahmin edilemez ID'ler)
- Dağıtık sistem uyumluluğu
- UUID v4 standardı

### 3. **Soft Delete Pattern**
`users` tablosunda `deletedAt` alanı:
- GDPR uyumluluğu
- Veri geri kurtarma
- Analitik tutarlılığı

### 4. **Versioning Pattern**
- `contentVersions`: İçerik versiyonlama
- `compatibilityAnalyses.version`: Algoritma versiyonlama
- `consents.version`: Onay versiyonlama

### 5. **Audit Trail**
- `auditLogs`: Tüm önemli değişiklikleri kaydetme
- `oldValues`, `newValues` (JSONB): Tam değişiklik geçmişi

---

## 🔄 İlişki Akışları

### Kullanıcı Kaydı Akışı:
1. `users` → Hesap oluşturma
2. `userProfiles` → Profil bilgileri
3. `astrologyProfiles` → Astroloji profili (doğum bilgilerinden)
4. `profilemoderation` → Profil inceleme
5. `media` → Fotoğraflar yükleme

### Eşleşme Akışı:
1. `swipes` → Kullanıcı kaydırma
2. `compatibilityAnalyses` → Astrolojik uyumluluk hesaplama
3. `matches` → Karşılıklı eşleşme oluşturma
4. `conversations` → Konuşma başlatma
5. `messages` → Mesajlaşma

### Ödeme Akışı:
1. `products` / `consumableProducts` → Ürün seçimi
2. `payments` → Ödeme işlemi
3. `subscriptions` / `userConsumableInventory` → Ürün aktivasyonu
4. `refunds` (gerekirse) → İade işlemi

---

## ⚠️ Dikkat Edilmesi Gerekenler

1. **Performans:**
   - `userEmbeddingVectors.vectorData` (real array) - Büyük veri setleri için optimize edilmeli
   - `compatibilityAnalyses` - Tüm kullanıcı çiftleri için hesaplama maliyetli olabilir
   - JSONB alanlar için uygun indexler gerekli

2. **Ölçeklenebilirlik:**
   - `messages` tablosu hızlı büyüyebilir - Partitioning düşünülebilir
   - `swipes` tablosu çok sayıda kayıt içerebilir - Cleanup stratejisi gerekli

3. **Veri Tutarlılığı:**
   - `matches` ve `swipes` arasındaki tutarlılık kontrol edilmeli
   - `subscriptions` ve `payments` arasındaki senkronizasyon kritik

4. **Gizlilik:**
   - `userBehaviorEvents` - Hassas veri, GDPR uyumluluğu gerekli
   - `auditLogs` - Şifrelenmiş saklama düşünülebilir

---

## 📝 Öneriler

1. **Index Stratejisi:**
   - `users.email` (unique)
   - `matches(user1Id, user2Id)`
   - `swipes(swiperUserId, createdAt)`
   - JSONB alanlar için GIN indexler

2. **Materialized Views:**
   - Aktif eşleşme istatistikleri
   - Günlük aktif kullanıcı sayıları
   - Uyumluluk skoru dağılımları

3. **Backup Stratejisi:**
   - Kritik tablolar için sık backup
   - `messages` tablosu için ayrı backup stratejisi

4. **Monitoring:**
   - `incidentLogs` ile sistem sağlığı takibi
   - `auditLogs` ile güvenlik izleme

---

## 🚀 Sonraki Adımlar

1. ✅ Şema analizi tamamlandı
2. 📸 Görselleri `assets/images/screens/` klasörüne ekleyin
3. 🔍 Görseller analiz edilecek
4. 💻 Backend API tasarımı planlanacak
5. 📱 Flutter ekranları implement edilecek

