/*Provide a query showing the Invoices of customers who are from Brazil. 
The resultant table should show the customer's full name, Invoice ID, 
Date of the invoice and billing country.*/

SELECT (c.firstname || " " || c.lastname) as "Customer Name", i.invoiceid as "Invoice ID", i.invoicedate as "Invoice Date", i.billingcountry as "Country"
From customer c, invoice i
WHERE i.billingcountry = "Brazil"