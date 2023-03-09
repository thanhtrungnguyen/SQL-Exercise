/*
5. Get the latest stock information of all products including the following columns:
ProductKey, ProductName (English), ModelName, ProductCategoryName, ProductSubcategoryName, UnitsBalance, UnitCost
*/

SELECT DimProduct.ProductKey
	, EnglishProductName AS ProductName
	, ModelName
	, DimProductCategory.EnglishProductCategoryName AS ProductCategoryName
	, DimProductSubcategory.EnglishProductSubcategoryName AS ProductSubcategoryName
	, LatestFactProductInventory.UnitsBalance
	, LatestFactProductInventory.UnitCost
FROM DimProduct
	LEFT JOIN DimProductSubcategory ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	LEFT JOIN DimProductCategory ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
	LEFT JOIN (
	SELECT ProductKey, UnitCost, UnitsBalance
	FROM FactProductInventory
	WHERE MovementDate = (SELECT MAX(MovementDate)
	FROM FactProductInventory) 
	) 
	AS LatestFactProductInventory
	ON DimProduct.ProductKey = LatestFactProductInventory.ProductKey
ORDER BY ProductKey
