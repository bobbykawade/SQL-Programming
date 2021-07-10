WITH ORDER_CUSTOMERS_CTE(CustomerId) AS
(SELECT Customers.Id from Customers INNER JOIN Orders
WHERE Customers.Id = Orders.CustomerId)

SELECT Name as Customers from Customers c
where c.Id NOT IN (SELECT CustomerId from ORDER_CUSTOMERS_CTE)