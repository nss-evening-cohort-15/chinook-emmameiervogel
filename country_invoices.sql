-- Provide a query that shows the # of invoices per country.

SELECT COUNT(InvoiceId),
       BillingCountry
FROM Invoice
GROUP BY BillingCountry;