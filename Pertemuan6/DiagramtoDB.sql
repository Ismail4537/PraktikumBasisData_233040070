create table Departements (
	departementID bigint identity(1,1) not null primary key, 
	DepartementName varchar(50)
	)
	create table Projects (
	projectID bigint  identity(1,1) not null primary key,
	ProjectName varchar(50),
	departementID bigint null foreign key(departementID) references departements(departementID) on update cascade
	)
	create table Employee (
	employeeID bigint  identity(1,1) not null primary key,
	EmployeeName varchar(50),
	departementID bigint null foreign key(departementID) references departements(departementID) on update cascade,
	ManagerID bigint null foreign key(ManagerID) references Employee(employeeID)
	)
	create table Salaries (
	employeeID bigint null foreign key(employeeID) references Employee(employeeID)on delete cascade,
	Salaries decimal(10, 2)
	)