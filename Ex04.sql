/*
4. Based on the financial table (FactFinace), calculate the total amount of transactions according to each specific 
type of accounting compared between the three regions France, Germany, Australia, including the following columns:  
AccountDescription, France, Germany, Australia

For example, with an account called Accounts Payable, the sum of France is 1498880.17, Germany is 1551664.11, Australia is 716259.95

Note: arrange in A-Z order of AccountDescription
*/

SELECT TOP (1000)
	DimAccount.AccountDescription
      , [OrganizationKey]
      , [DepartmentGroupKey]
      , FactFinance.[AccountKey]
      , [Amount]
FROM FactFinance
	LEFT JOIN DimAccount ON FactFinance.AccountKey = DimAccount.AccountKey
ORDER BY DimAccount.AccountDescription

