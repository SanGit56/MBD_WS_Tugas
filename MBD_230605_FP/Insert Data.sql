-- Inserting data into CABANG table
INSERT INTO CABANG (KOTA_CABANG, JUMLAH_MOBIL, JUMLAH_KARYAWAN) VALUES
('Jakarta', 20, 10),
('Surabaya', 15, 8),
('Bandung', 10, 6),
('Yogyakarta', 10, 6);

-- Inserting data into PEMILIK table
INSERT INTO PEMILIK (ID_PEMILIK, NIK, NAMA, JENIS_KELAMIN, NO_TELEPON, ALAMAT, EMAIL) VALUES
(1, '1234567890123456', 'John stewart', 'Male', '081234567890', 'Jl. Raya No. 4', 'johnstewart@example.com'),
(2, '2345678901234567', 'Selena gomez', 'Female', '082345678901', 'Jl. Raya No. 5', 'selenagomez@example.com'),
(3, '3456789012345678', 'Indra josua', 'Male', '083456789012', 'Jl. Raya No. 6', 'indrajosua@example.com'),
(4, '4567890123456789', 'Natalie anderson', 'Female', '084567890123', 'Jl. Raya No. 7', 'natalieanderson@example.com'),
(5, '5678901234567890', 'Jason smith', 'Male', '085678901234', 'Jl. Raya No. 8', 'jasonsmith@example.com'),
(6, '6789012345678901', 'Emma brown', 'Female', '086789012345', 'Jl. Raya No. 9', 'emmabrown@example.com'),
(7, '7890123456789012', 'Henry miller', 'Male', '087890123456', 'Jl. Raya No. 10', 'henrymiller@example.com'),
(8, '8901234567890123', 'Olivia jones', 'Female', '088901234567', 'Jl. Raya No. 11', 'oliviajones@example.com'),
(9, '9012345678901234', 'Michael wilson', 'Male', '089012345678', 'Jl. Raya No. 12', 'michaelwilson@example.com'),
(10, '0123456789012345', 'Sophia taylor', 'Female', '090123456789', 'Jl. Raya No. 13', 'sophiataylor@example.com'),
(11, '1234567890123456', 'Daniel anderson', 'Male', '091234567890', 'Jl. Raya No. 14', 'danielanderson@example.com'),
(12, '2345678901234567', 'Amelia wilson', 'Female', '092345678901', 'Jl. Raya No. 15', 'ameliawilson@example.com'),
(13, '3456789012345678', 'Jacob jackson', 'Male', '093456789012', 'Jl. Raya No. 16', 'jacobjackson@example.com'),
(14, '4567890123456789', 'Ava davis', 'Female', '094567890123', 'Jl. Raya No. 17', 'avadavis@example.com'),
(15, '5678901234567890', 'Emma clark', 'Female', '095678901234', 'Jl. Raya No. 18', 'emmaclark@example.com'),
(16, '6789012345678901', 'Noah anderson', 'Male', '096789012345', 'Jl. Raya No. 19', 'noahanderson@example.com'),
(17, '7890123456789012', 'Mia moore', 'Female', '097890123456', 'Jl. Raya No. 20', 'miamoore@example.com'),
(18, '8901234567890123', 'William smith', 'Male', '098901234567', 'Jl. Raya No. 21', 'williamsmith@example.com'),
(19, '9012345678901234', 'Sophie parker', 'Female', '099012345678', 'Jl. Raya No. 22', 'sophieparker@example.com'),
(20, '0123456789012345', 'Joshua miller', 'Male', '100123456789', 'Jl. Raya No. 23', 'joshuamiller@example.com'),
(21, '1234567890123456', 'Emma wilson', 'Female', '101234567890', 'Jl. Raya No. 24', 'emmawilson@example.com'),
(22, '2345678901234567', 'Liam brown', 'Male', '102345678901', 'Jl. Raya No. 25', 'liambrown@example.com'),
(23, '3456789012345678', 'Olivia thompson', 'Female', '103456789012', 'Jl. Raya No. 26', 'oliviathompson@example.com'),
(24, '4567890123456789', 'Lucas lee', 'Male', '104567890123', 'Jl. Raya No. 27', 'lucaslee@example.com'),
(25, '5678901234567890', 'Isabella jones', 'Female', '105678901234', 'Jl. Raya No. 28', 'isabellajones@example.com'),
(26, '6789012345678901', 'Benjamin smith', 'Male', '106789012345', 'Jl. Raya No. 29', 'benjaminsmith@example.com'),
(27, '7890123456789012', 'Ava clark', 'Female', '107890123456', 'Jl. Raya No. 30', 'avaclark@example.com'),
(28, '8901234567890123', 'Alexander taylor', 'Male', '108901234567', 'Jl. Raya No. 31', 'alexandertaylor@example.com'),
(29, '9012345678901234', 'Charlotte wilson', 'Female', '109012345678', 'Jl. Raya No. 32', 'charlottewilson@example.com'),
(30, '0123456789012345', 'Mason parker', 'Male', '110123456789', 'Jl. Raya No. 33', 'masonparker@example.com');

