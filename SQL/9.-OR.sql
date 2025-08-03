/*Muestra el ID, nombre y precio de lista cuyo productos tengan un precio de 49.99 o 19.99*/
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice = 49.99 OR ListPrice = 19.99
/*Selecciona los productos cuyo precio de lista sea menor a 10 o mayor a 200*/
SELECT *
FROM Production.Product
WHERE ListPrice < 10 OR ListPrice > 200
/*Selecciona los productos cuyo tamaño sea 'M' o cuyo color sea 'Blue'*/
SELECT * 
FROM Production.Product
WHERE Size = 'M' OR Color = 'Blue'
/*Selecciona los productos coyo color no sea 'Black' o tamaño no sea 'L'*/
SELECT *
FROM Production.Product
WHERE Color <> 'Black' OR Size = 'L'
/*Selecciona los empleados que cumplan años en el año 1990 o 1980*/
SELECT *
FROM HumanResources.Employee
WHERE YEAR(BirthDate) = 1990 OR YEAR(BirthDate) = 1980