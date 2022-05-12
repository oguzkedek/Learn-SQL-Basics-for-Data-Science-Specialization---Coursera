
/*
Question 1
For all of the questions in this quiz, we are using the Chinook database. All of the interactive code blocks have been setup to retrieve data only from this database.
Retrieve all the records from the Employees table.
What is Robert King's mailing address?
*/

SELECT Address
FROM employees
WHERE FirstName = 'Robert' AND LastName='King'

/*
Question 2
Retrieve the FirstName, LastName, Birthdate, Address, City, and State from the Employees table.
Which of the employees listed below has a birthdate of 3-3-1965?
*/

SELECT  FirstName
	,LastName
	,Birthdate
	,Address
	,City
	,State
FROM employees
WHERE Birthdate = '1965-03-03 00:00:00'

/*
Question 3
Retrieve all the columns from the Tracks table, but only return 20 rows.
What is the runtime in milliseconds for the 5th track, entitled "Princess of the Dawn"? 
*/

SELECT *
FROM tracks LIMIT 20

 