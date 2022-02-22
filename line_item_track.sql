-- Provide a query that includes the purchased track name with each invoice line item.

SELECT l.InvoiceLineId,
       t.Name
FROM InvoiceLine l
INNER JOIN Track t ON l.TrackId = t.TrackId;