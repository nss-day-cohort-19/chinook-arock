/*Provide a query that shows all Invoices but includes the # of invoice line items.*/

SELECT i.invoiceid AS "Invoice", COUNT(il.invoicelineid) AS "# of Line Items"
FROM invoice i, invoiceline il
WHERE i.invoiceid = il.invoiceid
GROUP BY i.invoiceid