--=AND=--
--Muestra los ProductID, Name y ListPrice de productos cuyo precio sea mayor a 30 pero menor a 60 en Production.Product.
SELECT ProductID, Name
FROM Production.Product
WHERE ListPrice > 30 AND ListPrice < 60
--Muestra los ProductID y Name de productos cuyo precio de lista (ListPrice) sea menor a 100 y cuyo tamaño sea 'M' en Production.Product.
SELECT ProductID, Name 
FROM Production.Product
WHERE ListPrice < 100 AND Size = 'M'
--Selecciona los productos de la tabla Production.Product cuyo Color no sea 'Red' y que tengan un precio de lista mayor a 50.
SELECT *
FROM Production.Product
WHERE Color <> 'Red' AND ListPrice > 50

--=OR=--
--Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista (ListPrice) sea 49.99 o 19.99 en Production.Product.
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice = 49.99 OR ListPrice = 19.99
--Selecciona los productos cuyo tamaño (Size) sea 'M' o cuyo color (Color) sea 'Blue' en Production.Product.
SELECT * 
FROM Production.Product
WHERE Size = 'M' OR Color = 'Blue'
--Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista sea menor a 10 o mayor a 200 en Production.Product.
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice < 10 OR ListPrice > 200
--Muestra los ProductID y Name de productos cuyo Color no sea 'Black' o cuyo tamaño (Size) sea 'L' en Production.Product.
SELECT ProductID, Name 
FROM Production.Product
WHERE Color <> 'Black' OR Size = 'L'
--Muestra los títulos de trabajo de la tabla HumanResources.Employee que contengan las palabras 'Lead' o 'Specialist':
SELECT JobTitle
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Lead%' OR JobTitle LIKE '%Specialist%'

--=IN=--
--Selecciona los productos cuyos números sean específicos (ProductNumber: 'FR-R92B-44', 'FR-R92B-48', 'HL-U509-R')
SELECT * 
FROM Production.Product
WHERE ProductNumber IN ('FR-R92B-44', 'FR-R92B-48', 'HL-U509-R')
--Muestra los empleados cuyo JobTitle esté en un conjunto específico ('Senior Tool Designer', 'Marketing Specialist', 'Design Engineer')
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle IN ('Senior Tool Designer', 'Marketing Specialist', 'Design Engineer')
--Obtén las direcciones que pertenecen a ciudades específicas ('Seattle', 'Houston', 'Boston')
SELECT *
FROM Person.Address
WHERE City IN ('Seattle', 'Houston', 'Boston')
--Selecciona los detalles de órdenes de venta cuyos ProductID estén en un conjunto de interés (ProductID: 707, 708, 709)
SELECT * 
FROM Sales.SalesOrderDetail
WHERE ProductID IN (707, 708, 709)
--Muestra las órdenes de venta realizadas por clientes específicos (CustomerID: 1, 2, 3)
SELECT * 
FROM Sales.SalesOrderHeader
WHERE CustomerID IN (1, 29994, 24497)
--Filtra los proveedores cuyos nombres estén en un conjunto específico ('Contoso Ltd', 'AdventureWorks Cycles', 'Northwind Traders')
SELECT * 
FROM Purchasing.Vendor
WHERE Name IN ('Contoso Ltd', 'AdventureWorks Cycles', 'Northwind Traders')
--Selecciona las reseñas de productos realizadas en fechas específicas ('2013-18-09', '2013-13-11', '2024-01-01')
SELECT *
FROM Production.ProductReview
WHERE ReviewDate IN ('2013-18-09', '2013-13-11', '2024-01-01')

--=NOT=--
/*Muestra los ProductID y Name de productos cuyo color no sea 'Red' en la tabla Production.Product.
  Resultado esperado: Lista de productos cuyo color no sea 'Red'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE NOT Color = 'Red'
/*Selecciona los productos cuyo tamaño no sea 'M' en Production.Product.
  Resultado esperado: Lista de productos cuyo tamaño no sea 'M'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE NOT Size = 'M' 
/*Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista no sea 9.99 en Production.Product.
  Resultado esperado: Lista de productos con precios de lista diferentes a 9.99*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE NOT ListPrice = 9.99
/*Muestra los productos cuyo precio de lista no sea mayor a 50 en la tabla Production.Product.
  Resultado esperado: Lista de productos con precios de lista no mayores a 50*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE NOT ListPrice > 50

/*AND/OR/NOT/IN*/
/*Selecciona los productos cuyo tamaño (Size) sea 'L' y cuyo precio de lista sea mayor a 50, o que tengan el color 'Red' en Production.Product.
  Resultado esperado: Lista de productos con tamaño 'L' y precio mayor a 50, o con color 'Red'*/
SELECT *
FROM Production.Product
WHERE (Size = 'L' AND ListPrice > 50) 
	OR Color = 'Red'
/*Selecciona los productos de Production.Product que tengan un ListPrice menor a 20 o mayor a 100, y que tengan tamaño distinto de 'S'.
  Resultado esperado: Lista de productos con precios fuera del rango 19-101 y con tamaño IGUAL de 'S'*/
SELECT *
FROM Production.Product 
WHERE (ListPrice < 20 OR ListPrice > 100) 
	AND Size = 'S' /*Explicar la prioridad*/
/*Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista sea mayor a 100 y cuyo color sea 'Black', o cuyo tamaño sea 'S' en Production.Product.
  Resultado esperado: Lista de productos con precio mayor a 100 y color 'Black', o tamaño 'S'*/
SELECT ProductID, Name,ListPrice
FROM Production.Product
WHERE (ListPrice > 100 AND Color = 'Black') 
	OR  Size = 'S'
