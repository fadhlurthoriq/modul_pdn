# Flutter Firebase Authentication App

Aplikasi Flutter sederhana yang menerapkan fitur **Login dan Register menggunakan Firebase Authentication**.  

---

## Fitur Aplikasi
- Register akun menggunakan Email & Password
- Login menggunakan Email & Password
- Validasi input sederhana
- Terhubung langsung dengan Firebase Authentication
- Tampilan sederhana dan mudah digunakan
- Support Android (minSdkVersion 23)

---

## Teknologi yang Digunakan
- Flutter
- Dart
- Firebase Authentication
- Android SDK
- Gradle (Kotlin DSL)

---

## Struktur Project

lib/
├── auth/
│   └── login_or_register.dart
├── components/
│   ├── tombol/
│   │   └── tombol.dart
│   └── textfield.dart
├── pages/
│   ├── login_page.dart
│   └── register_page.dart
├── themes/
│   └── light_mode.dart
├── firebase_options.dart
└── main.dart

---

## Persiapan Sebelum Menjalankan Project

Pastikan di perangkat kamu sudah terinstall:
- Flutter SDK
- Android Studio / VS Code
- Android SDK (API 23 ke atas)
- Akun Firebase

Cek Flutter:
```bash
flutter doctor
```

---

## Cara Clone & Menjalankan Project
1. Clone Repository
```bash
git clone https://github.com/fadhlurthoriq/modul_pdian,git
```
    Masuk ke folder project
```bash
cd modul_pdian
```
2. Install Dependencies
```bash
flutter pub get
```
3. Setup Firebase
- Buka Firebase Console
- Buat project baru
- Tambahkan aplikasi Android
- Masukkan package name (sesuai applicationId)
- Download file : google-services.json
- Letakkan file tersebut ke 
```bash
android/app/
```
- Aktifkan Authentication → Email/Password di Firebase Console
4. Konfigurasi Android
Pastikan file 
```bash
android/app/build.gradle.kts
```
punya konfigurasi seperti ini
```bash
defaultConfig {
    minSdk = 23
}
```
5. Jalankan Aplikasi
```bash
flutter run
```
atau pilih device
```bash
flutter run -d <device_id>
```

---

## Author
Nama: M. Fadhlur Rahman Thoriq
Kelas: 11 PPLG 2
Project: Flutter with firebase auth