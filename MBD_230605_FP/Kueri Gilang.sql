--1. 
SELECT m.plat, mm.brand_mobil || ' ' || mm.nama_mobil as nama_mobil, m.tahun_produksi, m.harga FROM MOBIL_BEKAS m
JOIN merk_mobil mm on m.id_merk_mobil = mm.id_merk_mobil
WHERE harga < (SELECT AVG(harga) FROM MOBIL_BEKAS) AND tahun_produksi BETWEEN 2000 AND 2009;