-- Inserting data into PELANGGAN table
INSERT INTO PELANGGAN (ID_PELANGGAN, NIK, NAMA, JENIS_KELAMIN, NO_TELEPON, ALAMAT, EMAIL) VALUES
(1, '1234567890123456', 'Leo john', 'Male', '081234567890', 'Jl. Raya No. 1', 'Leojohn@example.com'),
(2, '2345678901234567', 'Jennifer sintya', 'Female', '082345678901', 'Jl. Raya No. 2', 'Jennifersintya@example.com'),
(3, '3456789012345678', 'Lucas jonatan', 'Male', '083456789012', 'Jl. Raya No. 3', 'Lucasjonatan@example.com'),
(4, '4567890123456789', 'Sarah parker', 'Female', '084567890123', 'Jl. Raya No. 4', 'sarahparker@example.com'),
(5, '5678901234567890', 'Jackson smith', 'Male', '085678901234', 'Jl. Raya No. 5', 'jacksonsmith@example.com'),
(6, '6789012345678901', 'Emily brown', 'Female', '086789012345', 'Jl. Raya No. 6', 'emilybrown@example.com'),
(7, '7890123456789012', 'Ethan miller', 'Male', '087890123456', 'Jl. Raya No. 7', 'ethanmiller@example.com'),
(8, '8901234567890123', 'Olivia jones', 'Female', '088901234567', 'Jl. Raya No. 8', 'oliviajones@example.com'),
(9, '9012345678901234', 'Michael wilson', 'Male', '089012345678', 'Jl. Raya No. 9', 'michaelwilson@example.com'),
(10, '0123456789012345', 'Sophia taylor', 'Female', '090123456789', 'Jl. Raya No. 10', 'sophiataylor@example.com'),
(11, '1234567890123456', 'Daniel anderson', 'Male', '091234567890', 'Jl. Raya No. 11', 'danielanderson@example.com'),
(12, '2345678901234567', 'Amelia wilson', 'Female', '092345678901', 'Jl. Raya No. 12', 'ameliawilson@example.com'),
(13, '3456789012345678', 'Jacob jackson', 'Male', '093456789012', 'Jl. Raya No. 13', 'jacobjackson@example.com'),
(14, '4567890123456789', 'Ava davis', 'Female', '094567890123', 'Jl. Raya No. 14', 'avadavis@example.com'),
(15, '5678901234567890', 'Emma clark', 'Female', '095678901234', 'Jl. Raya No. 15', 'emmaclark@example.com'),
(16, '6789012345678901', 'Noah anderson', 'Male', '096789012345', 'Jl. Raya No. 16', 'noahanderson@example.com'),
(17, '7890123456789012', 'Mia moore', 'Female', '097890123456', 'Jl. Raya No. 17', 'miamoore@example.com'),
(18, '8901234567890123', 'William smith', 'Male', '098901234567', 'Jl. Raya No. 18', 'williamsmith@example.com'),
(19, '9012345678901234', 'Sophie parker', 'Female', '099012345678', 'Jl. Raya No. 19', 'sophieparker@example.com'),
(20, '0123456789012345', 'Joshua miller', 'Male', '100123456789', 'Jl. Raya No. 20', 'joshuamiller@example.com'),
(21, '1234567890123456', 'Emma wilson', 'Female', '101234567890', 'Jl. Raya No. 21', 'emmawilson@example.com'),
(22, '2345678901234567', 'Liam brown', 'Male', '102345678901', 'Jl. Raya No. 22', 'liambrown@example.com'),
(23, '3456789012345678', 'Olivia thompson', 'Female', '103456789012', 'Jl. Raya No. 23', 'oliviathompson@example.com'),
(24, '4567890123456789', 'Lucas lee', 'Male', '104567890123', 'Jl. Raya No. 24', 'lucaslee@example.com'),
(25, '5678901234567890', 'Isabella jones', 'Female', '105678901234', 'Jl. Raya No. 25', 'isabellajones@example.com'),
(26, '6789012345678901', 'Benjamin smith', 'Male', '106789012345', 'Jl. Raya No. 26', 'benjaminsmith@example.com'),
(27, '7890123456789012', 'Ava clark', 'Female', '107890123456', 'Jl. Raya No. 27', 'avaclark@example.com'),
(28, '8901234567890123', 'Alexander taylor', 'Male', '108901234567', 'Jl. Raya No. 28', 'alexandertaylor@example.com'),
(29, '9012345678901234', 'Charlotte wilson', 'Female', '109012345678', 'Jl. Raya No. 29', 'charlottewilson@example.com'),
(30, '0123456789012345', 'Mason parker', 'Male', '110123456789', 'Jl. Raya No. 30', 'masonparker@example.com');

-- Inserting data into JOB_DESK table
INSERT INTO JOB_DESK (NAMA_POSISI, DESKRIPSI) VALUES
('Sales Executive', 'Responsible for selling cars to customers'),
('Mechanic', 'Responsible for car maintenance and repairs'),
('Accountant', 'Responsible for financial management and record keeping'),
('Marketing Executive', 'Responsible for promoting and advertising the company'),
('Customer Service', 'Responsible for handling customer inquiries and complaints'),
('Inventory Manager', 'Responsible for managing inventory and stock levels'),
('IT Specialist', 'Responsible for managing the companys IT infrastructure'),
('HR Manager', 'Responsible for managing human resources and employee relations'),
('Ops Supervisor', 'Responsible for overseeing daily operations and ensuring efficiency'),
('Quality Control', 'Responsible for inspecting and ensuring the quality of products');

