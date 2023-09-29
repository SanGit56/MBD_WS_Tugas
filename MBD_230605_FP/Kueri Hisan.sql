-- Kueri kompleks
-- 1. Ambil jumlah total sertifikasi untuk setiap no plat dan tampilkan secara urut
SELECT mb.PLAT, COUNT(c.ID_SERTIFIKAT) AS total_sertifikasi
FROM MOBIL_BEKAS mb
LEFT JOIN CERTIFICATION c ON mb.PLAT = c.PLAT
GROUP BY mb.PLAT
ORDER BY total_sertifikasi;

-- 2. Temukan total pembayaran rata-rata per transaksi dan kelompokkan sesuai id transaksi dan nama pelanggan
SELECT t.ID_TRANSAKSI, p.NAMA, AVG(c.TOTAL_PEMBAYARAN) AS rata2_total_bayar
FROM TRANSAKSI t, PELANGGAN p, CICILAN c
WHERE t.ID_PELANGGAN = p.ID_PELANGGAN
AND t.ID_CICILAN = c.ID_CICILAN
GROUP BY t.ID_TRANSAKSI, p.NAMA;

-- 3. Ambil nama karyawan dan jumlah mobil yang telah mereka jual, urutkan berdasarkan jumlah mobil yang terjual
SELECT k.NAMA, COUNT(t.PLAT) AS mobil_terjual
FROM KARYAWAN k
LEFT JOIN TRANSAKSI t ON k.ID_KARYAWAN = t.ID_PEMBAYARAN
GROUP BY k.NAMA
ORDER BY mobil_terjual;

-- 4. Temukan jumlah total pelanggan di setiap kota bersama dengan nama kota
SELECT c.KOTA_CABANG, COUNT(DISTINCT p.ID_PELANGGAN) AS TotalCustomers
FROM CABANG c, PELANGGAN p, KARYAWAN k, TRANSAKSI t
WHERE t.ID_PELANGGAN = p.ID_PELANGGAN
AND c.KOTA_CABANG = k.KOTA_CABANG
AND k.ID_KARYAWAN = t.ID_PEMBAYARAN
GROUP BY c.KOTA_CABANG;

-- 5. Ambil jarak tempuh rata-rata untuk tiap merk mobil dan kelompokkan sesuai merk
SELECT mm.BRAND_MOBIL, AVG(mb.JARAK_TEMPUH) AS rata_jarak_tempuh
FROM MERK_MOBIL mm, MOBIL_BEKAS mb
WHERE mm.ID_MERK_MOBIL = mb.ID_MERK_MOBIL
GROUP BY mm.BRAND_MOBIL;

-- Trigger
-- Menambahkan JUMLAH_MOBIL pada CABANG tiap data MERK_MOBIL ditambah
CREATE OR REPLACE FUNCTION update_jumlah_mobil()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE CABANG
  SET JUMLAH_MOBIL = JUMLAH_MOBIL + 1
  WHERE KOTA_CABANG = NEW.KOTA_CABANG;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_jumlah_mobil_trigger
AFTER INSERT ON MERK_MOBIL
FOR EACH ROW
EXECUTE FUNCTION update_jumlah_mobil();

-- Function
-- Menghitung jumlah mobil sesuai merk
CREATE OR REPLACE FUNCTION hitung_total_mobil(merk varchar)
RETURNS INT AS $$
DECLARE
  total_mobil INT;
BEGIN
  SELECT SUM(JUMLAH_BEREDAR)
  INTO total_mobil
  FROM MERK_MOBIL
  WHERE BRAND_MOBIL = merk;

  IF total_mobil IS NULL THEN
    total_mobil := 0;
  END IF;

  RETURN total_mobil;
END;
$$ LANGUAGE plpgsql;

-- Procedure
-- Memperbarui JUMLAH_BEREDAR pada MERK_MOBIL
CREATE OR REPLACE PROCEDURE update_jumlah_beredar(
    merk_id INT,
    jumlah_baru INT
)
AS $$
BEGIN
    UPDATE MERK_MOBIL
    SET JUMLAH_BEREDAR = jumlah_baru
    WHERE ID_MERK_MOBIL = merk_id;
    
    IF FOUND THEN
        RAISE NOTICE 'Berhasil memperbarui JUMLAH_BEREDAR untuk ID_MERK_MOBIL %', merk_id;
    ELSE
        RAISE EXCEPTION 'Gagal memperbarui JUMLAH_BEREDAR untuk ID_MERK_MOBIL %', merk_id;
    END IF;
END;
$$ LANGUAGE plpgsql;

-- Indexing
CREATE INDEX idx_plat ON MOBIL_BEKAS (PLAT);