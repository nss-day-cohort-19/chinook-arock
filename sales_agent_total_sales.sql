/*Provide a query that shows total sales made by each sales agent.*/

SELECT (e.firstname || " " || e.lastname) AS "Sales Agent", SUM(i.total) AS "Total Sales"
FROM employee e, invoice i, customer c
WHERE e.employeeid = c.supportrepid AND c.customerid = i.customerid
GROUP BY e.employeeid