/*
9. Get information 20 Internet Sales invoices with the highest total payable including the following columns: 
CustomerName, SalesOrderNumber, CustomerKey, TotalOrderCost
Note: SalesOrderNumber has multiple SalesOrderLineNumber
*/

SELECT TOP(20)
	CONCAT(DimCustomer.FirstName,' ', DimCustomer.MiddleName,' ',DimCustomer.LastName) AS CustomerName
	  , SalesOrderNumber
	  , FactInternetSales.CustomerKey
      , TotalProductCost AS TotalOrderCost
FROM FactInternetSales
	LEFT JOIN DimProduct ON FactInternetSales.ProductKey = DimProduct.ProductKey
	LEFT JOIN DimCustomer ON FactInternetSales.CustomerKey = DimCustomer.CustomerKey
ORDER BY TotalProductCost DESC