/*
Select a list of FirstName and LastName for employees where Title is one of Design Engineer, 
Tool Designer or Marketing Assistant. (Schema(s) involved: HumanResources, Person)
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

SELECT FirstName, Lastname 
FROM Person.Person, HumanResources.Employee
WHERE HumanResources.Employee.JobTitle='Tool Designer' 
    OR HumanResources.Employee.JobTitle='Design Engineer' 
    OR HumanResources.Employee.JobTitle='Marketing Assistant';

	 