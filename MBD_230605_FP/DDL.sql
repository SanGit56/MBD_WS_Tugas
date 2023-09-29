/*==============================================================*/
/* Table: CABANG                                                */
/*==============================================================*/
create table CABANG
(
   KOTA_CABANG          varchar(30) not null,
   JUMLAH_MOBIL         int not null,
   JUMLAH_KARYAWAN      int not null,
   primary key (KOTA_CABANG)
);

/*==============================================================*/
/* Table: CERTIFICATION                                         */
/*==============================================================*/
create table CERTIFICATION
(
   ID_SERTIFIKAT        int not null,
   PLAT                 varchar(20) not null,
   NAMA_SERTIFIKAT      varchar(50) not null,
   KETERANGAN           varchar(50) not null,
   primary key (ID_SERTIFIKAT)
);

/*==============================================================*/
/* Table: CICILAN                                               */
/*==============================================================*/
create table CICILAN
(
   ID_CICILAN           int not null,
   ID_PELANGGAN         int not null,
   TOTAL_PEMBAYARAN     float not null,
   LAMA_CICILAN         int not null,
   DIMULAI_DARI         date not null,
   CICILAN_PER_BULAN    float not null,
   PROGRESS_PEMBAYARAN  float not null,
   STATUS_CICILAN       varchar(10) not null,
   primary key (ID_CICILAN)
);

/*==============================================================*/
/* Table: GARANSI                                               */
/*==============================================================*/
create table GARANSI
(
   ID_GARANSI           int not null,
   BERLAKU_MULAI        date not null,
   BERLAKU_SAMPAI       date not null,
   DESKRIPSI            varchar(100) not null,
   primary key (ID_GARANSI)
);

/*==============================================================*/
/* Table: JOB_DESK                                              */
/*==============================================================*/
create table JOB_DESK
(
   NAMA_POSISI          varchar(20) not null,
   DESKRIPSI            varchar(100),
   primary key (NAMA_POSISI)
);

/*==============================================================*/
/* Table: KARYAWAN                                              */
/*==============================================================*/
create table KARYAWAN
(
   ID_KARYAWAN          int not null,
   NAMA_POSISI          varchar(20) not null,
   KOTA_CABANG          varchar(30) not null,
   NAMA                 varchar(50) not null,
   TANGGAL_LAHIR        date not null,
   MULAI_BEKERJA        date not null,
   JENIS_KELAMIN        varchar(10) not null,
   NO_TELEPON           varchar(13) not null,
   EMAIL                varchar(50) not null,
   NIK                  char(16) not null,
   POSISI               varchar(20),
   primary key (ID_KARYAWAN)
);

/*==============================================================*/
/* Table: KONTAN                                                */
/*==============================================================*/
create table KONTAN
(
   ID_PEMBAYARAN        int not null,
   METODE               varchar(10) not null,
   JUMLAH               float not null,
   NAMA_BANK            varchar(50),
   NO_REKENING          varchar(20),
   primary key (ID_PEMBAYARAN)
);

/*==============================================================*/
/* Table: MERK_MOBIL                                            */
/*==============================================================*/
create table MERK_MOBIL
(
   ID_MERK_MOBIL        int not null,
   ID_SPESIFIKASI_UTAMA int not null,
   JUMLAH_BEREDAR       int not null,
   NAMA_MOBIL           varchar(30) not null,
   VERSI                varchar(30) not null,
   BRAND_MOBIL          varchar(30) not null,
   JUMLAH               float not null,
   primary key (ID_MERK_MOBIL)
);

/*==============================================================*/
/* Table: MOBIL_BEKAS                                           */
/*==============================================================*/
create table MOBIL_BEKAS
(
   PLAT                 varchar(20) not null,
   ID_MERK_MOBIL        int not null,
   ID_PEMILIK           int not null,
   KOTA_CABANG          varchar(30) not null,
   TAHUN_PRODUKSI       int not null,
   JARAK_TEMPUH         float not null,
   WARNA                varchar(20) not null,
   HARGA                float not null,
   KUNCI_CADANGAN       varchar(5) not null,
   GARANSI_PABRIK       varchar(5) not null,
   TANGGAL_REGISTRASI   date not null,
   BUKU_SERVIS          varchar(5) not null,
   MASA_BERLAKU_STNK    varchar(20) not null,
   primary key (PLAT)
);

/*==============================================================*/
/* Table: PELANGGAN                                             */
/*==============================================================*/
create table PELANGGAN
(
   ID_PELANGGAN         int not null,
   NIK                  char(16),
   NAMA                 varchar(50),
   JENIS_KELAMIN        varchar(10),
   NO_TELEPON           varchar(13),
   ALAMAT               varchar(100),
   EMAIL                varchar(50),
   primary key (ID_PELANGGAN)
);

/*==============================================================*/
/* Table: PEMILIK                                               */
/*==============================================================*/
create table PEMILIK
(
   ID_PEMILIK           int not null,
   NIK                  char(16) not null,
   NAMA                 varchar(50) not null,
   JENIS_KELAMIN        varchar(10) not null,
   NO_TELEPON           varchar(13) not null,
   ALAMAT               varchar(100) not null,
   EMAIL                varchar(50) not null,
   primary key (ID_PEMILIK)
);

