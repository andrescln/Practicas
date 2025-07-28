--=WHERE=--
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

--=LIKE=--
--comodín o wildcards
% (porcentaje): Representa cero, uno o más caracteres.
Ejemplo: 'a%' encuentra cualquier cadena que comience con "a".

_ (guión bajo): Representa un único carácter.
Ejemplo: 'a_' encuentra cualquier cadena de dos caracteres que comience con "a".

[ ] (corchetes): Representa cualquier carácter dentro de los corchetes.
Ejemplo: '[abc]%' encuentra cualquier cadena que comience con "a", "b" o "c".

[^ ] (acento circunflejo dentro de corchetes): Representa cualquier carácter que no esté dentro de los corchetes.
Ejemplo: '[^abc]%' encuentra cualquier cadena que no comience con "a", "b" o "c".

- (guion en corchetes): Representa un rango de caracteres dentro de los corchetes.
Ejemplo: '[a-z]%' encuentra cualquier cadena que comience con una letra de la "a" a la "z".

--Obtén los empleados en HumanResources.Employee cuyo JobTitle contiene la palabra "Manager"
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Manager%'
--Selecciona los empleados cuyos títulos de trabajo comiencen con 'Marketing'
SELECT *
FROM HumanResources.Employee
WHERE JobTitle like 'Marketing%'
--Muestra el nombre y el apellido de las personas cuyo apellido comienza con la letra 'A':
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'A%'
--Encuentra los productos cuyos nombres terminan con 'Bike':
SELECT *
FROM Production.Product
WHERE Name LIKE '%Bike'
--Busca en la tabla Person.Person los registros en los que el nombre tenga exactamente 5 letras
SELECT FirstName, LastName
FROM Person.Person
WHERE FirstName LIKE '_____'
--Encuentra todos los productos cuyo nombre tenga la palabra 'Touring' en cualquier parte:
SELECT *
FROM Production.Product
WHERE Name LIKE '%Touring%'
--Selecciona los empleados cuyos títulos de trabajo incluyan un número:
SELECT *
FROM HumanResources.Employee
WHERE JobTitle LIKE '%[0-9]%'
--Busca a las personas de la tabla Person.Person cuyos apellidos NO comiencen con vocal:
SELECT *
FROM Person.Person
WHERE LastName LIKE '[^AEIOU]%'
--Encuentra productos cuyos nombres contengan un guion ('-') en cualquier parte:
SELECT *
FROM Production.Product
WHERE Name LIKE '%-%'
--Selecciona las direcciones de la tabla Person.Address que comiencen con un número seguido de cualquier palabra, separadas por un espacio:
SELECT *
FROM Person.Address
WHERE AddressLine1 LIKE '[0-9]% %'
--Encuentra las personas cuyo apellido contenga las letras 'an' (sin importar su posición), pero NO terminen en 'n':
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE '%an%[^n]'
--Selecciona los nombres de empleados cuyos títulos contengan una 'e' exactamente en la segunda posición
SELECT BusinessEntityID, JobTitle
FROM HumanResources.Employee
WHERE JobTitle LIKE '_e%'
--Encuentra en la tabla Person.Person las personas cuyos apellidos contengan exactamente 8 caracteres y no empiecen con una consonante
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE '[^BCDFGHJKLMNÑPQRSTVWXYZ]_______'

--=BETWEEN=--
--Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista (ListPrice) esté entre 10 y 50 en Production.Product.
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE ListPrice BETWEEN 10 AND 50
--Selecciona los productos cuyo precio de lista (ListPrice) esté entre 100 y 500, en la tabla Production.Product.
SELECT ProductID, Name 
FROM Production.Product
WHERE ListPrice BETWEEN 100 AND 500
--Muestra los ProductID, Name y SellStartDate de productos cuyo inicio de venta (SellStartDate) esté entre el 1 de enero de 2012 y el 31 de diciembre de 2012 en Production.Product.
SELECT ProductID, Name, SellStartDate 
FROM Production.Product
WHERE SellStartDate BETWEEN '2012-01-01' AND '2012-31-12'
--Muestra los ProductID y Name de productos cuyo tamaño (Size) esté entre 'M' y 'L' en la tabla Production.Product.
SELECT ProductID, Name 
FROM Production.Product
WHERE Size BETWEEN 'M' AND 'L'
--Muestra los ProductID y Name de productos cuyo ProductNumber esté entre 'LW-1000' y 'LW-3000' en Production.Product.
SELECT ProductID, Name 
FROM Production.Product
WHERE ProductNumber BETWEEN 'LW-1000' AND 'LW-3000'
