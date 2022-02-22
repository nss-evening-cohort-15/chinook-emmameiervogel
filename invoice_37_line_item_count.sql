-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(*)
FROM InvoiceLine l
INNER JOIN Invoice i ON i.InvoiceId = l.InvoiceId
WHERE i.InvoiceId = 1;