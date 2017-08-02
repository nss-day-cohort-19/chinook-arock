/*Provide a query that shows the total sales per country.*/

SELECT i.billingcountry AS "Country", SUM(i.total) AS "Total Sales"
FROM invoice i 
GROUP BY i.billingcountry
