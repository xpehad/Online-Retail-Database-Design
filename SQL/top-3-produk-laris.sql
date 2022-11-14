use online_store;

SELECT cart.id_barang, SUM(cart.quantity) AS jumlah_barang, barang.nama_barang FROM cart
INNER JOIN barang ON
cart.id_barang = barang.id_barang
GROUP BY id_barang
ORDER BY SUM(cart.quantity) DESC
LIMIT 3
;