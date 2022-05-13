
-- Question 1
-- Using a subquery, find the names of all the tracks for the album "Californication".

SELECT Name
FROM Tracks
WHERE AlbumId = (
		SELECT AlbumId
		FROM Albums
		WHERE Title = 'Californication'
		) 
		
-- Question 2
-- Find the total number of invoices for each customer along with the customer's full name, city and email.

SELECT FirstName,
       LastName,
       City,
       Email,
       COUNT(I.CustomerId) AS Invoices
FROM Customers C INNER JOIN Invoices I
ON C.CustomerId = I.CustomerId
GROUP BY C.CustomerId

-- Question 3 
-- What is the song title of trackID 12 from the "For Those About to Rock We Salute You" album? 

SELECT Name
	,ArtistId
	,Title
	,TrackId
FROM Tracks T
	,(
		SELECT *
		FROM Albums
		WHERE Title = 'For Those About To Rock We Salute You'
		) A
WHERE T.AlbumId = A.AlbumId
	AND T.TrackId = 12
	
-- Question 4
-- Retrieve a list with the managers last name, and the last name of the employees who report to him or her.
-- After running the query described above, who are the reports for the manager named Mitchell

SELECT * FROM Employees 
WHERE ReportsTo = (SELECT EmployeeId FROM Employees WHERE LastName = 'Mitchell')

-- Question 5
-- Find the name and ID of the artists who do not have albums. 

SELECT Ar.Name,
       Ar.ArtistId
FROM Artists Ar
LEFT JOIN Albums A
ON Ar.ArtistId = A.ArtistId
WHERE A.AlbumId IS NULL

-- Question 6
-- Use a UNION to create a list of all the employee's and customer's first names and last names ordered by the last name in descending order.

SELECT FirstName,
       LastName
FROM Employees
UNION
SELECT FirstName,
       LastName
FROM Customers
ORDER BY LastName DESC

-- Question 7 
-- See if there are any customers who have a different city listed in their billing city versus their customer city.

SELECT C.FirstName,
       C.LastName,
       C.City AS CustomerCity,
       I.BillingCity
FROM Customers C
INNER JOIN Invoices I
ON C.CustomerId = I.CustomerId
WHERE CustomerCity <> BillingCity

 
