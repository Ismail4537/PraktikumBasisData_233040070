Select city,count(empid) as empid from HR.Employees where city = 'London' group by city;

Select empid, lastname, firstname from HR.Employees where empid between 4 and 8 order by empid Desc;

Select lastname from HR.Employees where empid IN (1, 4, 9);

Select empid,firstname,lastname from HR.Employees where lastname like '%D%' and empid Between 1 and 8;

Select TOP(4) empid FROM HR.Employees;

SELECT * FROM HR.Employees WHERE empid IN ( SELECT empid FROM Sales.Orders WHERE custid = 1);

Select * FROM HR.Employees;

Select * FROM Sales.Orders Order by custid;
