SELECT empid, firstname, lastname, titleofcourtesy,
case titleofcourtesy
when 'Ms.' then 'female'
when 'Mrs.' then 'female'
when 'Mr.' then 'male'
else 'unknow'
end as gender
FROM HR.Employees;

Select Cust.custid
from Sales.Customers as Cust
Inner join
Sales.Orders as Orders