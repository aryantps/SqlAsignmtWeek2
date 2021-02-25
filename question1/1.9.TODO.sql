/*
Display the managerial hierarchy from Ruth Ellerbrock (person type – EM) up to CEO Ken Sanchez. 
Hint: use [uspGetEmployeeManagers] (Schema(s) involved: [Person], [HumanResources])
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

--EXEC dbo.uspGetEmployeeManagers @BusinessEntityID=48
SELECT  Person.Person.BusinessEntityID, Person.Person.FirstName, HumanResources.Employee.JobTitle,Person.Person.PersonType
FROM Person.Person,HumanResources.Employee
WHERE (SELECT *
        FROM Person.Person
        WHERE FirstName = 'Ruth' AND PersonType = 'EM')