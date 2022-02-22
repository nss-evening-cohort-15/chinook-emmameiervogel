-- Which country's customers spent the most?

SELECT Country,
       MAX (SalesTotals) 
FROM (
  SELECT BillingCountry Country,
         COUNT(i.InvoiceId) SalesTotals 
  FROM Invoice i
  GROUP BY BillingCountry
  );