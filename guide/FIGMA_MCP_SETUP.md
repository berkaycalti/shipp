# 🔌 Figma MCP Server Setup

## ✅ MCP.json Yapılandırması

MCP Server'ı kullanmak için `mcp.json` dosyasına şunu eklemeniz gerekiyor:

```json
{
  "mcpServers": {
    "Figma": {
      "url": "https://mcp.figma.com/mcp"
    }
  }
}
```

## 📋 Figma Dosya Key'ini Bulma

Figma dosyanıza erişmek için **file key**'e ihtiyacımız var.

### Yöntem 1: Figma URL'den
Figma dosyanızın URL'si şöyle görünür:
```
https://figma.com/design/ABC123xyz/Shipp
```

Burada `ABC123xyz` kısmı **file key**'dir.

### Yöntem 2: Figma Desktop'tan
1. Figma Desktop'ta dosyanızı açın
2. Bir ekran/frame seçin
3. Sağ tarafta "Inspect" panelinde URL'yi görürsünüz
4. URL'den file key'i çıkarabilirsiniz

## 🔍 Ekranları Görmek İçin

1. **Figma Desktop'ta dosyayı açın**
2. **Bir ekran/frame seçin**
3. **Node ID'yi paylaşın** (veya URL'den `node-id=XXX` kısmını)

Ya da:
- **Figma URL'sini paylaşın** → Ben file key ve node ID'yi çıkarırım

## 📝 Örnek Kullanım

Figma URL'niz şöyleyse:
```
https://figma.com/design/abc123def456/Shipp?node-id=1:2
```

- **File Key:** `abc123def456`
- **Node ID:** `1:2` (veya `1-2`)

## 🚀 Sonraki Adımlar

File key'i aldıktan sonra:
1. ✅ Tüm ekranları listeleyebilirim (`get_metadata`)
2. ✅ Ekran kodlarını alabilirim (`get_design_context`)
3. ✅ Screenshot'ları alabilirim (`get_screenshot`)
4. ✅ Design tokens'ları çıkarabilirim (`get_variable_defs`)

---

**Figma URL'nizi veya file key'i paylaşırsanız, hemen ekranları görmeye başlayabiliriz!** 🎨

