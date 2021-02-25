/*
Display the Name and Color of the Product with the maximum weight. (Schema(s) involved: Production)
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

SELECT Name, Color
FROM Production.Product
WHERE Weight = (SELECT MAX(Weight) 
                FROM Production.Product)