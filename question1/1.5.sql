/*
Display Description and MaxQty fields from the SpecialOffer table. Some of the MaxQty values are NULL, 
in this case display the value 0.00 instead. (Schema(s) involved: Sales)
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

SELECT Description, ISNULL(MaxQty, 0.00) AS 'MaxQty'  
FROM Sales.SpecialOffer;