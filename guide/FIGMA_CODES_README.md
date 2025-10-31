# Figma Kodları - Organizasyon Rehberi

## 📁 Klasör Yapısı

Bu klasörde Figma'dan gelen kodları organize edeceğiz:

```
figma-codes/
├── design-tokens/
│   ├── colors.dart
│   ├── typography.dart
│   ├── spacing.dart
│   └── icons.dart
├── components/
│   ├── buttons/
│   ├── inputs/
│   ├── cards/
│   └── ...
└── screens/
    ├── onboarding/
    ├── auth/
    ├── home/
    └── ...
```

## 📤 Figma'dan Kod Alma

### Yöntem 1: Toplu Export (Önerilen)
1. Figma'da tüm ekranları seç
2. Dev Mode'u aç (Shift+D)
3. Code panel'den tüm kodları kopyala
4. Buraya yapıştır veya dosya olarak ekle

### Yöntem 2: Ekran Bazlı
Her ekran için:
1. Ekranı seç
2. Code panel'den Flutter kodunu kopyala
3. İlgili klasöre ekle

## 🎨 Design Tokens Öncelikli

Önce şunları paylaş:
- Colors (primary, secondary, accent, text, background)
- Typography (font families, sizes, weights)
- Spacing (8px grid system)
- Border radius
- Shadows

## 📱 Ekran Sıralaması

Önerilen sıra:
1. ✅ Design Tokens
2. ✅ Common Components (Button, Input, Card)
3. ✅ Splash & Onboarding
4. ✅ Authentication Flow
5. ✅ Home/Discovery
6. ✅ Diğer ekranlar

## 💡 Notlar

- Flutter'a dönüştürülürken Figma kodları optimize edilecek
- Responsive yapılar eklenecek
- Dark mode support ekleneecek
- State management entegre edilecek