-- Inserting data into KARYAWAN table
INSERT INTO KARYAWAN (ID_KARYAWAN, NAMA_POSISI, KOTA_CABANG, NAMA, TANGGAL_LAHIR, MULAI_BEKERJA, JENIS_KELAMIN, NO_TELEPON, EMAIL, NIK, POSISI) VALUES
(1, 'Sales Executive', 'Jakarta', 'John Doe', '1990-01-01', '2021-01-01', 'Male', '081234567890', 'john.doe@example.com', '1234567890123456', 'Sales Executive'),
(2, 'Mechanic', 'Surabaya', 'Jane Smith', '1995-02-02', '2021-02-02', 'Female', '082345678901', 'jane.smith@example.com', '2345678901234567', 'Mechanic'),
(3, 'Accountant', 'Bandung', 'David Johnson', '1988-03-03', '2021-03-03', 'Male', '083456789012', 'david.johnson@example.com', '3456789012345678', 'Accountant'),
(4, 'Marketing Executive', 'Jakarta', 'Sarah Williams', '1992-04-04', '2021-04-04', 'Female', '084567890123', 'sarah.williams@example.com', '4567890123456789', 'Marketing Executive'),
(5, 'Customer Service', 'Surabaya', 'Michael Brown', '1991-05-05', '2021-05-05', 'Male', '085678901234', 'michael.brown@example.com', '5678901234567890', 'Customer Service'),
(6, 'Inventory Manager', 'Bandung', 'Emily Davis', '1993-06-06', '2021-06-06', 'Female', '086789012345', 'emily.davis@example.com', '6789012345678901', 'Inventory Manager'),
(7, 'IT Specialist', 'Jakarta', 'Christopher Wilson', '1989-07-07', '2021-07-07', 'Male', '087890123456', 'christopher.wilson@example.com', '7890123456789012', 'IT Specialist'),
(8, 'HR Manager', 'Surabaya', 'Olivia Miller', '1994-08-08', '2021-08-08', 'Female', '088901234567', 'olivia.miller@example.com', '8901234567890123', 'HR Manager'),
(9, 'Ops Supervisor', 'Bandung', 'Daniel Taylor', '1996-09-09', '2021-09-09', 'Male', '089012345678', 'daniel.taylor@example.com', '9012345678901234', 'Ops Supervisor'),
(10, 'Quality Control', 'Jakarta', 'Sophia Anderson', '1997-10-10', '2021-10-10', 'Female', '090123456789', 'sophia.anderson@example.com', '0123456789012345', 'Quality Control'),
(11, 'Sales Executive', 'Surabaya', 'Matthew Martinez', '1998-11-11', '2021-11-11', 'Male', '091234567890', 'matthew.martinez@example.com', '1234567890123456', 'Sales Executive'),
(12, 'Mechanic', 'Bandung', 'Isabella Thompson', '1999-12-12', '2021-12-12', 'Female', '092345678901', 'isabella.thompson@example.com', '2345678901234567', 'Mechanic'),
(13, 'Accountant', 'Jakarta', 'James Lee', '1993-01-13', '2022-01-13', 'Male', '093456789012', 'james.lee@example.com', '3456789012345678', 'Accountant'),
(14, 'Marketing Executive', 'Surabaya', 'Ava Harris', '1994-02-14', '2022-02-14', 'Female', '094567890123', 'ava.harris@example.com', '4567890123456789', 'Marketing Executive'),
(15, 'Customer Service', 'Bandung', 'Logan Clark', '1995-03-15', '2022-03-15', 'Male', '095678901234', 'logan.clark@example.com', '5678901234567890', 'Customer Service'),
(16, 'Inventory Manager', 'Jakarta', 'Ella Lewis', '1996-04-16', '2022-04-16', 'Female', '096789012345', 'ella.lewis@example.com', '6789012345678901', 'Inventory Manager'),
(17, 'IT Specialist', 'Surabaya', 'Noah Walker', '1997-05-17', '2022-05-17', 'Male', '097890123456', 'noah.walker@example.com', '7890123456789012', 'IT Specialist'),
(18, 'HR Manager', 'Bandung', 'Mia Hall', '1998-06-18', '2022-06-18', 'Female', '098901234567', 'mia.hall@example.com', '8901234567890123', 'HR Manager'),
(19, 'Ops Supervisor', 'Jakarta', 'Liam Young', '1999-07-19', '2022-07-19', 'Male', '099012345678', 'liam.young@example.com', '9012345678901234', 'Ops Supervisor'),
(20, 'Quality Control', 'Surabaya', 'Lily Turner', '2000-08-20', '2022-08-20', 'Female', '010123456789', 'lily.turner@example.com', '0123456789012345', 'Quality Control'),
(21, 'Sales Executive', 'Bandung', 'Benjamin King', '2001-09-21', '2022-09-21', 'Male', '011234567890', 'benjamin.king@example.com', '1234567890123456', 'Sales Executive'),
(22, 'Mechanic', 'Jakarta', 'Chloe Rodriguez', '2002-10-22', '2022-10-22', 'Female', '012345678901', 'chloe.rodriguez@example.com', '2345678901234567', 'Mechanic'),
(23, 'Accountant', 'Surabaya', 'Henry Turner', '1997-11-23', '2022-11-23', 'Male', '013456789012', 'henry.turner@example.com', '3456789012345678', 'Accountant'),
(24, 'Marketing Executive', 'Bandung', 'Victoria Collins', '1998-12-24', '2022-12-24', 'Female', '014567890123', 'victoria.collins@example.com', '4567890123456789', 'Marketing Executive'),
(25, 'Customer Service', 'Jakarta', 'Lucas Stewart', '1999-01-25', '2023-01-25', 'Male', '015678901234', 'lucas.stewart@example.com', '5678901234567890', 'Customer Service'),
(26, 'Inventory Manager', 'Surabaya', 'Scarlett Morgan', '2000-02-26', '2023-02-26', 'Female', '016789012345', 'scarlett.morgan@example.com', '6789012345678901', 'Inventory Manager'),
(27, 'IT Specialist', 'Bandung', 'Leo Wood', '2001-03-27', '2023-03-27', 'Male', '017890123456', 'leo.wood@example.com', '7890123456789012', 'IT Specialist'),
(28, 'HR Manager', 'Jakarta', 'Aria Allen', '2002-04-28', '2023-04-28', 'Female', '018901234567', 'aria.allen@example.com', '8901234567890123', 'HR Manager'),
(29, 'Ops Supervisor', 'Surabaya', 'Maxwell Hill', '1998-05-29', '2023-05-29', 'Male', '019012345678', 'maxwell.hill@example.com', '9012345678901234', 'Ops Supervisor'),
(30, 'Quality Control', 'Bandung', 'Penelope Young', '1999-06-30', '2023-06-30', 'Female', '020123456789', 'penelope.young@example.com', '0123456789012345', 'Quality Control'),
(31, 'Sales Executive', 'Yogyakarta', 'Adam Wilson', '1994-07-01', '2023-07-01', 'Male', '021234567891', 'adam.wilson@example.com', '1234567890123456', 'Sales Executive'),
(32, 'Mechanic', 'Yogyakarta', 'Emma Baker', '1995-08-02', '2023-08-02', 'Female', '022345678912', 'emma.baker@example.com', '2345678901234567', 'Mechanic'),
(33, 'Accountant', 'Yogyakarta', 'Jacob Moore', '1989-09-03', '2023-09-03', 'Male', '023456789123', 'jacob.moore@example.com', '3456789012345678', 'Accountant'),
(34, 'Marketing Executive', 'Yogyakarta', 'Olivia Taylor', '1990-10-04', '2023-10-04', 'Female', '024567891234', 'olivia.taylor@example.com', '4567890123456789', 'Marketing Executive'),
(35, 'Customer Service', 'Yogyakarta', 'William Turner', '1991-11-05', '2023-11-05', 'Male', '025678912345', 'william.turner@example.com', '5678901234567890', 'Customer Service'),
(36, 'Inventory Manager', 'Yogyakarta', 'Sophia Walker', '1992-12-06', '2023-12-06', 'Female', '026789123456', 'sophia.walker@example.com', '6789012345678901', 'Inventory Manager');

