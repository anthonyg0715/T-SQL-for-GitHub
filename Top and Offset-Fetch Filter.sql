/*
Before moving on, let's look at the top filter. It returns a number of rows you choose based on selected attributes and can only
be used in the select statement. So for example, try the following code:
*/
SELECT TOP (5) orderid, orderdate, custid, empid
FROM Sales.Orders
ORDER BY orderdate DESC;

/*
Now let's look at the offset-fetch filter. Offset skips a number of rows and fetch returns the number of rows you want after the
ones skipped. Also offset-fetch can only be used after the order by clause. Finally, you cannot use top and offset-fetch together.
It has to be one or the other.
Based on everything we have done so far it is all done in logical ordering meaning the following, From Where Group By
Having Select Order BY. It is all done in that order when executed, select is only put first for making more sense
rather than having it in that presentation way. 
*/
SELECT orderid, orderdate, custid, empid
FROM Sales.Orders
ORDER BY orderdate, orderid
OFFSET 50 ROWS FETCH NEXT 25 ROWS ONLY;