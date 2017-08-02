/*Provide a query showing a unique/distinct list of billing countries from the Invoice table.*/
SELECT DISTINCT i.billingcountry as "Billing Countries"
FROM invoice i