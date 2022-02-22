-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT e.FirstName EmployeeFirstName, 
       e.LastName EmployeeLastName, 
       i.InvoiceId,
       i.BillingCountry,
       i.Total,
       c.FirstName CustomerFirstName,
       c.LastName CustomerLastName
FROM Employee e
INNER JOIN Customer c ON e.EmployeeId = c.SupportRepId
INNER JOIN Invoice i ON i.CustomerId = c.CustomerId
WHERE e.Title = "Sales Support Agent";