/*
4. Based on the financial table (FactFinace), calculate the total amount of transactions according to each specific 
type of accounting compared between the three regions France, Germany, Australia, including the following columns:  
AccountDescription, France, Germany, Australia

For example, with an account called Accounts Payable, the sum of France is 1498880.17, Germany is 1551664.11, Australia is 716259.95

Note: arrange in A-Z order of AccountDescription
*/



SELECT DimAccount.AccountDescription
      , SUM(CASE WHEN DimOrganization.OrganizationName = 'France' THEN FactFinance.Amount END ) AS France
      , SUM(CASE WHEN DimOrganization.OrganizationName = 'Germany' THEN FactFinance.Amount END ) AS Germany
	, SUM(CASE WHEN DimOrganization.OrganizationName = 'Australia' THEN FactFinance.Amount END ) AS Australia
FROM FactFinance
      LEFT JOIN DimAccount ON FactFinance.AccountKey = DimAccount.AccountKey
      LEFT JOIN DimOrganization ON FactFinance.OrganizationKey=DimOrganization.OrganizationKey
GROUP BY DimAccount.AccountDescription
ORDER BY DimAccount.AccountDescription
