/*Provide a query that shows the top 5 most purchased tracks over all.*/

SELECT t.name AS "Top Tracks", SUM(i.total) AS "Total Sales"
FROM track t, invoice i, invoiceline il
WHERE t.trackid = il.trackid AND il.invoiceid = i.invoiceid 
GROUP BY t.trackid
ORDER BY -SUM(i.total)
LIMIT 5