use online_store;

INSERT INTO cart (id_cart, total_belanja, id_user, id_barang, createdAt) VALUES
("11", "3000", "1", "2", "2022-11-10"),
("12", "20000", "1", "9", "2022-11-10"),
("13", "78000", "1", "7", "2022-11-10")
;

INSERT INTO transaksi (id_transaksi, id_cart, diskon, pajak, createdAt) VALUES
("11", "11", "10", "10", "2022-11-10")
;