-- What are the respective total sales for each of those years?

-- Total for 2009
SELECT SUM(total)
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009';

-- Total for 2011
SELECT SUM(total)
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2011';
