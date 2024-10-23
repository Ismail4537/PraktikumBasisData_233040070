alter table HR.employees add nono int
alter table HR.employees alter column nono char
alter table HR.employees drop column nono
update HR.Employees set nono = 1 where region = 'WA'
update HR.Employees set nono = NULL
select * from HR.Employees