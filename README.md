# Toko Buah

Aplikasi mobile toko buah segar berbasis Flutter dengan autentikasi Firebase dan integrasi REST API (Golang).

---

## Informasi Mahasiswa

| Keterangan    | Detail                 |
|---------------|------------------------|
| Nama          | Ahmad Zein Adli Wibawa |
| NIM           | 1123150028             |
| Kelas         | TI 23 SE 1             |
| Program Studi | Teknik Informatika      |
| Konsentrasi   | Software Engineer       |
| Link YouTube  | [Klik di sini](https://youtu.be/6OL085kZ0c0?si=16VuwIJMf5iA_1c8) |

---

## Deskripsi Aplikasi

Toko Buah adalah aplikasi mobile yang memungkinkan pengguna menelusuri katalog buah segar, menambahkan produk ke keranjang belanja, dan menyelesaikan proses checkout. Aplikasi dibangun menggunakan Flutter dengan backend autentikasi Firebase dan data produk yang diambil dari REST API eksternal.

Fitur utama:
- Login dan registrasi akun menggunakan email/password
- Katalog produk dalam tampilan grid dengan gambar, nama, dan harga
- Keranjang belanja dengan manajemen kuantitas item
- Halaman checkout dan konfirmasi pembayaran
- Refresh data produk secara manual

---

## Arsitektur Aplikasi

Proyek ini menggunakan pendekatan **Clean Architecture** yang dibagi menjadi tiga lapisan utama per fitur:

```
lib/
├── core/                       # Konfigurasi dan utilitas global
│   ├── constants/              # Warna, string konstan
│   ├── guards/                 # Route guard (autentikasi)
│   ├── routes/                 # Definisi rute aplikasi
│   ├── services/               # Layanan HTTP, Firebase
│   ├── theme/                  # Tema Material aplikasi
│   └── widgets/                # Widget umum/reusable
│
└── features/
    ├── auth/                   # Fitur autentikasi
    │   ├── data/               # Repository, data source, model
    │   ├── domain/             # Entity, use case, interface
    │   └── presentation/       # Halaman UI dan Provider
    │
    ├── dashboard/              # Fitur katalog produk
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    │
    └── cart/                   # Fitur keranjang dan checkout
        ├── data/
        ├── domain/
        └── presentation/
```

**State Management:** Provider  
**Pola:** Feature-first dengan separation of concerns (data / domain / presentation)

---

## Cara Menjalankan Proyek

### Prasyarat

- Flutter SDK versi `^3.9.2`
- Dart SDK (sudah termasuk dalam Flutter)
- Android Studio / VS Code
- Akun Firebase (sudah dikonfigurasi pada proyek ini)
- Koneksi internet aktif

### Langkah Instalasi

1. Clone repositori:
   ```bash
   git clone https://github.com/ZEINadli/buah_uts_1123150028
   cd buah_uts_1123150028
   ```

2. Install dependensi:
   ```bash
   flutter pub get
   ```

3. Jalankan aplikasi:
   ```bash
   flutter run
   ```

   **Pastikan bakend golang sudah run**



---

## Daftar Dependensi Utama

| Package                  | Versi      | Kegunaan                                      |
|--------------------------|------------|-----------------------------------------------|
| `provider`               | ^6.1.5+1   | State management                              |
| `firebase_core`          | ^4.6.0     | Inisialisasi Firebase                         |
| `firebase_auth`          | ^6.3.0     | Autentikasi email/password dan Google         |
| `google_sign_in`         | ^6.2.1     | Login menggunakan akun Google                 |
| `dio`                    | ^5.9.2     | HTTP client untuk mengambil data produk       |
| `equatable`              | ^2.0.8     | Perbandingan objek domain                     |
| `email_validator`        | ^3.0.0     | Validasi format email pada form login         |
| `flutter_svg`            | ^2.2.4     | Render aset gambar format SVG                 |
| `url_launcher`           | ^6.3.2     | Membuka URL eksternal dari dalam aplikasi     |
| `flutter_secure_storage` | ^10.0.0    | Penyimpanan data sensitif secara aman         |
| `cupertino_icons`        | ^1.0.8     | Ikon bergaya iOS                              |

---

## Screenshot Aplikasi



