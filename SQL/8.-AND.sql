/*Muestra el ID, Name y precio de lista cuyos productos tengan un precio de lista sea mayor a 60 y menor a 100*/
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice > 60 AND ListPrice < 100
/*Selecciona los productos cuyo precio de lista sea menor a 100 y tengan un tamaño de 'M'*/
SELECT *
FROM Production.Product
WHERE ListPrice < 100 AND Size = 'M'
/*Selecciona los productos cuyo color no sea rojo y tengan un precio mayor igual a 500*/
SELECT *
FROM Production.Product
WHERE Color <> 'Red' AND ListPrice >= 500
/*Selecciona los empleados que cumplan años en el año 1990 y sean de genero femenino*/
SELECT *
FROM HumanResources.Employee
WHERE YEAR(BirthDate) = 1990 AND Gender = 'F'

