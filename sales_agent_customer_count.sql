/*Provide a query that shows the count of customers assigned to each sales agent.*/

SELECT (e.firstname || " " || e.lastname) AS "Sales Agent", COUNT(c.customerid) AS "# of Customers"
FROM employee e, customer c
WHERE e.employeeid = c.supportrepid
GROUP BY e.employeeid