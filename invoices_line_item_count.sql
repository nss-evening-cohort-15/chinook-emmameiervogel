-- Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT *,
       COUNT(InvoiceLineId)
FROM Invoice i 
INNER JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;