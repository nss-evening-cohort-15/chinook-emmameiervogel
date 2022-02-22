-- Provide a query that shows the top 3 best selling artists.

SELECT ar.Name ArtistName,
       COUNT(ar.ArtistId) SalesTotals
FROM Invoice i
INNER JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
INNER JOIN Track t ON t.TrackId = il.TrackId
INNER JOIN Album a ON t.AlbumId = a.AlbumId
INNER JOIN Artist ar ON a.ArtistId = ar.ArtistId
GROUP BY ArtistName
ORDER BY SalesTotals DESC
LIMIT 5;