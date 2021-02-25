/*
Display the overall Average of the [CurrencyRate].[AverageRate] values for the 
exchange rate ‘USD’ to ‘GBP’ for the year 2005 i.e. FromCurrencyCode = ‘USD’ and ToCurrencyCode = ‘GBP’. 
Note: The field [CurrencyRate].[AverageRate] is defined as 'Average exchange rate for the day.' 
(Schema(s) involved: Sales)
*/

USE AdventureWorks2008R2  -- to use  AdventureWorks db

SELECT AVG(AverageRate) 
FROM Sales.CurrencyRate
WHERE FromCurrencyCode='USD' 
    AND ToCurrencyCode='GBP'   
    AND (DATEPART(yy, CurrencyRateDate) = 2005);