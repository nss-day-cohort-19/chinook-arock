/*Provide a query that shows the most purchased track of 2013.*/

SELECT t.name AS "Track Name", SUM(i.total) AS "Sales in 2013"
FROM track t, invoiceline il, invoice i
WHERE t.trackid = il.trackid AND il.invoiceid = i.invoiceid AND SUBSTR(i.invoicedate, 0, 5) = "2013"
GROUP BY t.trackid
ORDER BY -SUM(i.total)