/*
Select both the FirstName and LastName of records from the Person table where the 
FirstName begins with the letter ‘B’. (Schema(s) involved: Person)
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

SELECT FirstName, Lastname 
FROM Person.Person
WHERE FirstName LIKE 'B%';