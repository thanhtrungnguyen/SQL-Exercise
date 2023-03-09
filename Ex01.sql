/*
1. Get information about United Kingdom customers with Country Region Code of GB including columns: 
FullName, BirthDate, Gender, EmailAddress, Education (English), Phone, AddressLine1, AddressLine2
Note: FullName combines from FirstName, MiddleName, LastName Gender includes F and M, if F shows as Female, M shows as Male
*/

SELECT CONCAT(FirstName,' ', MiddleName,' ',LastName) AS FullName,
      BirthDate,
      CASE WHEN Gender = 'M' THEN 'Male' WHEN Gender = 'F' THEN 'Female' ELSE 'Unknown' END,
      EmailAddress,
      EnglishEducation AS Education,
      Phone,
      AddressLine1,
      AddressLine2
FROM DimCustomer