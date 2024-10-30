create table Departements (
	departementID bigint identity(1,1) not null primary key, 
	DepartementName varchar(50)
	)
create table Projects (
	projectID bigint  identity(1,1) not null primary key,
	ProjectName varchar(50),
	departementID bigint foreign key(departementID) references departements(departementID)
	)
	create table Employee (
	employeeID bigint  identity(1,1) not null primary key,
	Name varchar(50),
	departementID bigint foreign key(departementID) references departements(departementID),
	ManagerID bigint foreign key(ManagerID) references Employee(employeeID)
	)
	create table Salaries (
	employeeID bigint identity(1,1) not null foreign key(employeeID) references Employee(employeeID),
	Salaries decimal(10, 2),
	)