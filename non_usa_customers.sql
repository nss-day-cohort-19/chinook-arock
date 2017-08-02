/*Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.*/
SELECT (c.firstname || " " || c.lastname) as "Customer Name", c.customerid as "Customer ID", c.country as "Country"
FROM customer c
WHERE c.country != "USA" 