use online_store;

CREATE TABLE kategori(
    id_kategori_barang int NOT NULL AUTO_INCREMENT,
    nama_kategori varchar(40) NOT NULL,
    note_kategori varchar(40) NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_kategori_barang)
);

CREATE TABLE user(
    id_user int NOT NULL AUTO_INCREMENT,
    nama_lengkap varchar(40) NOT NULL,
    email varchar(40) NOT NULL,
    alamat varchar(40) NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_user)
);

CREATE TABLE barang(
    id_barang int NOT NULL AUTO_INCREMENT,
    nama_barang varchar(40) NOT NULL,
    stok_barang int NOT NULL,
    harga_barang int NOT NULL,
    createdAt DATE NOT NULL,
    id_kategori_barang int NOT NULL,
    PRIMARY KEY (id_barang),
    FOREIGN KEY (id_kategori_barang) REFERENCES kategori(id_kategori_barang)
);

CREATE TABLE cart(
    id_cart int NOT NULL AUTO_INCREMENT,
    id_user int NOT NULL,
    id_barang int NOT NULL,
    quantity int NOT NULL,
    total_belanja int NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_cart),
    FOREIGN KEY (id_user) REFERENCES user(id_user),
    FOREIGN KEY (id_barang) REFERENCES barang(id_barang)
);

CREATE TABLE transaksi(
    id_transaksi int NOT NULL AUTO_INCREMENT,
    id_cart int NOT NULL,
    diskon int NOT NULL,
    pajak int NOT NULL,
    total_belanja int NOT NULL,
    createdAt DATE NOT NULL,
    PRIMARY KEY (id_transaksi),
    FOREIGN KEY (id_cart) REFERENCES cart(id_cart)
);