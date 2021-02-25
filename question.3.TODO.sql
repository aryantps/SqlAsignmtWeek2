/*
Show the most recent five orders that were purchased from account numbers 
that have spent more than $70,000 with AdventureWorks.
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

WITH BigSpenders AS (
    SELECT CustomerID
    FROM Sales.SalesOrderHeader H
    GROUP BY CustomerID
    HAVING SUM(TotalDue) > 70000
), TopOrders AS (
SELECT H.CustomerID, H.SalesOrderID, H.OrderDate, H.TotalDue, ROW_NUMBER()
    OVER (PARTITION BY H.CustomerID ORDER BY OrderDate DESC) OrderRow
FROM Sales.SalesOrderHeader H
JOIN BigSpenders S
    ON H.CustomerID = S.CustomerID
)

SELECT CustomerID, SalesOrderID, OrderDate, TotalDue
FROM TopOrders
WHERE OrderRow <= 5
ORDER BY CustomerID, OrderRow