/*
Now lets look at the having clause which is processed next after the group by clause. We know the group by clause is a row filter
based on attributes selected from the select statement.
The having clause is a group filter that returns true based on a given condition of already grouped columns from the 
previous group by statement. So for example, count(*) > 1 returns more than one row for each group empid and orderyear. So it will
be a shorter result than without having count(*) > 1
*/

SELECT empid, YEAR(orderdate) AS orderyear
FROM Sales.Orders
WHERE custid = 71
GROUP BY empid, YEAR(orderdate)
Having count(*) > 1

/*
Now I am going to go over the Order BY Clause which is just used for presentation purposes of rows, so that is why I am including
it with this review. Order By is last and you just select which attributes you want to order the rows by. Order by also has
keywords called asc and desc. Naturally, if you don't choose either it will automatically output the result as asc anyway.
*/
SELECT empid, YEAR(orderdate) AS orderyear, COUNT(*) AS numorders
FROM Sales.Orders
WHERE custid = 71
GROUP BY empid, YEAR(orderdate)
HAVING COUNT(*) > 1
ORDER BY empid, orderyear desc;