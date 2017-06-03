/*
So far, I have gone over the basics of how T-SQL code is processed but now let's look at something a little more fun called CASE
EXPRESSIONS. It is similar to how we do switch statements in regular programming as a way of understanding how it works. Case
Expressions are scalar expressions that returns a value based on its conditional logic. There are two types of 
case expressions, case and searched form. Case is just used for simple comparison. So for example:
*/
SELECT productid, productname, categoryid,
CASE categoryid
WHEN 1 THEN 'Beverages'
WHEN 2 THEN 'Condiments'
WHEN 3 THEN 'Confections'
WHEN 4 THEN 'Dairy Products'
WHEN 5 THEN 'Grains/Cereals'
WHEN 6 THEN 'Meat/Poultry'
WHEN 7 THEN 'Produce'
WHEN 8 THEN 'Seafood'
ELSE 'Unknown Category'
END AS categoryname
FROM Production.Products;
/*
Thinking of this as a switch statement as I said before, we have a case or the switch categoryid. Then we say when 1 which is like
saying case 1 and so on and the then is just like what you would do or print out after declaring that certain case like in a
switch statement. Finally, just as a switch statement we have a default case where here we just say else and then do something.
*/

/*
Now let look at the second form which is searched form and it just as easy as case except you can specify exactly what you are 
looking for making it more flexible. Here is a following piece of code for how the searched form looks like.
*/

SELECT orderid, custid, val,
CASE
WHEN val < 1000.00 THEN 'Less than 1000'
WHEN val BETWEEN 1000.00 AND 3000.00 THEN 'Between 1000 and 3000'
WHEN val > 3000.00 THEN 'More than 3000'
ELSE 'Unknown'
END AS valuecategory
FROM Sales.OrderValues;
/*
I forgot to mention the end as <name> is just assigning a column name for the case
*/