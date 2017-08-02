/*Provide a query showing only the Employees who are Sales Agents.*/

Select (e.firstname || " " || e.lastname) as "Sales Agents"
FROM employee e
Where e.title = "Sales Support Agent"