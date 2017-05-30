/*Using the where clause to specify a predicate or logical expression to filter the rows returned
by the FROM phase. In example, we are returning orders shipped from USA*/
select empid, orderid, orderdate, shipcountry
from sales.Orders
where shipcountry like N'USA'