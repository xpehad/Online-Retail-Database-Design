use online_store;

SELECT  kategori.id_kategori_barang, kategori.nama_kategori, 
COUNT(barang.id_kategori_barang) AS banyak FROM barang
INNER JOIN kategori ON
barang.id_kategori_barang = kategori.id_kategori_barang
GROUP BY barang.id_kategori_barang ORDER BY count(*)
;

select barang.id_kategori_barang, kategori.nama_kategori, count(barang.id_kategori_barang) as jumlah from barang
INNER JOIN kategori ON 
barang.id_kategori_barang = kategori.id_kategori_barang
group by barang.id_kategori_barang
having count(*) = (select max(jumlah) from 
(select count(*) as jumlah from barang group by id_kategori_barang) barang)
;