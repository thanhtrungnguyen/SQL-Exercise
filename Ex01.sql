/*
1. Get information about United Kingdom customers with Country Region Code of GB including columns: 
FullName, BirthDate, Gender, EmailAddress, Education (English), Phone, AddressLine1, AddressLine2
Note: FullName combines from FirstName, MiddleName, LastName Gender includes F and M, if F shows as Female, M shows as Male
Content: CONCAT(), ALIAS, Trinitarian operator, Join, Where
*/
SELECT TOP (1000)
	[CustomerKey]
      , [GeographyKey]
      , [CustomerAlternateKey]
      , [Title]
      , [FirstName]
      , [MiddleName]
      , [LastName]
      , [NameStyle]
      , [BirthDate]
      , [MaritalStatus]
      , [Suffix]
      , [Gender]
      , [EmailAddress]
      , [YearlyIncome]
      , [TotalChildren]
      , [NumberChildrenAtHome]
      , [EnglishEducation]
      , [SpanishEducation]
      , [FrenchEducation]
      , [EnglishOccupation]
      , [SpanishOccupation]
      , [FrenchOccupation]
      , [HouseOwnerFlag]
      , [NumberCarsOwned]
      , [AddressLine1]
      , [AddressLine2]
      , [Phone]
      , [DateFirstPurchase]
      , [CommuteDistance]
FROM [AdventureWorksDW2019].[dbo].[DimCustomer]