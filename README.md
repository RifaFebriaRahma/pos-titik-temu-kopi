# Sistem Kasir & Pemesanan Kafe Modern ("Titik Temu Kopi")

**Kode Ujian:** MED-WEB-01  
**Pengembang:** Rifa Febria Rahma

---

## Tentang Proyek

Aplikasi **Point of Sales (POS)** dan manajemen kafe interaktif yang dibangun khusus untuk menyelesaikan Uji Kompetensi Teknis Web Programmer di Mediatama Web Indonesia. Aplikasi ini dirancang dengan pendekatan *Single-Page Application (SPA)*yang bersih, responsif, cepat, dan mandiri (_self-contained_).

---

## Teknologi yang Digunakan (Tech Stack)

- **Antarmuka (Frontend):** HTML5, Tailwind CSS (via CDN), Lucide Icons, Chart.js (Visualisasi Grafik Penjualan).
- **Logika & State Management:** Vanilla JavaScript (ES6+).
- **Penyimpanan Data (Database Simulation):** Browser `LocalStorage` API (Menerapkan skema relasional Master-Detail antara produk, kategori, dan transaksi).

---

## Fitur Utama & Modul Sistem

1. **Modul Autentikasi & Hak Akses (Login & RBAC):**
   - Sistem login aman dengan validasi akun.
   - Pembatasan hak akses (_Role-Based Access Control_): **Administrator** memiliki akses penuh (kelola menu, analitik, dan laporan), sementara **Kasir** berfokus pada operasional transaksi POS.

2. **Modul Dashboard Eksekutif:**
   - 4 KPI Utama (Total Omset Hari Ini, Jumlah Pesanan Sukses, Menu Terlaris, dan Peringatan Stok Minimum).
   - Grafik interaktif tren penjualan 7 hari terakhir menggunakan Chart.js.
   - Tabel 5 Transaksi Terakhir & tombol pintasan _Quick Action_ untuk transaksi baru

3. **Modul Transaksi Inti (POS):**
   - Pemilihan Tipe Pesanan (_Dine-In_ dengan nomor meja / _Takeaway_).
   - Katalog menu interaktif berdasarkan kategori dengan indikator stok _real-time_.
   - Kalkulator otomatis (Subtotal, Pajak Restoran 10%, Diskon dinamis, dan Grand Total).
   - Validasi ketat (mencegah pembayaran tunai kurang dari tagihan dan validasi ketersediaan stok).
   - Fitur cetak nota/struk belanja instan.

4. **Modul Laporan & Ekspor Data:**
   - _Summary Bar_ lengkap (Omset Bruto, Total Diskon, Pajak Terkumpul, Omset Bersih, dan **Rata-rata Nilai Transaksi / AOV**).
   - Tabel historis lengkap dengan rincian _Item Terjual_, Status Pesanan, dan tombol aksi pembatalan pesanan (_Cancel Order_ dengan mekanisme pengembalian stok otomatis/_rollback_).
   - Fitur cetak laporan langsung (_Print/PDF_) dan ekspor ke format Spreadsheet (CSV/Excel).

---

## Kredensial Akun Uji Coba (Demo Accounts)

- **Role Administrator / Manager:**
  - Username: `admin`
  - Password: `admin123`
- **Role Kasir / Waiter:**
  - Username: `kasir`
  - Password: `kasir123`

---

## Langkah Instalasi & Cara Menjalankan

Karena menggunakan arsitektur modern yang ringan, aplikasi ini **tidak memerlukan instalasi Node.js, Composer, atau server database (MySQL/PostgreSQL) eksternal**.

1. Unduh (_download_) atau _clone_ repositori proyek ini.
2. Buka direktori proyek, kemudian buka file **`index.html`** menggunakan browser web modern (Google Chrome, Microsoft Edge, atau Mozilla Firefox).
3. Aplikasi siap digunakan untuk proses evaluasi dan pengujian! _(Catatan: Untuk fitur "Reset Data" pada halaman laporan digunakan apabila diperlukan untuk membersihkan data transaksi awal)._

---
