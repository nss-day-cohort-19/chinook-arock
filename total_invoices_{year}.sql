/*How many Invoices were there in 2009 and 2011?*/
SELECT count(i.invoiceid) AS "# of Invoices", SUBSTR(i.invoicedate, 0, 5) AS "Year"
FROM invoice i
WHERE SUBSTR(i.invoicedate, 0, 5) = "2009" OR SUBSTR(i.invoicedate, 0, 5) = "2011"
GROUP BY SUBSTR(i.invoicedate, 0, 5)