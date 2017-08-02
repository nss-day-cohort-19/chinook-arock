/*Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.*/

SELECT i.total as "Total", (c.firstname || " " || c.lastname) as "Customer Name", i.billingcountry as "Country", (e.firstname || " " || e.lastname) as "Sale Agent"
FROM invoice i, customer c, employee e
WHERE c.customerid = i.customerid AND e.employeeid = c.supportrepid  