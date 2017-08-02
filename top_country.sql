/*Which country's customers spent the most?*/

SELECT c.country AS "Country", SUM(i.total) AS "Total Sales"
FROM customer c, invoice i
WHERE c.customerid = i.customerid
GROUP BY c.country