/*Provide a query that includes the purchased track name with each invoice line item.*/

SELECT il.invoicelineid AS "Line Item", t.name AS "Track Name"
FROM invoiceline il, track t
WHERE il.trackid = t.trackid