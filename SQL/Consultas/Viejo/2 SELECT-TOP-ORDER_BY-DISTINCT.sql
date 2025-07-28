--=SELECT=--
/*Selecciona todos los datos de la tabla Person.Person.
  Resultado esperado: Todos los registros de la tabla Person.Person*/
SELECT * FROM Person.Person
/*Selecciona solo el FirstName y LastName de la tabla Person.Person.
  Resultado esperado: Lista de nombres y apellidos*/
SELECT FirstName, LastName 
FROM Person.Person
 /*Muestra el ID, nivel de organizacion y titulo de trabajo (BusinessEntityID, OrganizationLevel, JobTitle) de la tabla HumanResources.Employee.
  Resultado esperado: Lista de empleados con sus ID, niveles y títulos*/
SELECT BusinessEntityID, OrganizationLevel, JobTitle 
FROM HumanResources.Employee
/*Obtén los clientes (CustomerID) que tienen un pedido en la tabla Sales.SalesOrderHeader.
  Resultado esperado: Lista de IDs de clientes*/
SELECT CustomerID 
FROM Sales.SalesOrderHeader
/*Selecciona el Name y Color de los productos en Production.Product.
  Resultado esperado: Lista de productos con su color*/
SELECT Name, Color 
FROM Production.Product
/*Obtén los TerritoryID y SalesQuota de Sales.SalesPerson.
  Resultado esperado: Lista de IDs de territorio y cuotas de ventas*/
SELECT TerritoryID, SalesQuota
FROM Sales.SalesPerson;

--=TOP=--
/*Selecciona los primeros 10 registros de la tabla Person.Person*/
SELECT TOP 10 *
FROM Person.Person
/*Selecciona los primeros 12 proveedores con su nombre y número de cuenta (Name, AccountNumber) de la tabla Purchasing.Vendor*/
SELECT TOP 12 Name, AccountNumber
FROM Purchasing.Vendor
/*Muestra los primeros 5 registros del ID, nivel de organización y título de trabajo (BusinessEntityID, OrganizationLevel, JobTitle) de la tabla HumanResources.Employee*/
SELECT TOP 5 BusinessEntityID, OrganizationLevel, JobTitle
FROM HumanResources.Employee
/*Muestra los primeros 5 registros de la tabla Production.ProductReview con el nombre del producto, calificación y comentarios (ProductID, Rating, Comments)*/
SELECT TOP 5 ProductID, Rating, Comments
FROM Production.ProductReview

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

--=DISTINCT=--
/*Muestra los diferentes colores disponibles en la tabla Production.Product.
  Resultado esperado: Lista de colores únicos en los productos*/
SELECT DISTINCT Color
FROM Production.Product
/*Selecciona los tamaños únicos de productos en Production.Product.
  Resultado esperado: Lista de tamaños únicos de productos*/
SELECT DISTINCT Size
FROM Production.Product
/*Muestra los diferentes precios de lista (ListPrice) que existen en la tabla Production.Product.
  Resultado esperado: Lista de precios únicos*/
SELECT DISTINCT ListPrice
FROM Production.Product
/*Selecciona los nombres de productos únicos en la tabla Production.Product.
  Resultado esperado: Lista de nombres de productos sin duplicados*/
SELECT DISTINCT Name
FROM Production.Product
/*Obtén las combinaciones únicas de Color y Size en la tabla Production.Product.
  Resultado esperado: Lista de combinaciones de color y tamaño únicos*/
SELECT DISTINCT Color,Size
FROM Production.Product
/*Muestra las categorías únicas de productos (ProductCategoryID) en la tabla Production.Product.
  Resultado esperado: Lista de categorías únicas de productos*/
SELECT DISTINCT ProductSubcategoryID
FROM Production.Product

--=SELECT/TOP/ORDER BY/DISTINCT=--
/*Muestra los primeros 10 registros de direcciones (AddressID, AddressLine1, City) de la tabla Person.Address, ordenados alfabéticamente por ciudad*/
SELECT TOP 10 AddressID, AddressLine1, City
FROM Person.Address
ORDER BY City ASC
/*Selecciona los primeros 20 productos con su nombre y precio (Name, ListPrice) de la tabla Production.Product ordenados por precio descendente*/
SELECT TOP 20 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC
/*Selecciona los primeros 10 registros de la tabla Sales.SalesOrderHeader con los campos OrderDate, TotalDue y Freight, ordenados por TotalDue de mayor a menor*/
SELECT TOP 10 OrderDate, TotalDue, Freight
FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC
/*Selecciona los primeros 7 detalles de órdenes de venta (SalesOrderID, ProductID, OrderQty) de la tabla Sales.SalesOrderDetail ordenados por cantidad pedida de mayor a menor*/
SELECT TOP 7 SalesOrderID, ProductID, OrderQty
FROM Sales.SalesOrderDetail
ORDER BY OrderQty DESC
/*Selecciona los diferentes títulos de trabajo (JobTitle) de la tabla HumanResources.Employee sin duplicados, y los ordena alfabéticamente*/
SELECT DISTINCT JobTitle
FROM HumanResources.Employee
ORDER BY JobTitle ASC
/*Obtén los primeros 5 títulos de trabajo únicos (JobTitle) de la tabla HumanResources.Employee, ordenados alfabéticamente*/
SELECT DISTINCT TOP 5 JobTitle
FROM HumanResources.Employee
ORDER BY JobTitle ASC
/*Selecciona los primeros 10 nombres de productos únicos (Name) de la tabla Production.Product, ordenados alfabéticamente*/
SELECT DISTINCT TOP 10 Name
FROM Production.Product
ORDER BY Name ASC
/*Muestra los primeros 7 nombres únicos de ciudades (City) de la tabla Person.Address, ordenados en orden decendente*/
SELECT DISTINCT TOP 7 City
FROM Person.Address
ORDER BY City DESC