/*Selecciona los productos de Production.Product cuyo tamaño (Size) sea 'M' o 'L', y cuyo precio de lista sea menor a 75.
  Resultado esperado: Lista de productos con tamaño 'M' o 'L' y precio menor a 75*/
SELECT ProductID, Name 
FROM Production.Product
WHERE (Size = 'M' OR Size = 'L') 
	AND ListPrice < 75
/*Muestra los productos cuyo precio de lista (ListPrice) esté entre 50 y 200, y cuyo tamaño (Size) sea 'S' o 'L' en Production.Product.
  Resultado esperado: Lista de productos con precios entre 50 y 200, y tamaños 'S' o 'L'*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE ListPrice BETWEEN 50 AND 200 
	AND (Size = 'S' OR Size = 'L')
/*Selecciona los productos cuyo tamaño no sea 'L' y cuyo precio de lista sea mayor a 100, o cuyo color sea 'Black' en Production.Product.
  Resultado esperado: Lista de productos con tamaño distinto de 'L' y precio mayor a 100, o productos cuyo color sea 'Black'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE (NOT Size = 'L' AND ListPrice > 100) 
	OR Color = 'Black'
/*Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista no sea 50 y cuyo tamaño sea 'M', o cuyo color sea 'Red' en Production.Product.
  Resultado esperado: Lista de productos con precio diferente de 50 y tamaño 'M', o productos cuyo color sea 'Red'*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE (NOT ListPrice = 50 AND Size = 'M') 
	OR Color = 'Red'
/*Selecciona los productos de la tabla Production.Product cuyo tamaño no sea 'S' y que tengan un precio de lista mayor a 30, o cuyo color sea 'Blue' y tamaño 'L'.
  Resultado esperado: Lista de productos cuyo tamaño no es 'S' y precio mayor a 30, o cuyo color es 'Blue' y tamaño 'L'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE (NOT Size = 'S' AND ListPrice > 30) 
	OR (Color = 'Blue' AND Size = 'L')
/*Muestra los productos cuyo precio de lista no sea 25, y cuyo tamaño sea 'L' o 'M', y cuyo color no sea 'Black'.
  Resultado esperado: Lista de productos con precio distinto de 25, tamaño 'L' o 'M', y color distinto de 'Black'*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE NOT ListPrice = 25 
	AND (Size = 'L' OR Size = 'M') 
	AND NOT Color = 'Black'
/*Selecciona los productos cuyo precio no sea 15, cuyo tamaño no sea 'S' y cuyo color sea 'Red' o 'Blue' en Production.Product.
  Resultado esperado: Lista de productos con precio diferente de 15, tamaño distinto de 'S', y color 'Red' o 'Blue'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE NOT ListPrice = 15 
	AND NOT Size = 'S' 
	AND (Color = 'Red' OR Color = 'Blue' )
/*Selecciona los productos cuyo ProductNumber esté en un conjunto específico ('FR-R92B-44', 'HL-U509-R') 
y que tengan un precio mayor a 1000. Excluye productos con el ProductNumber 'FR-R92B-44'*/
SELECT *
FROM Production.Product
WHERE ProductNumber IN ('FR-R92B-44', 'HL-U509-R') 
	AND ListPrice > 1000
	AND ProductNumber NOT IN ('FR-R92B-44')
/*Muestra los empleados cuyo JobTitle esté en ('Master Scheduler', 'Marketing Specialist') o cuya fecha de contratación sea anterior al 12 de diciembre de 2008,
pero excluye a los empleados con un nivel de organización (OrganizationLevel) de 4*/
SELECT * 
FROM HumanResources.Employee
WHERE (JobTitle IN ('Master Scheduler', 'Marketing Specialist') OR HireDate < '2008-12-12')
	AND OrganizationLevel NOT IN (4)
/*Obtén las órdenes de venta realizadas en fechas específicas ('2024-01-01', '2024-02-01') 
y cuyo TotalDue sea mayor a 5000, pero excluye aquellas realizadas por los clientes con ID 29734 y 29898*/
SELECT *
FROM Sales.SalesOrderHeader
WHERE (OrderDate IN ('2011-31-05', '2011-06-06') AND TotalDue > 5000)
	AND CustomerID NOT IN (29734,29898)

--=IS NULL=--
--Selecciona los productos en Production.Product que no tengan Color especificado.
SELECT * 
FROM Production.Product
WHERE Color IS NULL

/*Selecciona los productos de Production.Product cuyo tamaño (Size) no esté especificado.*/
SELECT * 
FROM Production.Product
WHERE Size IS NULL;

/*Lista a los vendedores en Sales.SalesPerson cuyo TerritoryID sea nulo.*/
SELECT * 
FROM Sales.SalesPerson
WHERE TerritoryID IS NULL;

/*Obtén las direcciones en Person.Address cuya segunda línea (AddressLine2) esté vacía.*/
SELECT * 
FROM Person.Address
WHERE AddressLine2 IS NULL;

/*Muestra las personas en Person.Person sin información de contacto adicional (AdditionalContactInfo).*/
SELECT * 
FROM Person.Person
WHERE AdditionalContactInfo IS NULL;

--=IS NOT NULL=--
--Muestra los clientes en la tabla Sales.Customer cuyo PersonID no sea nulo.
SELECT *
FROM Sales.Customer
WHERE PersonID IS NOT NULL

/*Selecciona los productos en Production.Product cuyo color (Color) sí esté especificado.*/
SELECT * 
FROM Production.Product
WHERE Color IS NOT NULL;

/*Muestra las personas en Person.Person que sí tienen segundo nombre (MiddleName).*/
SELECT * 
FROM Person.Person
WHERE MiddleName IS NOT NULL;

/*Obtén las direcciones en Person.Address que sí tienen segunda línea (AddressLine2).*/
SELECT * 
FROM Person.Address
WHERE AddressLine2 IS NOT NULL;
