SELECT e.empid, e.FirstName, e.lastname, o.orderdate
FROM HR.Employees e
LEFT JOIN Sales.Orders o
ON e.empid = o.empid
WHERE o.orderdate >= '2016-05-01' AND o.orderid IS NULL;