--  How many Invoices were there in 2009 and 2011?

SELECT COUNT(*)
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009'
  OR strftime('%Y', InvoiceDate) = '2011';