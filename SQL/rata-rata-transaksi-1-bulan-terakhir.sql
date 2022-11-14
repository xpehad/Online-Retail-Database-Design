use online_store;

SELECT user.id_user, user.nama_lengkap, SUM(transaksi.total_belanja) AS total, 
SUM(transaksi.total_belanja)/count(distinct(cart.id_cart)) AS rata_rata, 
count(distinct(cart.id_cart)) AS jumlah_transaksi FROM cart
INNER JOIN transaksi ON
cart.id_cart = transaksi.id_cart
INNER JOIN user ON
cart.id_user = user.id_user
WHERE transaksi.createdAt > (DATE_SUB(CURDATE(),INTERVAL 1 MONTH))
GROUP BY user.id_user
;