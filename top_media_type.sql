-- Provide a query that shows the most purchased Media Type.

SELECT mt.Name MediaType,
       COUNT(mt.MediaTypeId) SalesTotals
FROM Invoice i
INNER JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
INNER JOIN Track t ON t.TrackId = il.TrackId
INNER JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId
GROUP BY MediaType
ORDER BY SalesTotals DESC
LIMIT 1;