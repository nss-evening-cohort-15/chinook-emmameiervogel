-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT e.FirstName, 
       e.LastName, 
       COUNT(c.SupportRepId) 
FROM Employee e
INNER JOIN Customer c ON e.EmployeeId = c.SupportRepId
WHERE e.Title = "Sales Support Agent"
GROUP BY e.EmployeeId;