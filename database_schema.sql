-- Draf Skema Relasional Database POS "Titik Temu Kopi"
-- Sesuai Standar Master-Detail

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    nama_lengkap VARCHAR(100) NOT NULL,
    role ENUM('admin', 'kasir') NOT NULL,
    status VARCHAR(20) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nama_kategori VARCHAR(50) NOT NULL,
    slug VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    kode_produk VARCHAR(50) UNIQUE NOT NULL,
    nama_produk VARCHAR(100) NOT NULL,
    harga_jual DECIMAL(10,2) NOT NULL,
    harga_pokok DECIMAL(10,2) NOT NULL,
    stok INT NOT NULL,
    unit VARCHAR(20) DEFAULT 'pcs',
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    invoice_number VARCHAR(50) UNIQUE NOT NULL,
    user_id INT,
    tipe_pesanan VARCHAR(20) NOT NULL,
    nomor_meja VARCHAR(20),
    total_subtotal DECIMAL(10,2) NOT NULL,
    pajak_nominal DECIMAL(10,2) NOT NULL,
    diskon_nominal DECIMAL(10,2) DEFAULT 0,
    grand_total DECIMAL(10,2) NOT NULL,
    metode_bayar VARCHAR(30) NOT NULL,
    uang_dibayar DECIMAL(10,2),
    uang_kembali DECIMAL(10,2),
    status VARCHAR(20) DEFAULT 'Selesai',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE order_details (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    harga_satuan DECIMAL(10,2) NOT NULL,
    kuantiti INT NOT NULL,
    subtotal_baris DECIMAL(10,2) NOT NULL,
    catatan_khusus TEXT,
    FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES products(id)
);