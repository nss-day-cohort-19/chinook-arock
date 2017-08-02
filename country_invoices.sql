/*Provide a query that shows the # of invoices per country. */

SELECT COUNT(i.invoiceid) AS "# of Invoices", i.billingcountry AS "Country"
FROM invoice i
GROUP BY i.billingcountry