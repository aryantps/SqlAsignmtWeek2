/*
Display the ProductId of the product with the largest stock level. 
Hint: Use the Scalar-valued function [dbo]. [UfnGetStock]. (Schema(s) involved: Production)
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

SELECT TOP 1 ProductID,dbo.ufnGetStock(ProductID) AS Quantity
FROM Production.ProductInventory
ORDER BY Quantity DESC;