/*
8. Get the Internet Sales invoice details of the product whose English Name is "Road-150 Red, 48" including the following columns:
SalesOrderNumber, SalesOrderLineNumber, CustomerName, ProductName, OrderQuantity, UnitPrice, DiscountAmount, SalesAmount, ProductStandardCost, TotalProductCost
*/

SELECT SalesOrderNumber
      , SalesOrderLineNumber
	  , CONCAT(DimCustomer.FirstName,' ', DimCustomer.MiddleName,' ',DimCustomer.LastName) AS CustomerName
	, DimProduct.EnglishProductName AS ProductName
      , OrderQuantity
      , UnitPrice
      , DiscountAmount
      , SalesAmount
FROM FactInternetSales
	LEFT JOIN DimProduct ON FactInternetSales.ProductKey = DimProduct.ProductKey
	LEFT JOIN DimCustomer ON FactInternetSales.CustomerKey = DimCustomer.CustomerKey
WHERE DimProduct.EnglishProductName = 'Road-150 Red, 48'