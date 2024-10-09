SELECT e.empid, e.FirstName, e.lastname, o.orderdate
FROM HR.Employees e
LEFT JOIN Sales.Orders o
ON e.empid = o.empid
WHERE o.orderdate >= '2008-05-01' OR o.orderdate IS NULL;