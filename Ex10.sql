/*
10. Get the top 10 resellers with the highest revenue including the following schools:
ResellerName, ResellerKey, TotalQuantity, TotalOrderCost
*/

SELECT TOP (10)
	DimReseller.ResellerName
      , FactResellerSales.ResellerKey
	  , SUM(OrderQuantity) AS TotalQuantity
	  , SUM(TotalProductCost) AS TotalOrderCost
FROM FactResellerSales
	LEFT JOIN DimReseller ON FactResellerSales.ResellerKey = DimReseller.ResellerKey
GROUP BY FactResellerSales.ResellerKey, DimReseller.ResellerName
ORDER BY TotalOrderCost DESC