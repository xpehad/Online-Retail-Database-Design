use online_store;

INSERT INTO kategori (id_kategori_barang, nama_kategori, note_kategori, createdAt) VALUES
("1", "Obat", "Kategori Untuk Obat", "2022-11-10"),
("2", "Kesehatan", "Kategori Untuk Kesehatan", "2022-11-10"),
("3", "Makanan", "Kategori Untuk Makanan", "2022-11-10"),
("4", "Sayur", "Kategori Untuk Sayur", "2022-11-10"),
("5", "Minuman", "Kategori Untuk Minuman", "2022-11-10"),
("6", "Elektronik", "Kategori Untuk Elektronik", "2022-11-10"),
("7", "Baju Pria", "Kategori Untuk Baju Pria", "2022-11-10"),
("8", "Baju Wanita", "Kategori Untuk Baju Wanita", "2022-11-10"),
("9", "Sekolah", "Kategori Untuk Sekolah", "2022-11-10"),
("10", "Alat Masak", "Kategori Untuk Alat Masak", "2022-11-10")
;

INSERT INTO user (id_user, nama_lengkap, email, alamat, createdAt) VALUES
("1", "Asep A", "asep@gmail.com", "Jalan Asep Nomer 1", "2022-11-10"),
("2", "Bambang B", "bambang@gmail.com", "Jalan Bambang Nomer 2", "2022-11-10"),
("3", "Cecep C", "cecep@gmail.com", "Jalan Cecep Nomer 3", "2022-11-10"),
("4", "Dedi D", "dedi@gmail.com", "Jalan Dedi Nomer 4", "2022-11-10"),
("5", "Eko E", "eko@gmail.com", "Jalan Eko Nomer 5", "2022-11-10"),
("6", "Fatimah F", "fatimah@gmail.com", "Jalan Fatimah Nomer 6", "2022-11-10"),
("7", "Guntur G", "guntur@gmail.com", "Jalan Guntur Nomer 7", "2022-11-10"),
("8", "Hasan H", "hasan@gmail.com", "Jalan Hasan Nomer 8", "2022-11-10"),
("9", "Intan I", "intan@gmail.com", "Jalan Intan Nomer 9", "2022-11-10"),
("10", "Jamal J", "jamal@gmail.com", "Jalan Jamal Nomer 10", "2022-11-10")
;

INSERT INTO barang (id_barang, nama_barang, stok_barang, harga_barang, createdAt, id_kategori_barang) VALUES
("1", "Tango", "100", "9000", "2022-11-10", "3"),
("2", "Gery", "200", "3000", "2022-11-10", "3"),
("3", "Fitbar", "50", "5000", "2022-11-10", "3"),
("4", "Aqua", "500", "4000", "2022-11-10", "5"),
("5", "SendiFit", "20", "90000", "2022-11-10", "1"),
("6", "Bantal Terapi", "30", "20000", "2022-11-10", "2"),
("7", "Kemeja Flanel", "50", "78000", "2022-11-10", "7"),
("8", "Wajan", "40", "25000", "2022-11-10", "10"),
("9", "Panci", "60", "20000", "2022-11-10", "10"),
("10", "Pensil", "100", "2000", "2022-11-10", "9")
;

INSERT INTO cart (id_cart, total_belanja, id_user, quantity, id_barang, createdAt) VALUES
("1", "3000", "1", "1", "2", "2022-11-10"),
("2", "9000", "1", "1", "1", "2022-11-10"),
("3", "2000", "9", "1", "10", "2022-11-10"),
("4", "2000", "8", "1", "10", "2022-11-10"),
("5", "20000", "6", "1", "9", "2022-11-10"),
("6", "90000", "10", "1", "5", "2022-11-10"),
("7", "5000", "5", "1", "3", "2022-11-10"),
("8", "78000", "4", "1", "7", "2022-11-10"),
("9", "25000", "3", "1", "8", "2022-11-10"),
("10", "4000", "2", "1", "4", "2022-11-10")
;

INSERT INTO transaksi (id_transaksi, id_cart, diskon, pajak, total_belanja, createdAt) VALUES
("1", "2", "10", "10", "9000", "2022-11-10"),
("2", "3", "20", "10", "2000", "2022-11-10"),
("3", "5", "10", "10", "20000", "2022-11-10"),
("4", "4", "5", "10", "2000", "2022-11-10"),
("5", "1", "5", "10", "3000", "2022-11-10"),
("6", "8", "10", "10", "78000", "2022-11-10"),
("7", "9", "5", "10", "25000", "2022-11-10"),
("8", "7", "2", "10", "5000", "2022-11-10"),
("9", "6", "3", "10", "90000", "2022-11-10"),
("10", "10", "10", "10", "4000", "2022-11-10")
;