-- Inserting data into SPESIFIKASI_UTAMA table
INSERT INTO SPESIFIKASI_UTAMA (ID_SPESIFIKASI_UTAMA, JENIS_TRANSMISI, KAPASITAS_TEMPAT_DUDUK, JENIS_BAHAN_BAKAR, KAPASITAS_MESIN, TENAGA, FITUR) VALUES
(1, 'Manual', 5, 'Bensin', 1500, 100, 'Fitur A, Fitur B'),
(2, 'Automatic', 7, 'Diesel', 2000, 150, 'Fitur C, Fitur D'),
(3, 'Automatic', 5, 'Bensin', 1800, 120, 'Fitur E, Fitur F'),
(4, 'Manual', 7, 'Bensin', 2000, 150, 'Fitur G, Fitur H'),
(5, 'Automatic', 5, 'Bensin', 1500, 120, 'Fitur I, Fitur J'),
(6, 'Manual', 7, 'Bensin', 1500, 100, 'Fitur K, Fitur L'),
(7, 'Automatic', 5, 'Bensin', 1500, 120, 'Fitur M, Fitur N'),
(8, 'Automatic', 7, 'Bensin', 1800, 140, 'Fitur O, Fitur P'),
(9, 'Manual', 5, 'Bensin', 1500, 100, 'Fitur Q, Fitur R'),
(10, 'Automatic', 7, 'Bensin', 2000, 160, 'Fitur S, Fitur T');

-- Inserting data into MERK_MOBIL table
INSERT INTO MERK_MOBIL (ID_MERK_MOBIL, ID_SPESIFIKASI_UTAMA, JUMLAH_BEREDAR, NAMA_MOBIL, VERSI, BRAND_MOBIL, JUMLAH) VALUES
	(1, 1, 48995, 'Carry Futura', '1.5 SL415', 'Suzuki', 3),
	(2, 2, 55768, 'Avanza', 'G VVT-I M/T', 'Toyota', 5),
	(3, 3, 44059, 'Xpander', 'Ultimate', 'Mitsubishi', 1),
	(4, 4, 40821, 'Kijang Innova', '2.0 V M/T', 'Toyota', 2),
	(5, 5, 31402, 'Veloz', '1.5 M/T GR', 'Toyota', 1),
    (6, 6, 37744, 'Ertiga', 'GL MT', 'Suzuki', 2),
	(7, 7, 37260, 'Xenia', 'R Deluxe', 'Daihatsu', 3),
	(8, 8, 35667, 'Honda City', 'RS CVT', 'Honda', 2),
	(9, 9, 45432, 'Grand Livina', 'SV M/T', 'Nissan', 1),
	(10, 10, 29293, 'Alphard', '2.5 G AT', 'Toyota', 2);