/*==============================================================*/
/* Table: PENGIRIMAN                                            */
/*==============================================================*/
create table PENGIRIMAN
(
   ID_PENGIRIMAN        int not null,
   KOTA_CABANG          varchar(30) not null,
   ALAMAT_TUJUAN        varchar(100) not null,
   BIAYA_PENGIRIMAN     float not null,
   ESTIMASI_SAMPAI      date not null,
   TANGGAL_DITERIMA     date not null,
   primary key (ID_PENGIRIMAN)
);

/*==============================================================*/
/* Table: SPESIFIKASI_UTAMA                                     */
/*==============================================================*/
create table SPESIFIKASI_UTAMA
(
   ID_SPESIFIKASI_UTAMA int not null,
   JENIS_TRANSMISI      varchar(10) not null,
   KAPASITAS_TEMPAT_DUDUK int not null,
   JENIS_BAHAN_BAKAR    varchar(20) not null,
   KAPASITAS_MESIN      float not null,
   TENAGA               float not null,
   FITUR                varchar(500) not null,
   primary key (ID_SPESIFIKASI_UTAMA)
);

/*==============================================================*/
/* Table: TRANSAKSI                                             */
/*==============================================================*/
create table TRANSAKSI
(
   ID_TRANSAKSI         int not null,
   PLAT                 varchar(20) not null,
   ID_CICILAN           int,
   ID_GARANSI           int not null,
   ID_PEMBAYARAN        int,
   ID_PENGIRIMAN        int,
   KOTA_CABANG          varchar(30) not null,
   ID_MERK_MOBIL        int not null,
   ID_PELANGGAN         int not null,
   TOTAL                float not null,
   TANGGAL_TRANSAKSI    date not null,
   primary key (ID_TRANSAKSI)
);

alter table CERTIFICATION add constraint FK_RELATIONSHIP_2 foreign key (PLAT)
      references MOBIL_BEKAS (PLAT) on delete restrict on update restrict;

alter table CICILAN add constraint FK_RELATIONSHIP_9 foreign key (ID_PELANGGAN)
      references PELANGGAN (ID_PELANGGAN) on delete restrict on update restrict;

alter table KARYAWAN add constraint FK_RELATIONSHIP_10 foreign key (KOTA_CABANG)
      references CABANG (KOTA_CABANG) on delete restrict on update restrict;

alter table KARYAWAN add constraint FK_RELATIONSHIP_11 foreign key (NAMA_POSISI)
      references JOB_DESK (NAMA_POSISI) on delete restrict on update restrict;

alter table MERK_MOBIL add constraint FK_RELATIONSHIP_3 foreign key (ID_SPESIFIKASI_UTAMA)
      references SPESIFIKASI_UTAMA (ID_SPESIFIKASI_UTAMA) on delete restrict on update restrict;

alter table MOBIL_BEKAS add constraint FK_RELATIONSHIP_1 foreign key (ID_PEMILIK)
      references PEMILIK (ID_PEMILIK) on delete restrict on update restrict;

alter table MOBIL_BEKAS add constraint FK_RELATIONSHIP_5 foreign key (ID_MERK_MOBIL)
      references MERK_MOBIL (ID_MERK_MOBIL) on delete restrict on update restrict;

alter table MOBIL_BEKAS add constraint FK_RELATIONSHIP_8 foreign key (KOTA_CABANG)
      references CABANG (KOTA_CABANG) on delete restrict on update restrict;

alter table PENGIRIMAN add constraint FK_RELATIONSHIP_18 foreign key (KOTA_CABANG)
      references CABANG (KOTA_CABANG) on delete restrict on update restrict;

alter table TRANSAKSI add constraint FK_RELATIONSHIP_12 foreign key (ID_GARANSI)
      references GARANSI (ID_GARANSI) on delete restrict on update restrict;

alter table TRANSAKSI add constraint FK_RELATIONSHIP_15 foreign key (ID_MERK_MOBIL)
      references MERK_MOBIL (ID_MERK_MOBIL) on delete restrict on update restrict;

alter table TRANSAKSI add constraint FK_RELATIONSHIP_16 foreign key (ID_PENGIRIMAN)
      references PENGIRIMAN (ID_PENGIRIMAN) on delete restrict on update restrict;

alter table TRANSAKSI add constraint FK_RELATIONSHIP_19 foreign key (ID_PEMBAYARAN)
      references KONTAN (ID_PEMBAYARAN) on delete restrict on update restrict;

alter table TRANSAKSI add constraint FK_RELATIONSHIP_21 foreign key (ID_CICILAN)
      references CICILAN (ID_CICILAN) on delete restrict on update restrict;

alter table TRANSAKSI add constraint FK_RELATIONSHIP_6 foreign key (KOTA_CABANG)
      references CABANG (KOTA_CABANG) on delete restrict on update restrict;

alter table TRANSAKSI add constraint FK_RELATIONSHIP_7 foreign key (PLAT)
      references MOBIL_BEKAS (PLAT) on delete restrict on update restrict;

alter table TRANSAKSI add constraint FK_RELATIONSHIP_9 foreign key (ID_PELANGGAN)
      references PELANGGAN (ID_PELANGGAN) on delete restrict on update restrict;

CREATE INDEX idx_brand_mobil ON MERK_MOBIL (BRAND_MOBIL);