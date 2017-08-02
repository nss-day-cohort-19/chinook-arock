/*Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.*/


SELECT (e.firstname || " " || e.lastname) as "Sales Agent", i.invoiceid as "Invoice ID"
FROM employee e, invoice i, customer c
WHERE c.supportrepid = e.employeeid and c.customerid = i.customerid