-- Inserting data into MOBIL_BEKAS table
INSERT INTO MOBIL_BEKAS (PLAT, ID_MERK_MOBIL, ID_PEMILIK, KOTA_CABANG, TAHUN_PRODUKSI, JARAK_TEMPUH, WARNA, HARGA, KUNCI_CADANGAN, GARANSI_PABRIK, TANGGAL_REGISTRASI, BUKU_SERVIS, MASA_BERLAKU_STNK) VALUES
('ABC123', 1, 1, 'Jakarta', 2019, 50000, 'Merah', 200000000, 'Ya', 'Ya', '2022-01-01', 'Ya', '2023-01-01'),
('DEF456', 2, 2, 'Surabaya', 2020, 60000, 'Biru', 250000000, 'Ya', 'Ya', '2022-02-01', 'Ya', '2023-02-01'),
('GHI789', 3, 3, 'Bandung', 2021, 70000, 'Hitam', 300000000, 'Ya', 'Ya', '2022-03-01', 'Ya', '2023-03-01'),
('JKL012', 4, 4, 'Jakarta', 2018, 45000, 'Silver', 180000000, 'Ya', 'Ya', '2022-04-01', 'Ya', '2023-04-01'),
('MNO345', 5, 5, 'Yogyakarta', 2022, 55000, 'Putih', 280000000, 'Ya', 'Ya', '2022-05-01', 'Ya', '2023-05-01'),
('PQR678', 6, 6, 'Bandung', 2017, 80000, 'Hijau', 350000000, 'Ya', 'Ya', '2022-06-01', 'Ya', '2023-06-01'),
('STU901', 7, 7, 'Surabaya', 2023, 10000, 'Kuning', 400000000, 'Ya', 'Ya', '2022-07-01', 'Ya', '2023-07-01'),
('VWX234', 8, 8, 'Surabaya', 2016, 90000, 'Coklat', 320000000, 'Ya', 'Ya', '2022-08-01', 'Ya', '2023-08-01'),
('YZA567', 9, 9, 'Jakarta', 2024, 15000, 'Abu-abu', 420000000, 'Ya', 'Ya', '2022-09-01', 'Ya', '2023-09-01'),
('BCD890', 10, 10, 'Bandung', 2015, 95000, 'Merah Muda', 380000000, 'Ya', 'Ya', '2022-10-01', 'Ya', '2023-10-01'),
('EFG123', 1, 2, 'Surabaya', 2011, 150000, 'Biru Tua', 700000000, 'Ya', 'Ya', '2022-11-01', 'Ya', '2023-11-01'),
('HIJ456', 2, 3, 'Yogyakarta', 2010, 160000, 'Hitam Putih', 750000000, 'Ya', 'Ya', '2022-12-01', 'Ya', '2023-12-01'),
('KLM789', 3, 1, 'Yogyakarta', 2009, 170000, 'Ungu', 800000000, 'Ya', 'Ya', '2023-01-01', 'Ya', '2024-01-01'),
('NOP012', 4, 2, 'Yogyakarta', 2008, 180000, 'Pink', 850000000, 'Ya', 'Ya', '2023-02-01', 'Ya', '2024-02-01'),
('QRS345', 5, 3, 'Jakarta', 2007, 190000, 'Tosca', 900000000, 'Ya', 'Ya', '2023-03-01', 'Ya', '2024-03-01'),
('TUV678', 6, 1, 'Jakarta', 2006, 200000, 'Coklat', 950000000, 'Ya', 'Ya', '2023-04-01', 'Ya', '2024-04-01'),
('WXY901', 7, 2, 'Bandung', 2005, 210000, 'Gold', 1000000000, 'Ya', 'Ya', '2023-05-01', 'Ya', '2024-05-01'),
('ZAB234', 8, 3, 'Bandung', 2004, 220000, 'Silver', 1050000000, 'Ya', 'Ya', '2023-06-01', 'Ya', '2024-06-01'),
('CDE567', 9, 1, 'Bandung', 2003, 230000, 'Biru Langit', 1100000000, 'Ya', 'Ya', '2023-07-01', 'Ya', '2024-07-01'),
('FGH890', 10, 2, 'Jakarta', 2002, 240000, 'Cokelat Muda', 1150000000, 'Ya', 'Ya', '2023-08-01', 'Ya', '2024-08-01'),
('IJK123', 1, 3, 'Surabaya', 2001, 250000, 'Hitam Polos', 1200000000, 'Ya', 'Ya', '2023-09-01', 'Ya', '2024-09-01'),
('LMN456', 2, 1, 'Surabaya', 2000, 260000, 'Silver', 1250000000, 'Ya', 'Ya', '2023-10-01', 'Ya', '2024-10-01'),
('OPQ789', 3, 2, 'Bandung', 1999, 270000, 'Biru', 1300000000, 'Ya', 'Ya', '2023-11-01', 'Ya', '2024-11-01'),
('RST012', 4, 3, 'Yogyakarta', 1998, 280000, 'Hitam', 1350000000, 'Ya', 'Ya', '2023-12-01', 'Ya', '2024-12-01'),
('UVW345', 5, 1, 'Surabaya', 1997, 290000, 'Merah', 1400000000, 'Ya', 'Ya', '2024-01-01', 'Ya', '2025-01-01'),
('XYZ678', 6, 2, 'Jakarta', 1996, 300000, 'Putih', 1450000000, 'Ya', 'Ya', '2024-02-01', 'Ya', '2025-02-01'),
('ABC901', 7, 3, 'Yogyakarta', 1995, 310000, 'Hijau', 1500000000, 'Ya', 'Ya', '2024-03-01', 'Ya', '2025-03-01'),
('DEF234', 8, 1, 'Bandung', 1994, 320000, 'Coklat', 1550000000, 'Ya', 'Ya', '2024-04-01', 'Ya', '2025-04-01'),
('GHI567', 9, 2, 'Yogyakarta', 1993, 330000, 'Kuning', 1600000000, 'Ya', 'Ya', '2024-05-01', 'Ya', '2025-05-01'),
('JKL890', 10, 3, 'Jakarta', 1992, 340000, 'Abu-abu', 1650000000, 'Ya', 'Ya', '2024-06-01', 'Ya', '2025-06-01'),
('MNO123', 1, 1, 'Surabaya', 1991, 350000, 'Merah Muda', 1700000000, 'Ya', 'Ya', '2024-07-01', 'Ya', '2025-07-01'),
('PQR456', 2, 2, 'Yogyakarta', 1990, 360000, 'Biru Tua', 1750000000, 'Ya', 'Ya', '2024-08-01', 'Ya', '2025-08-01'),
('STU789', 3, 3, 'Jakarta', 1989, 370000, 'Hitam Putih', 1800000000, 'Ya', 'Ya', '2024-09-01', 'Ya', '2025-09-01'),
('VWX012', 4, 1, 'Surabaya', 1988, 380000, 'Ungu', 1850000000, 'Ya', 'Ya', '2024-10-01', 'Ya', '2025-10-01'),
('YZA345', 5, 2, 'Bandung', 1987, 390000, 'Pink', 1900000000, 'Ya', 'Ya', '2024-11-01', 'Ya', '2025-11-01'),
('BCD678', 6, 3, 'Yogyakarta', 1986, 400000, 'Tosca', 1950000000, 'Ya', 'Ya', '2024-12-01', 'Ya', '2025-12-01');

-- Inserting data into CERTIFICATION table
INSERT INTO CERTIFICATION (ID_SERTIFIKAT, PLAT, NAMA_SERTIFIKAT, KETERANGAN) VALUES
(1, 'ABC123', 'Sertifikat 1', 'Sertifikat A'),
(2, 'DEF456', 'Sertifikat 2', 'Sertifikat B'),
(3, 'GHI789', 'Sertifikat 3', 'Sertifikat C'),
(4, 'JKL012', 'Sertifikat 4', 'Sertifikat D'),
(5, 'MNO345', 'Sertifikat 5', 'Sertifikat E'),
(6, 'PQR678', 'Sertifikat 6', 'Sertifikat F'),
(7, 'STU901', 'Sertifikat 7', 'Sertifikat G'),
(8, 'VWX234', 'Sertifikat 8', 'Sertifikat H'),
(9, 'YZA567', 'Sertifikat 9', 'Sertifikat I'),
(10, 'BCD890', 'Sertifikat 10', 'Sertifikat J'),
(11, 'EFG123', 'Sertifikat 11', 'Sertifikat K'),
(12, 'HIJ456', 'Sertifikat 12', 'Sertifikat L'),
(13, 'KLM789', 'Sertifikat 13', 'Sertifikat M'),
(14, 'NOP012', 'Sertifikat 14', 'Sertifikat N'),
(15, 'QRS345', 'Sertifikat 15', 'Sertifikat O'),
(16, 'TUV678', 'Sertifikat 16', 'Sertifikat P'),
(17, 'WXY901', 'Sertifikat 17', 'Sertifikat Q'),
(18, 'ZAB234', 'Sertifikat 18', 'Sertifikat R'),
(19, 'CDE567', 'Sertifikat 19', 'Sertifikat S'),
(20, 'FGH890', 'Sertifikat 20', 'Sertifikat T'),
(21, 'IJK123', 'Sertifikat 21', 'Sertifikat U'),
(22, 'LMN456', 'Sertifikat 22', 'Sertifikat V'),
(23, 'OPQ789', 'Sertifikat 23', 'Sertifikat W'),
(24, 'RST012', 'Sertifikat 24', 'Sertifikat X'),
(25, 'UVW345', 'Sertifikat 25', 'Sertifikat Y'),
(26, 'XYZ678', 'Sertifikat 26', 'Sertifikat Z'),
(27, 'ABC901', 'Sertifikat 27', 'Sertifikat AA'),
(28, 'DEF234', 'Sertifikat 28', 'Sertifikat BB'),
(29, 'GHI567', 'Sertifikat 29', 'Sertifikat CC'),
(30, 'JKL890', 'Sertifikat 30', 'Sertifikat DD'),
(31, 'MNO123', 'Sertifikat 31', 'Sertifikat EE'),
(32, 'PQR456', 'Sertifikat 32', 'Sertifikat FF'),
(33, 'STU789', 'Sertifikat 33', 'Sertifikat GG'),
(34, 'VWX012', 'Sertifikat 34', 'Sertifikat HH'),
(35, 'YZA345', 'Sertifikat 35', 'Sertifikat II'),
(36, 'BCD678', 'Sertifikat 36', 'Sertifikat JJ');

