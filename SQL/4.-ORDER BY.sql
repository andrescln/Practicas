--=ORDER BY=--
/*Selecciona los registros de la tabla Person.Person y ordenalos alfabéticamente por su primer nombre (FirstName)*/
SELECT *
FROM Person.Person
ORDER BY FirstName ASC
/*Selecciona todos los productos de la tabla Production.Product y los ordena en orden descendente por el número de producto (ProductNumber)*/
SELECT *
FROM Production.Product
ORDER BY ProductNumber DESC
/*Selecciona todos los productos de la tabla Production.Product y los ordena en orden descendente por el precio de lista (ListPrice)*/
SELECT * 
FROM Production.Product 
ORDER BY ListPrice DESC
/*Selecciona todos los registros de la tabla Sales.SalesOrderHeader y los ordena por la fecha de orden (OrderDate) en orden descendente*/
SELECT * 
FROM Sales.SalesOrderHeader
ORDER BY OrderDate DESC;
/*Selecciona todos los registros de la tabla HumanResources.Employee y los ordena por su fecha de contratación (HireDate) en orden ascendente*/
SELECT * 
FROM HumanResources.Employee
ORDER BY HireDate ASC;