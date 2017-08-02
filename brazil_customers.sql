/*Provide a query only showing the Customers from Brazil.*/
SELECT (c.firstname || " " || c.lastname) as "Customer Name", c.customerid as "Customer ID", c.country as "Country"
FROM customer c
Where c.country = "Brazil"