/*Provide a query that shows the most purchased Media Type.*/

SELECT m.name AS "Media Type", SUM(i.total) AS "Total Sales"
FROM mediatype m, track t, invoiceline il, invoice i
WHERE m.mediatypeid = t.mediatypeid AND t.trackid = il.trackid AND il.invoiceid = i.invoiceid
GROUP BY m.mediatypeid
ORDER BY -SUM(i.total)