/*Which sales agent made the most in sales over all?*/

SELECT (e.firstname || " " || e.lastname) AS "Top Sales Agent", SUM(i.total) AS "Total Sales"
FROM employee e, invoice i, customer c
WHERE e.employeeid = c.supportrepid AND c.customerid = i.customerid
GROUP BY e.employeeid
ORDER BY -SUM(i.total)
LIMIT 1