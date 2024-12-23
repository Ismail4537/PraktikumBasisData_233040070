create table Customers (
	CusID bigint identity(1,1) not null primary key,
	Name varchar(255),
	Address varchar(255),
	Email varchar(255),
	PhoneNum Varchar(255)
);
create table Employees (
	EmpID bigint identity(1,1) not null primary key,
	Name varchar(255),
	Address varchar(255),
	Email varchar(255),
	PhoneNum Varchar(255),
	BirthDate date,
	HireDate date,
	ManagerID bigint foreign key(ManagerID) references Employees(EmpID),
	Status bit
);
create table Categories (
	CategoryID bigint identity(1,1) not null primary key,
	CategoryName varchar(255)
);
create table Suppliers (
	SupID bigint identity(1,1) not null primary key,
	CompanyName varchar(255),
	Address varchar(255),
	ContactName varchar(255),
	PhoneNum Varchar(255)
);
create table Books (
	BookID bigint identity(1,1) not null primary key,
	Title varchar(255),
	Writer varchar(255),
	Publisher varchar(255),
	PublishDate date,
	Description varchar(255),
	SuppliersSupID bigint foreign key(SuppliersSupID) references Suppliers(SupID) on update cascade on delete cascade,
	CategoriesCategoryID bigint foreign key(CategoriesCategoryID) references Categories(CategoryID) on update cascade on delete cascade
);
create table Borrows (
	BorrowID bigint identity(1,1) not null primary key,
	BorrowDate date,
	DueDate date,
	AdminsEmpID bigint null foreign key(AdminsEmpID) references Employees(EmpID) on update cascade,
	CustomersCusID bigint not null foreign key(CustomersCusID) references Customers(CusID) on delete cascade on update cascade
);
create table Returns (
	ReturnID bigint identity(1,1) not null primary key,
	ReturnDate date,
	BorrowsBorrowID bigint not null foreign key(BorrowsBorrowID) references Borrows(BorrowID) on delete cascade on update cascade
);
create table BorrowDetails (
	BorrowsBorrowID bigint not null foreign key(BorrowsBorrowID) references Borrows(BorrowID) on delete cascade on update cascade,
	BooksBookID bigint not null foreign key(BooksBookID) references Books(BookID) on delete cascade on update cascade
);