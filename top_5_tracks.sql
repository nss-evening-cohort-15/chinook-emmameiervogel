-- Provide a query that shows the top 5 most purchased tracks over all.


SELECT t.Name TrackName,
       COUNT(il.TrackId) SalesTotals
FROM Invoice i
INNER JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
INNER JOIN Track t ON t.TrackId = il.TrackId
GROUP BY TrackName
ORDER BY SalesTotals DESC
LIMIT 5;