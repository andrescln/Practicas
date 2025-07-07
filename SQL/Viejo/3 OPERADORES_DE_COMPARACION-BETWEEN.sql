--=OPERADORES DE COMPARACION=--
/*	=	Igual a
	>	Mayor que
	<	Menor que
	>=	Mayor o igual que
	<=	Menor o igual que
	<>	No es igual a	*/
/*Muestra los ProductID y ListPrice de productos cuyo precio sea exactamente 3.99 en Production.Product.
  Resultado esperado: Lista de productos con ListPrice igual a 3.99*/
SELECT ProductID, ListPrice 
FROM Production.Product
WHERE ListPrice = 3.99
/*Selecciona los productos cuyo precio de lista sea mayor o igual a 10 en la tabla Production.Product.
  Resultado esperado: Lista de productos con precios iguales o mayores a 10*/
SELECT * 
FROM Production.Product
WHERE ListPrice >= 10
/*Selecciona los productos de la tabla Production.Product que tengan un ListPrice mayor a 50.
  Resultado esperado: Lista de productos con precios superiores a 50*/
SELECT * 
FROM Production.Product 
WHERE ListPrice > 50
/*Encuentra todas las órdenes (SalesOrderID) en Sales.SalesOrderHeader donde TotalDue sea menor igual a 1000.
  Resultado esperado: Lista de órdenes con TotalDue menor igual a 1000*/
SELECT SalesOrderID
FROM Sales.SalesOrderHeader
WHERE TotalDue <= 1000
/*Selecciona los productos cuyo precio de lista no sea igual a 19.99 en la tabla Production.Product.
  Resultado esperado: Lista de productos cuyo precio no sea 19.99*/
SELECT *
FROM Production.Product
WHERE ListPrice <> 19.99
/*Selecciona los territorios en Sales.SalesTerritory con CountryRegionCode igual a "US".
Resultado esperado: Lista de territorios en Estados Unidos*/
SELECT *
FROM Sales.SalesTerritory
WHERE CountryRegionCode = 'US'
/*Selecciona todos los empleados cuyo JobTitle sea "Marketing Specialist" en HumanResources.Employee.
  Resultado esperado: Lista de empleados con título "Marketing Specialist"*/
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle = 'Marketing Specialist'
/*Selecciona todos los empleados cuyo JobTitle sea diferente a "Marketing Specialist" en HumanResources.Employee.
  Resultado esperado: Lista de empleados con título diferente a "Marketing Specialist"*/
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle <> 'Marketing Specialist'
/*Encuentra todos los empleados con HireDate antes del 2010 en HumanResources.Employee.
  Resultado esperado: Lista de empleados contratados antes de 2010*/
SELECT *
FROM HumanResources.Employee
WHERE HireDate < '2010-01-01';

--=BETWEEN=--
/*Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista (ListPrice) esté entre 10 y 50 en Production.Product.
  Resultado esperado: Lista de productos con precios entre 10 y 50*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE ListPrice BETWEEN 10 AND 50
/*Selecciona los productos cuyo precio de lista (ListPrice) esté entre 100 y 500, en la tabla Production.Product.
  Resultado esperado: Lista de productos con precios entre 100 y 500*/
SELECT ProductID, Name 
FROM Production.Product
WHERE ListPrice BETWEEN 100 AND 500
/*Muestra los ProductID, Name y SellStartDate de productos cuyo inicio de venta (SellStartDate) esté entre el 1 de enero de 2012 y el 31 de diciembre de 2012 en Production.Product.
  Resultado esperado: Lista de productos con fechas de inicio de venta dentro del rango especificado*/
SELECT ProductID, Name, SellStartDate 
FROM Production.Product
WHERE SellStartDate BETWEEN '2012-01-01' AND '2012-31-12'
/*Muestra los ProductID y Name de productos cuyo tamaño (Size) esté entre 'M' y 'L' en la tabla Production.Product.
  Resultado esperado: Lista de productos con tamaños entre 'M' y 'L'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE Size BETWEEN 'M' AND 'L'
/*Muestra los ProductID y Name de productos cuyo ProductNumber esté entre 'AW00001' y 'AW10000' en Production.Product.
  Resultado esperado: Lista de productos con ProductNumber entre 'AW00001' y 'AW10000'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE ProductNumber BETWEEN 'AW00001' AND 'AW10000'
