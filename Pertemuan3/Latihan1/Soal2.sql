Select Cust.custid, count(Orders.orderid) as numorders, sum(Ordet.qty) as totalqty
from Sales.Customers as Cust
join
	Sales.Orders as Orders
	on Cust.custid = Orders.custid
join
	Sales.OrderDetails as Ordet
	on Orders.orderid = Ordet.orderid
where cust.country = 'USA'
Group By Cust.custid
Order By Cust.custid;