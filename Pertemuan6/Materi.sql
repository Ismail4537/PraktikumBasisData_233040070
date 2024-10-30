select a.*, b.*
from mahasiswa as a
inner join matakuliah as b on a.id = b.id

select a.*, b.*
from mahasiswa as a
left join matakuliah as b on a.id = b.id

select a.*, b.*
from matakuliah as a
right join mahasiswa as b on a.id = b.id

select a.*, b.*
from mahasiswa as a
full join matakuliah as b on a.id = b.id

select a.*, b.*
from mahasiswa as a
cross join matakuliah as b

select a.*, b.*
from mahasiswa as a
inner join mahasiswa as b on a.matkul_id = b.id

select a.*, b.*
from mahasiswa as a
inner join matakuliah as b on a.matkul_id = b.id

select a.*
from mahasiswa as a

select a.*
from matakuliah as a