# GetX SQL - Flutter MVVM Projesi

🚀 Flutter, GetX state management ve SQLite veritabanı kullanarak geliştirilmiş modern bir mobil uygulama.

## 📱 Proje Hakkında

Bu proje, Flutter framework'ü ile MVVM (Model-View-ViewModel) mimarisi kullanılarak geliştirilmiş bir mobil uygulamadır. GetX state management kütüphanesi ile durum yönetimi sağlanırken, SQLite veritabanı ile yerel veri saklama işlemleri gerçekleştirilmektedir.

## 🛠️ Kullanılan Teknolojiler

- **Flutter**: Mobil uygulama geliştirme framework'ü
- **Dart**: Programlama dili
- **GetX**: State management ve dependency injection
- **SQLite**: Yerel veritabanı
- **MVVM**: Mimari tasarım deseni
- **Google Fonts**: Özel fontlar

## 📦 Kütüphaneler

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  get: ^4.7.2              # State management
  sqflite: ^2.4.2          # SQLite veritabanı
  path: ^1.9.1             # Dosya yolu yönetimi
  google_fonts: ^6.2.1     # Google fontları

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^5.0.0
```

## 🏗️ Proje Yapısı

```
lib/
├── binding/              # GetX binding sınıfları
│   └── viewHome2_binding.dart
├── controller/           # Controller sınıfları
│   └── home_model.dart
├── core/                 # Core bileşenler
│   ├── extension/
│   │   └── extension.dart
│   └── widget/           # Özel widget'lar
│       ├── costum_button.dart
│       ├── costum_list_title.dart
│       └── costum_text_style.dart
├── model/                # Veri modelleri
│   └── ogreci_model.dart
├── routes/               # Sayfa yönlendirmeleri
│   ├── pages.dart
│   └── routes.dart
├── services/             # Servis sınıfları
│   └── SQL/
│       ├── crud.dart
│       └── database_helper.dart
├── view/                 # UI sayfaları
│   └── view_home.dart
└── main.dart            # Ana dosya
```

## 🚀 Kurulum ve Çalıştırma

### Gereksinimler
- Flutter SDK (>= 3.7.2)
- Dart SDK
- Android Studio / VS Code
- Android/iOS emülatör veya fiziksel cihaz

### Adımlar

1. **Projeyi klonlayın:**
   ```bash
   git clone <repo-url>
   cd get-sql
   ```

2. **Bağımlılıkları yükleyin:**
   ```bash
   flutter pub get
   ```

3. **Uygulamayı çalıştırın:**
   ```bash
   flutter run
   ```

## 🏛️ MVVM Mimarisi

Proje, MVVM (Model-View-ViewModel) mimarisini takip eder:

- **Model**: Veri modelleri (`model/` klasörü)
- **View**: UI bileşenleri (`view/` klasörü)
- **ViewModel**: İş mantığı ve state management (`controller/` klasörü)

## 🗄️ Veritabanı Yapısı

SQLite veritabanı kullanılarak yerel veri saklama işlemleri gerçekleştirilir:

- `database_helper.dart`: Veritabanı bağlantı ve konfigürasyon
- `crud.dart`: CRUD (Create, Read, Update, Delete) işlemleri
- `ogreci_model.dart`: Öğrenci veri modeli

## 🧭 Navigasyon

GetX routing sistemi kullanılarak sayfa yönlendirmeleri yönetilir:

- `routes.dart`: Route tanımlamaları
- `pages.dart`: Sayfa bağlantıları
- Ana sayfa: `Routes.ANA_SAYFA`

## 🎨 UI Bileşenleri

Özel widget'lar core klasöründe tanımlanmıştır:

- `costum_button.dart`: Özel buton bileşeni
- `costum_list_title.dart`: Liste başlığı bileşeni
- `costum_text_style.dart`: Metin stilleri

## 🤝 Katkıda Bulunma

1. Bu projeyi fork edin
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add some amazing feature'`)
4. Branch'inizi push edin (`git push origin feature/amazing-feature`)
5. Pull Request açın

## 📝 Lisans

Bu proje özel bir proje olup, yayınlanmamaktadır (`publish_to: 'none'`).

## 👨‍💻 Geliştirici

Tarafından geliştirilmiştir.

---

⭐ Bu projeyi beğendiyseniz, yıldız vermeyi unutmayın!
