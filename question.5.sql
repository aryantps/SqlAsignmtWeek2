/*
Write a Procedure supplying name information from the Person.
Person table and accepting a filter for the first name. 
Alter the above Store Procedure to supply Default Values if user does not enter any value.
( Use AdventureWorks)
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

GO
CREATE PROC spEmployeeByName
    @FirstName nvarchar(50)
AS
SELECT p.FirstName,p.LastName, e.JobTitle, e.HireDate
FROM Person.Person p
JOIN HumanResources.Employee e
    ON p. BusinessEntityID = e.BusinessEntityID
WHERE p.FirstName LIKE @FirstName + '%';