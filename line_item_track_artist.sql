-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT l.InvoiceLineId,
       t.Name TrackName,
       ar.Name ArtistName
FROM InvoiceLine l
INNER JOIN Track t ON l.TrackId = t.TrackId
INNER JOIN Album al ON al.AlbumId = t.AlbumId
INNER JOIN Artist ar ON ar.ArtistId = al.ArtistId;