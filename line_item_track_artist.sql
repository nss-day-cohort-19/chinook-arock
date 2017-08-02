/*Provide a query that includes the purchased track name AND artist name with each invoice line item.*/

SELECT il.invoicelineid AS "Line Item", t.name AS "Track Name", a.name AS "Artist Name"
FROM invoiceline il, track t, artist a, album al
WHERE il.trackid = t.trackid AND t.albumid = al.albumid AND al.artistid = a.artistid