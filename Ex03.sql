/*
3. Get the top 100 products of the highest selling price (ListPrice) including the following columns:
ProductName (English), ModelName, ProductLine, ProductCategoryName (English), ProductSubcategoryName (English), DealerPrice, ListPrice, Color, Description (English)
*/

SELECT TOP (100)
	EnglishProductName AS ProductName
      , ModelName
      , ProductLine
      , DimProductCategory.EnglishProductCategoryName AS ProductCategoryName
      , DimProductSubcategory.EnglishProductSubcategoryName AS ProductSubcategoryName
      , DealerPrice
      , ListPrice
      , Color
      , EnglishDescription AS Description
FROM DimProduct
	LEFT JOIN DimProductSubcategory ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	LEFT JOIN DimProductCategory ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
ORDER BY ListPrice  DESC

