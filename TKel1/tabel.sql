use Pertemuan12;
create table lokasi (
  Id_Lokasi bigint IDENTITY(1,1) primary key,
  NamaLokasi varchar(255) not null
);

create table kategori (
    Id_Kategori bigint IDENTITY(1,1) primary key,
    NamaKategori varchar(255) not null
);

create table sumber(
    Id_Sumber bigint IDENTITY(1,1) primary key,
    NamaSumber varchar(255) not null,
    Nama_Alat varchar(255) not null,
    jumlah bigint not null,
    kontak varchar(255) not null
)

create table alat(
    Id_Alat bigint IDENTITY(1,1) primary key,
    NamaAlat varchar(255) not null,
    JumlahAlat bigint not null,
    Deskripsi text not null,
    TanggalMasuk date not null,
    Id_Sumber bigint not null foreign key (Id_Sumber) references sumber(Id_Sumber) on UPDATE cascade on DELETE cascade,
    Id_Kategori bigint not null foreign key (Id_Kategori) references kategori(Id_Kategori) on UPDATE cascade on DELETE cascade,
    Id_Lokasi bigint not null foreign key (Id_Lokasi) references lokasi(Id_Lokasi) on UPDATE cascade on DELETE cascade
);

CREATE table pengecekan(
    Id_Pengecekan bigint IDENTITY(1,1) primary key,
    status varchar(255) not null CHECK (status IN ('Baik', 'Rusak', 'Perlu Perbaikan')),
    Tanggal_Pengecekan date not null,
    Keterangan text not null,
    Id_Alat bigint not null foreign key (Id_Alat) references alat(Id_Alat) on UPDATE cascade on DELETE cascade
)

create TABLE AdminIventaris (
    Id_Admin bigint IDENTITY(1,1) primary key,
    Username varchar(255) not null,
    Password varchar(255) not null,
    role varchar(255) not null
)