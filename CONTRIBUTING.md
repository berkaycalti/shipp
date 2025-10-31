# Katkıda Bulunma Rehberi

Shipp projesine katkıda bulunmak için bu rehberi takip edin.

## 🔄 Workflow

1. **Main branch'ten yeni branch oluştur**
   ```bash
   git checkout main
   git pull origin main
   git checkout -b feature/your-feature-name
   ```

2. **Değişikliklerini yap ve commit et**
   ```bash
   git add .
   git commit -m "feat: Add your feature"
   ```

3. **Push et ve Pull Request oluştur**
   ```bash
   git push origin feature/your-feature-name
   ```

## 📝 Commit Mesajları

Conventional Commits formatını kullanın:

- `feat:` Yeni özellik
- `fix:` Bug fix
- `docs:` Dokümantasyon
- `style:` Kod formatı (işlev değişikliği yok)
- `refactor:` Kod refactoring
- `test:` Test ekleme/düzenleme
- `chore:` Diğer değişiklikler

Örnek:
```
feat: Add filter screen with age range and distance
fix: Resolve OTP input field focus issue
chore: Update dependencies
```

## ✅ Checklist

PR göndermeden önce:

- [ ] Kod `flutter analyze` geçiyor mu?
- [ ] Kod `flutter format` ile formatlanmış mı?
- [ ] Testler geçiyor mu? (`flutter test`)
- [ ] Yeni özellikler için test yazıldı mı?
- [ ] Dokümantasyon güncellendi mi?

## 🎨 Kod Standartları

- Dart style guide'ı takip edin
- `flutter_lints` kurallarına uyun
- Widget'ları `StatelessWidget` veya `StatefulWidget` olarak tanımlayın
- İsimlendirme: `snake_case` (dosyalar), `PascalCase` (class'lar), `camelCase` (değişkenler)

