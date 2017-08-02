/*Which sales agent made the most in sales in 2009?*/

SELECT (e.firstname || " " || e.lastname) AS "Top Seller in 2009", SUM(i.total) AS "Amount"
FROM employee e, invoice i, customer c
WHERE e.employeeid = c.supportrepid AND c.customerid = i.customerid AND SUBSTR(i.invoicedate, 0, 5) = "2009"
GROUP BY e.employeeid
ORDER BY -SUM(i.total)
LIMIT 1