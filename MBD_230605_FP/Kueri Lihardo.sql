--Nama Tables
SELECT table_schema, table_name
FROM information_schema.tables
WHERE   table_schema = 'public';

SELECT * FROM transaksi
SELECT * FROM merk_mobil
SELECT * FROM mobil_bekas
SELECT * FROM pelanggan

-------------------------------------------------
--Buat column baru untuk assign nama mobil yang dibeli
ALTER TABLE TRANSAKSI
ADD COLUMN Bought_Car varchar(30);

--Trigger untuk assign nama mobil ke Bought_car
CREATE OR REPLACE FUNCTION update_bought_car()
RETURNS TRIGGER AS $$
BEGIN
   SELECT CONCAT(NAMA_MOBIL, ' ', VERSI) INTO NEW.Bought_Car
   FROM MERK_MOBIL
   WHERE ID_MERK_MOBIL = NEW.ID_MERK_MOBIL;
   RETURN NEW;
END;
$$ LANGUAGE plpgsql;

--Trigger function setiap insert
CREATE TRIGGER assign_bought_car
AFTER INSERT ON TRANSAKSI
FOR EACH ROW
EXECUTE FUNCTION update_bought_car();

--------------------------------------
--Menampilkan total pembelian yang dilakukan oleh pengguna dengan ID tertentu
CREATE OR REPLACE PROCEDURE CalculateTotalTransactionAmount(CustomerID INT, OUT TotalAmount FLOAT)
AS $$
BEGIN
    SELECT SUM(TOTAL) INTO TotalAmount
    FROM TRANSAKSI
    WHERE ID_PELANGGAN = CustomerID;
END;
$$ LANGUAGE plpgsql;

--EX:
DO
$$
DECLARE
    TotalAmount FLOAT;
BEGIN
    CALL CalculateTotalTransactionAmount(123, TotalAmount);
    RAISE NOTICE 'Total Transaction Amount: %', TotalAmount;
END;
$$

-------------------------------------
--Menampilkan jumlah penjualan dari suatu cabang
CREATE OR REPLACE FUNCTION GetTotalTransactionAmount(
    IN p_kota_cabang varchar(30)
)
RETURNS DECIMAL(18, 2)
AS $$
DECLARE
    total_amount DECIMAL(18, 2);
BEGIN
    SELECT SUM(TOTAL) INTO total_amount
    FROM TRANSAKSI T
    WHERE T.KOTA_CABANG = p_kota_cabang;
    
    RETURN total_amount;
END;
$$ LANGUAGE plpgsql;

--EX:
SELECT GetTotalTransactionAmount('Yogyakarta');

-----------------------------------
--QUERY
-------------------------------------
--1. Mencari mobil ramah keluarga
SELECT MM.NAMA_MOBIL, MM.VERSI
FROM MERK_MOBIL MM
JOIN SPESIFIKASI_UTAMA SU ON MM.ID_SPESIFIKASI_UTAMA = SU.ID_SPESIFIKASI_UTAMA
WHERE SU.KAPASITAS_TEMPAT_DUDUK > 4;

--2. mencari mobil luxury
SELECT DISTINCT MM.NAMA_MOBIL, MM.VERSI
FROM MERK_MOBIL MM
INNER JOIN MOBIL_BEKAS MB ON MM.ID_MERK_MOBIL = MB.ID_MERK_MOBIL
WHERE MB.HARGA > 300000000
GROUP BY MM.NAMA_MOBIL, MM.VERSI
HAVING COUNT(*) = 1;

--3. mencari mobil terkencang yang sering orang pakai
SELECT mm.nama_mobil, mm.versi
FROM SPESIFIKASI_UTAMA su
JOIN MERK_MOBIL mm ON su.ID_SPESIFIKASI_UTAMA = mm.ID_SPESIFIKASI_UTAMA
WHERE su.TENAGA > 150
ORDER BY mm.JUMLAH_BEREDAR ASC
LIMIT 1;

--4.Mencari nama - nama mobil yang ada di cabang Bali
SELECT mm.NAMA_MOBIL, mm.VERSI
FROM MERK_MOBIL mm
JOIN MOBIL_BEKAS mb ON mm.ID_MERK_MOBIL = mb.ID_MERK_MOBIL
JOIN CABANG c ON mb.KOTA_CABANG = c.KOTA_CABANG
WHERE c.KOTA_CABANG = 'Bali';

--5.Mencari mobil warna merah di cabang Jakarta
SELECT mm.NAMA_MOBIL, mm.VERSI
FROM MERK_MOBIL mm
JOIN MOBIL_BEKAS mb ON mm.ID_MERK_MOBIL = mb.ID_MERK_MOBIL
JOIN CABANG c ON mb.KOTA_CABANG = c.KOTA_CABANG
WHERE mb.WARNA = 'merah' AND c.KOTA_CABANG = 'Jakarta';

----------------------------------------
--INDEX
----------------------------------------
--index nama_mobil dari table merk_mobil
CREATE INDEX idx_nama_mobil ON MERK_MOBIL (NAMA_MOBIL);
--index nama dari table karyawan
CREATE INDEX idx_nama_karyawan ON KARYAWAN (NAMA);