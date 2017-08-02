/*Provide a query that shows the top 3 best selling artists.*/

SELECT a.name AS "Artist", SUM(i.total) AS "Total Sales"
FROM artist a, invoice i, album al, track t, invoiceline il
WHERE a.artistid = al.artistid AND al.albumid = t.albumid AND t.trackid = il.trackid AND il.invoiceid = i.invoiceid
GROUP BY a.artistid
ORDER BY -SUM(i.total)
LIMIT 3