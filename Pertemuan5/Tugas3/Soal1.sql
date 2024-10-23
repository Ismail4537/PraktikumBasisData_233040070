create table jurusan(
id bigINT PRIMARY KEY,
nama_jurusan bigint,
);
create table dosen_wali(
id bigint Primary Key,
nip int,
nama varchar,
tanggal_lahir date,
no_telepon int
);
create table mahasiswa(
id bigint primary key,
npm int,
nama varchar,
tanggal_lahir date,
alamat varchar,
no_hp int,
jurusan_id bigint foreign key(jurusan_id) references jurusan(id),
dosen_wali_id bigint foreign key(dosen_wali_id) references dosen_wali(id)
);
