--=SELECT=--
/*Selecciona todos los datos de la tabla Person.Person.
  Resultado esperado: Todos los registros de la tabla Person.Person*/
SELECT * FROM Person.Person
/*Selecciona solo el FirstName y LastName de la tabla Person.Person.
  Resultado esperado: Lista de nombres y apellidos*/
SELECT FirstName, LastName 
FROM Person.Person
 /*Muestra el ID, nivel de organizacion y titulo de trabajo (BusinessEntityID, OrganizationLevel, JobTitle) de la tabla HumanResources.Employee.
  Resultado esperado: Lista de empleados con sus ID, niveles y t�tulos*/
SELECT BusinessEntityID, OrganizationLevel, JobTitle 
FROM HumanResources.Employee
/*Obt�n los clientes (CustomerID) que tienen un pedido en la tabla Sales.SalesOrderHeader.
  Resultado esperado: Lista de IDs de clientes*/
SELECT CustomerID 
FROM Sales.SalesOrderHeader
/*Selecciona el Name y Color de los productos en Production.Product.
  Resultado esperado: Lista de productos con su color*/
SELECT Name, Color 
FROM Production.Product
/*Obt�n los TerritoryID y SalesQuota de Sales.SalesPerson.
  Resultado esperado: Lista de IDs de territorio y cuotas de ventas*/
SELECT TerritoryID, SalesQuota
FROM Sales.SalesPerson;

--=TOP=--
/*Selecciona los primeros 10 registros de la tabla Person.Person*/
SELECT TOP 10 *
FROM Person.Person
/*Selecciona los primeros 12 proveedores con su nombre y n�mero de cuenta (Name, AccountNumber) de la tabla Purchasing.Vendor*/
SELECT TOP 12 Name, AccountNumber
FROM Purchasing.Vendor
/*Muestra los primeros 5 registros del ID, nivel de organizaci�n y t�tulo de trabajo (BusinessEntityID, OrganizationLevel, JobTitle) de la tabla HumanResources.Employee*/
SELECT TOP 5 BusinessEntityID, OrganizationLevel, JobTitle
FROM HumanResources.Employee
/*Muestra los primeros 5 registros de la tabla Production.ProductReview con el nombre del producto, calificaci�n y comentarios (ProductID, Rating, Comments)*/
SELECT TOP 5 ProductID, Rating, Comments
FROM Production.ProductReview

--=ORDER BY=--
/*Selecciona los registros de la tabla Person.Person y ordenalos alfab�ticamente por su primer nombre (FirstName)*/
SELECT *
FROM Person.Person
ORDER BY FirstName ASC
/*Selecciona todos los productos de la tabla Production.Product y los ordena en orden descendente por el n�mero de producto (ProductNumber)*/
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
/*Selecciona todos los registros de la tabla HumanResources.Employee y los ordena por su fecha de contrataci�n (HireDate) en orden ascendente*/
SELECT * 
FROM HumanResources.Employee
ORDER BY HireDate ASC;

--=DISTINCT=--
/*Muestra los diferentes colores disponibles en la tabla Production.Product.
  Resultado esperado: Lista de colores �nicos en los productos*/
SELECT DISTINCT Color
FROM Production.Product
/*Selecciona los tama�os �nicos de productos en Production.Product.
  Resultado esperado: Lista de tama�os �nicos de productos*/
SELECT DISTINCT Size
FROM Production.Product
/*Muestra los diferentes precios de lista (ListPrice) que existen en la tabla Production.Product.
  Resultado esperado: Lista de precios �nicos*/
SELECT DISTINCT ListPrice
FROM Production.Product
/*Selecciona los nombres de productos �nicos en la tabla Production.Product.
  Resultado esperado: Lista de nombres de productos sin duplicados*/
SELECT DISTINCT Name
FROM Production.Product
/*Obt�n las combinaciones �nicas de Color y Size en la tabla Production.Product.
  Resultado esperado: Lista de combinaciones de color y tama�o �nicos*/
SELECT DISTINCT Color,Size
FROM Production.Product
/*Muestra las categor�as �nicas de productos (ProductCategoryID) en la tabla Production.Product.
  Resultado esperado: Lista de categor�as �nicas de productos*/
SELECT DISTINCT ProductSubcategoryID
FROM Production.Product

--=SELECT/TOP/ORDER BY/DISTINCT=--
/*Muestra los primeros 10 registros de direcciones (AddressID, AddressLine1, City) de la tabla Person.Address, ordenados alfab�ticamente por ciudad*/
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
/*Selecciona los primeros 7 detalles de �rdenes de venta (SalesOrderID, ProductID, OrderQty) de la tabla Sales.SalesOrderDetail ordenados por cantidad pedida de mayor a menor*/
SELECT TOP 7 SalesOrderID, ProductID, OrderQty
FROM Sales.SalesOrderDetail
ORDER BY OrderQty DESC
/*Selecciona los diferentes t�tulos de trabajo (JobTitle) de la tabla HumanResources.Employee sin duplicados, y los ordena alfab�ticamente*/
SELECT DISTINCT JobTitle
FROM HumanResources.Employee
ORDER BY JobTitle ASC
/*Obt�n los primeros 5 t�tulos de trabajo �nicos (JobTitle) de la tabla HumanResources.Employee, ordenados alfab�ticamente*/
SELECT DISTINCT TOP 5 JobTitle
FROM HumanResources.Employee
ORDER BY JobTitle ASC
/*Selecciona los primeros 10 nombres de productos �nicos (Name) de la tabla Production.Product, ordenados alfab�ticamente*/
SELECT DISTINCT TOP 10 Name
FROM Production.Product
ORDER BY Name ASC
/*Muestra los primeros 7 nombres �nicos de ciudades (City) de la tabla Person.Address, ordenados en orden decendente*/
SELECT DISTINCT TOP 7 City
FROM Person.Address
ORDER BY City DESC
