/*
So far I have gone over select, from and where. Now I am going to go over group by.
First I am going to show what happens when you select an attribute along with an aggregate function and do not include
it in the group by clause. For this example, you will get an error stating that freight needs to be part of the group by clause
*/

SELECT empid, YEAR(orderdate) AS orderyear, freight
FROM Sales.Orders
WHERE custid = 71
GROUP BY empid, YEAR(orderdate);

/*
The following code fixes that error or you could just have simply removed freight from the select list if you do not need it. 
*/

SELECT empid, YEAR(orderdate) AS orderyear, freight
FROM Sales.Orders
WHERE custid = 71
GROUP BY empid, freight, YEAR(orderdate);