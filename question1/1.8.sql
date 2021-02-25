/*
Sales people receive various commission rates that belong to 1 of 4 bands. (Schema(s) involved: Sales)
CommissionPct   Commission Band
0.00            Band 0
Up To 1%        Band 1
Up To 1.5%      Band 2
Greater 1.5%    Band 3

Display the [SalesPersonID] with an additional column entitled ‘Commission Band’ 
indicating the appropriate band as above.
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

SELECT BusinessEntityID AS SalesPersonID, CommissionPct, 'Commission Band'= 
CASE
    WHEN CommissionPct = 0 THEN 'Band 0'
    WHEN CommissionPct > 0 AND CommissionPct <= 0.01 THEN 'Band 1'
    WHEN CommissionPct > 0.01 AND CommissionPct <= 0.015 THEN 'Band 2'
    WHEN CommissionPct > 0.015 THEN 'Band 3'
END 
FROM Sales.SalesPerson
ORDER BY CommissionPct;