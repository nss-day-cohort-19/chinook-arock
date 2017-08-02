/*Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.*/

SELECT COUNT(il.invoicelineid) AS "Line Items in Invoice 37"
FROM invoiceline il
WHERE il.invoiceid = 37