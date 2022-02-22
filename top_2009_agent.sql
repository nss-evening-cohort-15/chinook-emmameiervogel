-- Which sales agent made the most in sales in 2009?

SELECT FirstName,
       LastName,
       MAX (SalesTotals) 
FROM (
  SELECT e.FirstName FirstName,
         e.LastName LastName,
         COUNT(i.InvoiceId) SalesTotals 
  FROM Employee e
  INNER JOIN Customer c ON e.EmployeeId = c.SupportRepId
  INNER JOIN Invoice i ON i.CustomerId = c.CustomerId
  WHERE e.Title = "Sales Support Agent"
    AND strftime('%Y', i.InvoiceDate) = '2009'
  GROUP BY e.EmployeeId
  );