-- Inserting data into GARANSI table
INSERT INTO GARANSI (ID_GARANSI, BERLAKU_MULAI, BERLAKU_SAMPAI, DESKRIPSI) VALUES
(1, '2022-01-01', '2024-01-01', 'Garansi A'),
(2, '2022-02-01', '2024-02-01', 'Garansi B'),
(3, '2022-03-01', '2024-03-01', 'Garansi C'),
(4, '2022-04-01', '2024-04-01', 'Garansi D'),
(5, '2022-05-01', '2024-05-01', 'Garansi E'),
(6, '2022-06-01', '2024-06-01', 'Garansi F'),
(7, '2022-07-01', '2024-07-01', 'Garansi G'),
(8, '2022-08-01', '2024-08-01', 'Garansi H'),
(9, '2022-09-01', '2024-09-01', 'Garansi I'),
(10, '2022-10-01', '2024-10-01', 'Garansi J'),
(11, '2022-11-01', '2024-11-01', 'Garansi K'),
(12, '2022-12-01', '2024-12-01', 'Garansi L'),
(13, '2023-01-01', '2025-01-01', 'Garansi M'),
(14, '2023-02-01', '2025-02-01', 'Garansi N'),
(15, '2023-03-01', '2025-03-01', 'Garansi O'),
(16, '2023-04-01', '2025-04-01', 'Garansi P'),
(17, '2023-05-01', '2025-05-01', 'Garansi Q'),
(18, '2023-06-01', '2025-06-01', 'Garansi R'),
(19, '2023-07-01', '2025-07-01', 'Garansi S'),
(20, '2023-08-01', '2025-08-01', 'Garansi T'),
(21, '2023-09-01', '2025-09-01', 'Garansi U'),
(22, '2023-10-01', '2025-10-01', 'Garansi V'),
(23, '2023-11-01', '2025-11-01', 'Garansi W'),
(24, '2023-12-01', '2025-12-01', 'Garansi X'),
(25, '2024-01-01', '2026-01-01', 'Garansi Y'),
(26, '2024-02-01', '2026-02-01', 'Garansi Z'),
(27, '2024-03-01', '2026-03-01', 'Garansi AA'),
(28, '2024-04-01', '2026-04-01', 'Garansi BB'),
(29, '2024-05-01', '2026-05-01', 'Garansi CC'),
(30, '2024-06-01', '2026-06-01', 'Garansi DD'),
(31, '2024-07-01', '2026-07-01', 'Garansi EE'),
(32, '2024-08-01', '2026-08-01', 'Garansi FF'),
(33, '2024-09-01', '2026-09-01', 'Garansi GG'),
(34, '2024-10-01', '2026-10-01', 'Garansi HH'),
(35, '2024-11-01', '2026-11-01', 'Garansi II'),
(36, '2024-12-01', '2026-12-01', 'Garansi JJ');

-- Inserting data into KONTAN table
INSERT INTO KONTAN (ID_PEMBAYARAN, METODE, JUMLAH, NAMA_BANK, NO_REKENING) VALUES
(1, 'Cash', 5000000, NULL, NULL),
(2, 'Cash', 8000000, NULL, NULL),
(3, 'Cash', 10000000, NULL, NULL),
(4, 'Cash', 7000000, NULL, NULL),
(5, 'Cash', 6000000, NULL, NULL),
(6, 'Cash', 9000000, NULL, NULL),
(7, 'Cash', 4000000, NULL, NULL),
(8, 'Cash', 5500000, NULL, NULL),
(9, 'Cash', 7500000, NULL, NULL),
(10, 'Cash', 6500000, NULL, NULL),
(11, 'Cash', 4800000, NULL, NULL),
(12, 'Cash', 5200000, NULL, NULL),
(13, 'Cash', 4200000, NULL, NULL),
(14, 'Cash', 6700000, NULL, NULL),
(15, 'Cash', 5300000, NULL, NULL),
(16, 'Cash', 3800000, NULL, NULL),
(17, 'Cash', 5700000, NULL, NULL),
(18, 'Cash', 4300000, NULL, NULL),
(19, 'Cash', 7800000, NULL, NULL),
(20, 'Cash', 5900000, NULL, NULL),
(21, 'Cash', 4600000, NULL, NULL),
(22, 'Cash', 5100000, NULL, NULL),
(23, 'Cash', 4700000, NULL, NULL),
(24, 'Cash', 7200000, NULL, NULL),
(25, 'Cash', 6400000, NULL, NULL),
(26, 'Cash', 4900000, NULL, NULL),
(27, 'Cash', 6800000, NULL, NULL),
(28, 'Cash', 4500000, NULL, NULL),
(29, 'Cash', 7600000, NULL, NULL),
(30, 'Cash', 6100000, NULL, NULL),
(31, 'Cash', 5700000, NULL, NULL),
(32, 'Cash', 4200000, NULL, NULL),
(33, 'Cash', 6900000, NULL, NULL),
(34, 'Cash', 5500000, NULL, NULL),
(35, 'Cash', 4900000, NULL, NULL),
(36, 'Cash', 7200000, NULL, NULL);

