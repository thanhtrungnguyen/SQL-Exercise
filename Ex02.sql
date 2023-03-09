/*
2. Total number of customers by country includes 2 columns: CountryName, TotalCustomer
*/

SELECT DimGeography.EnglishCountryRegionName,
	COUNT(DimGeography.EnglishCountryRegionName) AS TotalCustomer
FROM DimCustomer
	INNER JOIN DimGeography ON DimCustomer.GeographyKey = DimGeography.GeographyKey
GROUP BY DimGeography.EnglishCountryRegionName
ORDER BY DimGeography.EnglishCountryRegionName