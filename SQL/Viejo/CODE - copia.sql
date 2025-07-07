USE AdventureWorks2022
--=SELECT=--


--=TOP=--

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

--=DISTINCT=--
--=LIKE=--
--=IN=--
--=ORDER BY=--
--=NULL=--
--=IS NULL=--
--=IS NOT NULL=--
--=INNER JOIN=--
--=LEFT OUTER JOIN=--
--=RIGHT OUTER JOIN=--
--=FULL OUTER JOIN=--
--CROSS JOIN==--
--=UNION=--
--=UNION ALL=--
--=CASE=--
--=COALESCE=--
--=ISNULL=--
--=GROUP BY=--
--=HAVING=--
--=OVER=--
--=ROW_NUMBER=--
--=RANK=--
--=DENSE_RANK=--
--=Subquery=--
--=Subqueries Correlacionados=--
--=Tablas Derivadas=--
--=CTE=--
--=TABLAS TEMPORALES=--
--==--

--=MAX=--
--=MIN=--
--=SUM=--
--=AVG=--
--=COUNT=--

--=AND=--
--=OR=--
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


--=NOT=--


/*AND*/
/*Muestra los ProductID, Name y ListPrice de productos cuyo precio sea mayor a 30 pero menor a 60 en Production.Product.
  Resultado esperado: Lista de productos con precios entre 31 y 59, exclusivamente*/
SELECT ProductID, Name
FROM Production.Product
WHERE ListPrice > 30 AND ListPrice < 60
/*Muestra los ProductID y Name de productos cuyo precio de lista (ListPrice) sea menor a 100 y cuyo tamaño sea 'M' en Production.Product.
  Resultado esperado: Lista de productos con precio de lista menor a 100 y tamaño 'M'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE ListPrice < 100 AND Size = 'M'
/*Selecciona los productos de la tabla Production.Product cuyo Color no sea 'Red' y que tengan un precio de lista mayor a 50.
  Resultado esperado: Lista de productos con un Color diferente de 'Red' y precios mayores a 50*/
SELECT *
FROM Production.Product
WHERE Color <> 'Red' AND ListPrice > 50
OR
/*OR*/
/*Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista (ListPrice) sea 49.99 o 19.99 en Production.Product.
  Resultado esperado: Lista de productos con precios iguales a 49.99 o 19.99*/
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice = 49.99 OR ListPrice = 19.99
/*Selecciona los productos cuyo tamaño (Size) sea 'M' o cuyo color (Color) sea 'Blue' en Production.Product.
  Resultado esperado: Lista de productos con tamaño 'M' o color 'Blue'*/
SELECT * 
FROM Production.Product
WHERE Size = 'M' OR Color = 'Blue'
/*Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista sea menor a 10 o mayor a 200 en Production.Product.
  Resultado esperado: Lista de productos con precios menores a 10 o mayores a 200*/
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice < 10 OR ListPrice > 200
/*Muestra los ProductID y Name de productos cuyo Color no sea 'Black' o cuyo tamaño (Size) sea 'L' en Production.Product.
  Resultado esperado: Lista de productos que no tienen el Color 'Black' o cuyo tamaño es 'L'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE Color <> 'Black' OR Size = 'L'
NOT
/*NOT*/
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
AND OR NOT
/*AND OR*/
/*Selecciona los productos cuyo tamaño (Size) sea 'L' y cuyo precio de lista sea mayor a 50, o que tengan el color 'Red' en Production.Product.
  Resultado esperado: Lista de productos con tamaño 'L' y precio mayor a 50, o con color 'Red'*/
SELECT *
FROM Production.Product
WHERE (Size = 'L' AND ListPrice > 50) OR Color = 'Red'
/*Selecciona los productos de Production.Product que tengan un ListPrice menor a 20 o mayor a 100, y que tengan tamaño distinto de 'S'.
  Resultado esperado: Lista de productos con precios fuera del rango 19-101 y con tamaño IGUAL de 'S'*/
SELECT *
FROM Production.Product 
WHERE (ListPrice < 20 OR ListPrice > 100) AND Size = 'S' /*Explicar la prioridad*/
/*Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista sea mayor a 100 y cuyo color sea 'Black', o cuyo tamaño sea 'S' en Production.Product.
  Resultado esperado: Lista de productos con precio mayor a 100 y color 'Black', o tamaño 'S'*/
SELECT ProductID, Name,ListPrice
FROM Production.Product
WHERE (ListPrice > 100 AND Color = 'Black') OR  Size = 'S'
/*Selecciona los productos de Production.Product cuyo tamaño (Size) sea 'M' o 'L', y cuyo precio de lista sea menor a 75.
  Resultado esperado: Lista de productos con tamaño 'M' o 'L' y precio menor a 75*/
SELECT ProductID, Name 
FROM Production.Product
WHERE (Size = 'M' OR Size = 'L') AND ListPrice < 75
/*Muestra los productos cuyo precio de lista (ListPrice) esté entre 50 y 200, y cuyo tamaño (Size) sea 'S' o 'L' en Production.Product.
  Resultado esperado: Lista de productos con precios entre 50 y 200, y tamaños 'S' o 'L'*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE ListPrice BETWEEN 50 AND 200 AND (Size = 'S' OR Size = 'L')
/*Selecciona los productos cuyo tamaño no sea 'L' y cuyo precio de lista sea mayor a 100, o cuyo color sea 'Black' en Production.Product.
  Resultado esperado: Lista de productos con tamaño distinto de 'L' y precio mayor a 100, o productos cuyo color sea 'Black'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE (NOT Size = 'L' AND ListPrice > 100) OR Color = 'Black'

/*Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista no sea 50 y cuyo tamaño sea 'M', o cuyo color sea 'Red' en Production.Product.
  Resultado esperado: Lista de productos con precio diferente de 50 y tamaño 'M', o productos cuyo color sea 'Red'*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE (NOT ListPrice = 50 AND Size = 'M') OR Color = 'Red'

/*Selecciona los productos de la tabla Production.Product cuyo tamaño no sea 'S' y que tengan un precio de lista mayor a 30, o cuyo color sea 'Blue' y tamaño 'L'.
  Resultado esperado: Lista de productos cuyo tamaño no es 'S' y precio mayor a 30, o cuyo color es 'Blue' y tamaño 'L'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE (NOT Size = 'S' AND ListPrice > 30) OR (Color = 'Blue' AND Size = 'L')

/*Muestra los productos cuyo precio de lista no sea 25, y cuyo tamaño sea 'L' o 'M', y cuyo color no sea 'Black'.
  Resultado esperado: Lista de productos con precio distinto de 25, tamaño 'L' o 'M', y color distinto de 'Black'*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE NOT ListPrice = 25 AND (Size = 'L' OR Size = 'M') AND NOT Color = 'Black'

/*Selecciona los productos cuyo precio no sea 15, cuyo tamaño no sea 'S' y cuyo color sea 'Red' o 'Blue' en Production.Product.
  Resultado esperado: Lista de productos con precio diferente de 15, tamaño distinto de 'S', y color 'Red' o 'Blue'*/
SELECT ProductID, Name 
FROM Production.Product
WHERE NOT ListPrice = 15 AND NOT Size = 'S' AND (Color = 'Red' OR Color = 'Blue' )
DISTINCT
/*DISTINCT*/
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
