Select Cust.custid, Cust.companyname, Ord.orderid, Ord.orderdate
From Sales.Customers as Cust
left outer join
	Sales.Orders as Ord
	on Cust.custid = Ord.custid;