-- Inserting data into CICILAN table
INSERT INTO CICILAN (ID_CICILAN, ID_PELANGGAN, TOTAL_PEMBAYARAN, LAMA_CICILAN, DIMULAI_DARI, CICILAN_PER_BULAN, PROGRESS_PEMBAYARAN, STATUS_CICILAN) VALUES
(1, 1, 5000000, 12, '2022-01-01', 416666.67, 0.5, 'Pending'),
(2, 2, 8000000, 24, '2022-02-01', 333333.33, 0.25, 'Progress'),
(3, 3, 10000000, 10, '2022-03-01', 1000000, 1, 'Completed'),
(4, 4, 7000000, 18, '2022-04-01', 388888.89, 0.75, 'Pending'),
(5, 5, 6000000, 6, '2022-05-01', 1000000, 0.5, 'Progress'),
(6, 6, 9000000, 12, '2022-06-01', 750000, 0.8, 'Completed'),
(7, 7, 4000000, 8, '2022-07-01', 500000, 0.3, 'Pending'),
(8, 8, 10000000, 24, '2022-08-01', 416666.67, 0.9, 'Progress'),
(9, 9, 3000000, 6, '2022-09-01', 500000, 0.7, 'Completed'),
(10, 10, 12000000, 12, '2022-10-01', 1000000, 1, 'Pending'),
(11, 11, 9000000, 24, '2022-11-01', 375000, 0.2, 'Progress'),
(12, 12, 5000000, 10, '2022-12-01', 500000, 0.9, 'Completed'),
(13, 13, 8000000, 18, '2023-01-01', 444444.44, 0.6, 'Pending'),
(14, 14, 6000000, 12, '2023-02-01', 500000, 0.3, 'Progress'),
(15, 15, 10000000, 8, '2023-03-01', 1250000, 0.8, 'Completed'),
(16, 16, 4000000, 24, '2023-04-01', 166666.67, 0.5, 'Pending'),
(17, 17, 9000000, 6, '2023-05-01', 1500000, 0.4, 'Progress'),
(18, 18, 7000000, 12, '2023-06-01', 583333.33, 0.7, 'Completed'),
(19, 19, 10000000, 18, '2023-07-01', 555555.56, 0.9, 'Pending'),
(20, 20, 8000000, 10, '2023-08-01', 800000, 0.2, 'Progress'),
(21, 21, 5000000, 12, '2023-09-01', 416666.67, 0.6, 'Completed'),
(22, 22, 12000000, 24, '2023-10-01', 500000, 0.4, 'Pending'),
(23, 23, 6000000, 6, '2023-11-01', 1000000, 0.7, 'Progress'),
(24, 24, 9000000, 12, '2023-12-01', 750000, 0.3, 'Completed'),
(25, 25, 4000000, 18, '2024-01-01', 222222.22, 0.8, 'Pending'),
(26, 26, 8000000, 8, '2024-02-01', 1000000, 0.5, 'Progress'),
(27, 27, 7000000, 24, '2024-03-01', 291666.67, 0.2, 'Completed'),
(28, 28, 10000000, 10, '2024-04-01', 1000000, 0.6, 'Pending'),
(29, 29, 6000000, 12, '2024-05-01', 500000, 0.9, 'Progress'),
(30, 30, 9000000, 6, '2024-06-01', 1500000, 0.4, 'Completed'),
(31, 1, 5000000, 12, '2024-07-01', 416666.67, 0.5, 'Pending'),
(32, 2, 8000000, 24, '2024-08-01', 333333.33, 0.25, 'Progress'),
(33, 3, 10000000, 10, '2024-09-01', 1000000, 1, 'Completed'),
(34, 4, 7000000, 18, '2024-10-01', 388888.89, 0.75, 'Pending'),
(35, 5, 6000000, 6, '2024-11-01', 1000000, 0.5, 'Progress'),
(36, 6, 9000000, 12, '2024-12-01', 750000, 0.8, 'Completed');

