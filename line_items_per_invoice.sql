/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.*/

SELECT i.invoiceid AS "Invoice ID", COUNT(il.invoicelineid) AS "Line Items"
FROM invoice i, invoiceline il
WHERE i.invoiceid = il.invoiceid
GROUP BY i.invoiceid