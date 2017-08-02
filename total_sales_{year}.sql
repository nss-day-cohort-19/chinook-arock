/*What are the respective total sales for each of those years?*/

SELECT SUM(i.total) AS "# of Invoices", SUBSTR(i.invoicedate, 0, 5) AS "Year"
FROM invoice i
WHERE SUBSTR(i.invoicedate, 0, 5) = "2009" OR SUBSTR(i.invoicedate, 0, 5) = "2011"
GROUP BY SUBSTR(i.invoicedate, 0, 5)