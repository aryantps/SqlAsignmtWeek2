/*
Display the FirstName and LastName of records from the Person table where FirstName contains the letters ‘ss’. 
Display an additional column with sequential numbers for each row returned beginning at integer 1. 
(Schema(s) involved: Person)
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

SELECT ROW_NUMBER() over (ORDER BY FirstName) AS RowNumber, FirstName, Lastname
FROM Person.Person
WHERE FirstName LIKE '%ss%'