-- Inserting data into PENGIRIMAN table
INSERT INTO PENGIRIMAN (ID_PENGIRIMAN, KOTA_CABANG, ALAMAT_TUJUAN, BIAYA_PENGIRIMAN, ESTIMASI_SAMPAI, TANGGAL_DITERIMA) VALUES
(1, 'Jakarta', 'Jl. Pengiriman No. 1', 500000, '2022-01-01', '2022-01-02'),
(2, 'Surabaya', 'Jl. Pengiriman No. 2', 800000, '2022-02-01', '2022-02-02'),
(3, 'Bandung', 'Jl. Pengiriman No. 3', 1000000, '2022-03-01', '2022-03-02'),
(4, 'Jakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 1), 500000, '2022-04-01', '2022-04-02'),
(5, 'Surabaya', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 2), 800000, '2022-05-01', '2022-05-02'),
(6, 'Bandung', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 3), 1000000, '2022-06-01', '2022-06-02'),
(7, 'Jakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 4), 500000, '2022-07-01', '2022-07-02'),
(8, 'Surabaya', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 5), 800000, '2022-08-01', '2022-08-02'),
(9, 'Bandung', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 6), 1000000, '2022-09-01', '2022-09-02'),
(10, 'Jakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 7), 500000, '2022-10-01', '2022-10-02'),
(11, 'Surabaya', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 8), 800000, '2022-11-01', '2022-11-02'),
(12, 'Bandung', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 9), 1000000, '2022-12-01', '2022-12-02'),
(13, 'Jakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 10), 500000, '2023-01-01', '2023-01-02'),
(14, 'Surabaya', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 11), 800000, '2023-02-01', '2023-02-02'),
(15, 'Bandung', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 12), 1000000, '2023-03-01', '2023-03-02'),
(16, 'Jakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 13), 500000, '2023-04-01', '2023-04-02'),
(17, 'Surabaya', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 14), 800000, '2023-05-01', '2023-05-02'),
(18, 'Bandung', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 15), 1000000, '2023-06-01', '2023-06-02'),
(19, 'Jakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 16), 500000, '2023-07-01', '2023-07-02'),
(20, 'Surabaya', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 17), 800000, '2023-08-01', '2023-08-02'),
(21, 'Bandung', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 18), 1000000, '2023-09-01', '2023-09-02'),
(22, 'Jakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 19), 500000, '2023-10-01', '2023-10-02'),
(23, 'Surabaya', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 20), 800000, '2023-11-01', '2023-11-02'),
(24, 'Bandung', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 21), 1000000, '2023-12-01', '2023-12-02'),
(25, 'Jakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 22), 500000, '2024-01-01', '2024-01-02'),
(26, 'Surabaya', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 23), 800000, '2024-02-01', '2024-02-02'),
(27, 'Bandung', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 24), 1000000, '2024-03-01', '2024-03-02'),
(28, 'Jakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 25), 500000, '2024-04-01', '2024-04-02'),
(29, 'Surabaya', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 26), 800000, '2024-05-01', '2024-05-02'),
(30, 'Bandung', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 27), 1000000, '2024-06-01', '2024-06-02'),
(31, 'Yogyakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 1), 500000, '2024-07-01', '2024-07-02'),
(32, 'Yogyakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 2), 800000, '2024-08-01', '2024-08-02'),
(33, 'Yogyakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 3), 1000000, '2024-09-01', '2024-09-02'),
(34, 'Yogyakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 4), 500000, '2024-10-01', '2024-10-02'),
(35, 'Yogyakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 5), 800000, '2024-11-01', '2024-11-02'),
(36, 'Yogyakarta', (SELECT ALAMAT FROM PELANGGAN WHERE ID_PELANGGAN = 6), 1000000, '2024-12-01', '2024-12-02');

-- Inserting data into TRANSAKSI table
INSERT INTO TRANSAKSI (ID_TRANSAKSI, PLAT, ID_CICILAN, ID_GARANSI, ID_PEMBAYARAN, ID_PENGIRIMAN, KOTA_CABANG, ID_MERK_MOBIL, ID_PELANGGAN, TOTAL, TANGGAL_TRANSAKSI) VALUES
(1001, 'ABC123', 1, 1, 1, 1, 'Jakarta', 1, 1, 200000000, '2022-01-01'),
(1002, 'DEF456', 2, 2, 2, 2, 'Surabaya', 2, 2, 250000000, '2022-02-01'),
(1003, 'GHI789', 3, 3, 3, 3, 'Bandung', 3, 3, 300000000, '2022-03-01'),
(1004, 'JKL012', 4, 4, 4, 4, 'Jakarta', 4, 4, 220000000, '2022-04-01'),
(1005, 'MNO345', 5, 5, 5, 5, 'Surabaya', 5, 5, 240000000, '2022-05-01'),
(1006, 'PQR678', 6, 6, 6, 6, 'Bandung', 1, 6, 280000000, '2022-06-01'),
(1007, 'STU901', 7, 7, 7, 7, 'Jakarta', 2, 7, 260000000, '2022-07-01'),
(1008, 'VWX234', 8, 8, 8, 8, 'Surabaya', 3, 8, 300000000, '2022-08-01'),
(1009, 'YZA567', 9, 9, 9, 9, 'Bandung', 4, 9, 240000000, '2022-09-01'),
(1010, 'BCD890', 10, 10, 10, 10, 'Jakarta', 5, 10, 280000000, '2022-10-01'),
(1011, 'EFG123', 11, 11, 11, 11, 'Surabaya', 6, 11, 320000000, '2022-11-01'),
(1012, 'HIJ456', 12, 12, 12, 12, 'Bandung', 7, 12, 260000000, '2022-12-01'),
(1013, 'KLM789', 13, 13, 13, 13, 'Jakarta', 8, 13, 300000000, '2023-01-01'),
(1014, 'NOP012', 14, 14, 14, 14, 'Surabaya', 9, 14, 340000000, '2023-02-01'),
(1015, 'QRS345', 15, 15, 15, 15, 'Bandung', 10, 15, 280000000, '2023-03-01'),
(1016, 'TUV678', 16, 16, 16, 16, 'Jakarta', 1, 16, 320000000, '2023-04-01'),
(1017, 'WXY901', 17, 17, 17, 17, 'Surabaya', 2, 17, 360000000, '2023-05-01'),
(1018, 'ZAB234', 18, 18, 18, 18, 'Bandung', 3, 18, 300000000, '2023-06-01'),
(1019, 'CDE567', 19, 19, 19, 19, 'Jakarta', 4, 19, 340000000, '2023-07-01'),
(1020, 'FGH890', 20, 20, 20, 20, 'Surabaya', 5, 20, 380000000, '2023-08-01'),
(1021, 'IJK123', 21, 21, 21, 21, 'Bandung', 6, 21, 320000000, '2023-09-01'),
(1022, 'LMN456', 22, 22, 22, 22, 'Jakarta', 7, 22, 360000000, '2023-10-01'),
(1023, 'OPQ789', 23, 23, 23, 23, 'Surabaya', 8, 23, 400000000, '2023-11-01'),
(1024, 'RST012', 24, 24, 24, 24, 'Bandung', 9, 24, 340000000, '2023-12-01'),
(1025, 'UVW345', 25, 25, 25, 25, 'Jakarta', 10, 25, 380000000, '2024-01-01'),
(1026, 'XYZ678', 26, 26, 26, 26, 'Surabaya', 1, 26, 420000000, '2024-02-01'),
(1027, 'ABC901', 27, 27, 27, 27, 'Bandung', 2, 27, 360000000, '2024-03-01'),
(1028, 'DEF234', 28, 28, 28, 28, 'Jakarta', 3, 28, 400000000, '2024-04-01'),
(1029, 'GHI567', 29, 29, 29, 29, 'Surabaya', 4, 29, 440000000, '2024-05-01'),
(1030, 'JKL890', 30, 30, 30, 30, 'Bandung', 5, 30, 380000000, '2024-06-01'),
(1031, 'MNO123', 31, 31, 31, 31, 'Yogyakarta', 1, 1, 200000000, '2024-07-01'),
(1032, 'PQR456', 32, 32, 32, 32, 'Yogyakarta', 2, 2, 250000000, '2024-08-01'),
(1033, 'STU789', 33, 33, 33, 33, 'Yogyakarta', 3, 3, 300000000, '2024-09-01'),
(1034, 'VWX012', 34, 34, 34, 34, 'Yogyakarta', 4, 4, 220000000, '2024-10-01'),
(1035, 'YZA345', 35, 35, 35, 35, 'Yogyakarta', 5, 5, 240000000, '2024-11-01'),
(1036, 'BCD678', 36, 36, 36, 36, 'Yogyakarta', 1, 6, 280000000, '2024-12-01');