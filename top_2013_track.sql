-- Provide a query that shows the most purchased track of 2013.

SELECT TrackName,
       MAX (SalesTotals) 
FROM (
  SELECT t.Name TrackName,
         COUNT(il.TrackId) SalesTotals 
  FROM Invoice i
  INNER JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
  INNER JOIN Track t ON t.TrackId = il.TrackId
  WHERE strftime('%Y', i.InvoiceDate) = '2013'
  GROUP BY TrackName
  );