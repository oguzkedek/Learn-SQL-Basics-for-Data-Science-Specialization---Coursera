-- Question 1 
-- Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT *
FROM TRACKS
WHERE Milliseconds >= 5000000

-- Question 2 
-- Find all the invoices whose total is between $5 and $15 dollars.

SELECT *
FROM INVOICES
WHERE TOTAL BETWEEN 5 AND 15

-- Question 3
-- Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY

SELECT FirstName
	,LastName
	,Company
FROM CUSTOMERS
WHERE STATE IN (
		'RJ'
		,'DF'
		,'AB'
		,'BC'
		,'CA'
		,'WA'
		,'NY'
		)

-- Question 4 
-- Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

SELECT InvoiceID
	,InvoiceDate
FROM Invoices
WHERE CustomerID IN (56,58) AND 
	  TOTAL BETWEEN 1 AND 5

-- Question 5
-- Find all the tracks whose name starts with 'All'.

SELECT * 
FROM Tracks
WHERE Name LIKE 'All%'

-- Question 6 
-- Find all the customer emails that start with "J" and are from gmail.com.

SELECT * 
FROM Customers
WHERE Email LIKE 'J%gmail.com'

-- Question 7
-- Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

SELECT *
FROM Invoices
WHERE BillingCity IN (
		'Brasília'
		,'Edmonton'
		,'Vancouver'
		)
ORDER BY InvoiceId DESC

-- Question 8
-- Show the number of orders placed by each customer 

SELECT COUNT(InvoiceId) AS count_order
FROM Invoices
GROUP BY CustomerId
ORDER BY count_order DESC

-- Question 9
-- Find the albums with 12 or more tracks.

SELECT AlbumId
	,trackid
FROM tracks
GROUP BY AlbumId
HAVING COUNT(DISTINCT (trackid)) >= 12
