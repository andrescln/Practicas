/*Muestra el ID, Nombre y precio de los productos cuyo precio en lista este entre 10 y 50*/
SELECT ProductID, Name ,ListPrice
FROM Production.Product
WHERE ListPrice BETWEEN 10 AND 50
/*Selecciona los productos que tengan un peso entre 10 a 50 kilos*/
SELECT * 
FROM Production.Product
WHERE Weight BETWEEN 10 AND 50
/*Selelecciona los empleados que hayan nacido el 16 de enero del año 1969 al 5 de julio del 1985*/
SELECT *
FROM HumanResources.Employee
WHERE BirthDate BETWEEN '1969-01-16' AND '1985-07-05'
/*Selecciona los empleados que fueron contrarados el 25 de febrero del 2006 al 9 junio del 2008*/
SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2006-02-25' AND '2008-06-09'
/*Muentra nombre, segundo nombre y apellido de las personas cuyo segundo nombre comience con la letra A a la C*/
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE MiddleName BETWEEN 'C' AND 'Gz';
