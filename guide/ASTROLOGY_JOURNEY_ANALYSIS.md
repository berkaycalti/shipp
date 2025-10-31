# 🔮 Personal Astrology Journey - Detaylı Analiz

## 📋 Ekran Listesi

### 1. Ana Ekran
- **Personal Astrology Journey.png** - Ana navigasyon ekranı
- **Personal Astrology Journey (Add Profile).png** - Profil yoksa gösterilecek empty state

### 2. Doğum Haritası
- **Personal Astrology Journey (Birth Chart).png** - Doğum haritası görselleştirme

### 3. Günlük Özellikler
- **Personal Astrology Journey (Daily Horoscope).png** - Günlük burç yorumu
- **Personal Astrology Journey (Daily Advice).png** - Kişiselleştirilmiş günlük tavsiyeler

### 4. Uyumluluk Analizi
- **Personal Astrology Journey (Astrological Compatibility).png** - Detaylı uyumluluk
- **Personal Astrology Journey (Astrological Compatibility Default).png** - Varsayılan/boş durum

### 5. Sonuç Ekranı
- **Personal Astrology Journey (Result).png** - AI yorumları sonuç ekranı

---

## 🔄 İş Akışı

### Flow 1: İlk Kullanım (Profil Yok)
```
Personal Astrology Journey (Add Profile)
    ↓
[Kullanıcı bilgilerini girer]
    ↓
[Form Validation]
    ↓
[Backend API'ye gönder]
    ↓
[AI Model'ine gönder]
    ↓
[AI yorumlarını al]
    ↓
Personal Astrology Journey (Result)
```

### Flow 2: Mevcut Profil
```
Personal Astrology Journey (Ana Ekran)
    ↓
[Kullanıcı özellik seçer]
    ↓
    ├─→ Birth Chart → Doğum haritası görselleştirme
    ├─→ Daily Horoscope → Günlük burç (AI yorumu)
    ├─→ Daily Advice → Kişiselleştirilmiş tavsiye (AI yorumu)
    └─→ Compatibility → Eşleşme seç → Uyumluluk analizi (AI yorumu)
```

---

## 📝 Gereksinimler

### 1. Kullanıcı Giriş Formu
**Veri Toplama:**
- Doğum tarihi (Date picker)
- Doğum saati (Time picker)
- Doğum yeri (Text input + Location picker)
- İsim (Text input)
- Email/Phone (Verification)

### 2. AI Service Entegrasyonu
**Backend Endpoint:**
- `POST /astrology/analyze` - AI modeline gönderme
- `GET /astrology/birth-chart` - Doğum haritası hesaplama
- `GET /astrology/daily-horoscope` - Günlük burç yorumu
- `GET /astrology/daily-advice` - Günlük tavsiye
- `GET /astrology/compatibility/{user1Id}/{user2Id}` - Uyumluluk analizi

### 3. Sonuç Gösterimi
**AI Response Format:**
```json
{
  "analysis": "AI yorumu metni...",
  "chartData": {...},
  "score": 85.5,
  "details": {...}
}
```

---

## 🎯 Özellikler

### Birth Chart
- Doğum haritası görselleştirme (circular chart)
- Gezegen pozisyonları
- Evler (houses)
- Açılar (aspects)
- Interactive (tap for details)

### Daily Horoscope
- Güneş burcu için günlük yorum
- AI-generated content
- Tarih seçici
- Paylaşım özelliği

### Daily Advice
- Kişiselleştirilmiş tavsiyeler
- Transit bilgileri
- Chart-based öneriler
- AI-generated content

### Compatibility Analysis
- İki kullanıcı arası uyumluluk
- Skor (0-100)
- Detaylı breakdown
- Görsel grafikler
- AI yorumları

---

## 💻 Implementation Plan

### Phase 1: Form Ekranları
- [ ] Birth info form (date, time, location)
- [ ] Form validation
- [ ] API integration

### Phase 2: AI Service
- [ ] Astrology service class
- [ ] AI endpoint integration
- [ ] Response parsing
- [ ] Error handling

### Phase 3: Result Display
- [ ] Result screen components
- [ ] Chart visualization
- [ ] Text display with formatting
- [ ] Share functionality

### Phase 4: All Screens
- [ ] Main astrology journey screen
- [ ] Birth chart screen
- [ ] Daily horoscope screen
- [ ] Daily advice screen
- [ ] Compatibility screen
- [ ] Result screen

