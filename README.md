# 📥 SKYVEE TECH — All Downloader

Skrip batch Windows untuk mendownload video TikTok (tanpa watermark), audio/video YouTube, dan seluruh profil TikTok — langsung dari Command Prompt, tanpa aplikasi tambahan yang ribet.

---

## ⚠️ WAJIB DIBACA SEBELUM PAKAI

Sebelum menjalankan skrip ini, kamu **HARUS** menginstal dua program berikut terlebih dahulu. Tanpa keduanya, skrip **tidak akan berjalan**.

---

## 🔧 Persiapan Wajib

### 1. Download `yt-dlp.exe`

`yt-dlp.exe` adalah mesin utama yang digunakan skrip ini untuk mendownload video/audio.

**Langkah-langkah:**

1. Buka link berikut: [https://github.com/yt-dlp/yt-dlp/releases/latest](https://github.com/yt-dlp/yt-dlp/releases/latest)
2. Scroll ke bawah ke bagian **Assets**
3. Download file bernama **`yt-dlp.exe`**
4. Letakkan file `yt-dlp.exe` di **folder yang sama** dengan file `.bat` ini

> ✅ Pastikan `yt-dlp.exe` berada satu folder dengan `SKYVEE_TECH_Downloader_all_FINAL.bat`

---

### 2. Install `ffmpeg` dan Tambahkan ke PATH Windows

`ffmpeg` dibutuhkan untuk mengonversi video/audio (misalnya MP4 ke MP3). Tanpa ini, fitur YouTube MP3 **tidak akan bekerja**.

**Langkah-langkah:**

#### A. Download ffmpeg
1. Buka: [https://www.gyan.dev/ffmpeg/builds/](https://www.gyan.dev/ffmpeg/builds/)
2. Download **`ffmpeg-release-essentials.zip`**
3. Ekstrak file ZIP tersebut (klik kanan → Extract All)
4. Kamu akan mendapat folder seperti `ffmpeg-7.x.x-essentials_build`

#### B. Pindahkan ke lokasi yang mudah diakses
1. Buka folder hasil ekstrak tadi
2. Masuk ke subfolder **`bin`** — di sana ada file `ffmpeg.exe`, `ffplay.exe`, `ffprobe.exe`
3. Salin **path/alamat** folder `bin` tersebut, contohnya:
   ```
   C:\ffmpeg\bin
   ```
   > Tips: Kamu bisa memindahkan folder ffmpeg ke `C:\ffmpeg` agar lebih mudah

#### C. Tambahkan ke PATH Windows (sangat penting!)
1. Klik tombol **Start** → ketik **"Environment Variables"** → klik **"Edit the system environment variables"**
2. Klik tombol **"Environment Variables..."** di pojok bawah
3. Di bagian **"System variables"**, cari variabel bernama **`Path`** → klik dua kali
4. Klik **"New"** → ketik path folder bin ffmpeg tadi, contoh:
   ```
   C:\ffmpeg\bin
   ```
5. Klik **OK** → **OK** → **OK**
6. **Restart Command Prompt / komputer** agar perubahan berlaku

#### D. Verifikasi ffmpeg sudah terpasang
Buka Command Prompt baru, ketik:
```
ffmpeg -version
```
Jika muncul informasi versi ffmpeg, berarti **sudah berhasil** ✅

---

## 📁 Struktur Folder

Pastikan folder kamu terlihat seperti ini sebelum menjalankan skrip:

```
📂 SKRIP TOOL/
├── SKYVEE_TECH_Downloader_all_FINAL.bat  ← Skrip utama
├── yt-dlp.exe                            ← Wajib ada di sini!
└── 📂 Downloads/                         ← Folder hasil download (otomatis dibuat)
    ├── 📂 TikTok/
    ├── 📂 Music/
    ├── 📂 YouTube/
    └── 📂 Profiles/
```

---

## 🚀 Cara Menjalankan

1. Klik dua kali file **`SKYVEE_TECH_Downloader_all_FINAL.bat`**
   > Jika muncul peringatan Windows, klik **"More info"** → **"Run anyway"**
2. Pilih menu yang diinginkan dengan mengetik angka lalu tekan **Enter**

---

## 📋 Fitur yang Tersedia

| No | Fitur | Keterangan |
|----|-------|------------|
| 1 | **TikTok Video (No Watermark)** | Download video TikTok tanpa watermark |
| 2 | **YouTube MP3** | Download audio YouTube dengan pilihan kualitas 128/192/320 kbps |
| 3 | **YouTube MP4** | Download video YouTube dengan pilihan resolusi 360p hingga 1080p |
| 4 | **Download Profil TikTok** | Download semua video dari satu akun TikTok ⚠️ hati-hati storage! |
| 5 | **Update yt-dlp** | Perbarui mesin downloader ke versi terbaru |

---

## 💡 Tips Penggunaan

- Untuk **TikTok**, copy link video dari aplikasi TikTok lalu paste saat diminta
- Untuk **YouTube**, copy link dari browser (contoh: `https://www.youtube.com/watch?v=xxxxx`)
- Hasil download akan tersimpan otomatis di folder **`Downloads/`** sesuai kategorinya
- Jika download gagal, coba jalankan **menu Update (pilihan 4)** terlebih dahulu untuk memperbarui yt-dlp

---

## ❓ Troubleshooting

| Masalah | Solusi |
|---------|--------|
| `'yt-dlp.exe' is not recognized` | Pastikan `yt-dlp.exe` ada di folder yang sama dengan file `.bat` |
| `'ffmpeg' is not recognized` | Ulangi langkah instalasi ffmpeg dan pastikan PATH sudah ditambahkan |
| Download gagal / error | Jalankan menu **Update** (pilihan 4) untuk update yt-dlp |
| Video TikTok private | Tidak bisa didownload, hanya video publik yang bisa |

---

## 👨‍💻 Tentang

Dibuat oleh **SKYVEE TECH**  
Skrip ini dibuat untuk keperluan pribadi dan edukasi.

> ⚠️ Gunakan secara bijak dan hormati hak cipta konten kreator.
