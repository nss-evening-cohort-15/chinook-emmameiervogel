-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT COUNT(*),
       i.InvoiceId
FROM InvoiceLine l
INNER JOIN Invoice i ON l.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId;