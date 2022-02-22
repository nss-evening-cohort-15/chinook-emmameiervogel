-- Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName, 
       e.LastName,
       COUNT(i.InvoiceId)
FROM Employee e
INNER JOIN Customer c ON e.EmployeeId = c.SupportRepId
INNER JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.Title = "Sales Support Agent"
GROUP BY e.EmployeeId;