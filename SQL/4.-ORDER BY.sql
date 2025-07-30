--=ORDER BY=--
/*Selecciona el registro de la tabla de personas y ordenalos alfabéticamente por su primer nombre*/
SELECT *
FROM Person.Person
ORDER BY FirstName ASC
/*Selecciona el ID, tipo de persona, titulo y primer nombre de la tabla de personas y ordenalos por ID del numero menor al mayor*/
SELECT BusinessEntityID, PersonType, Title,FirstName
FROM Person.Person
ORDER BY BusinessEntityID ASC
/*Selecciona nombre y apellidos de las personas y despues ordenalos por nombre y luego por apellido*/
SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName, LastName;
/*Selecciona todos los productos y los ordena en orden descendente por el nombre del producto*/
SELECT *
FROM Production.Product
ORDER BY Name DESC
/*Selecciona el ID, Nombre, numero de producto, color , precio y tamaño de los productos y ordenalos de manera descendente por precio de lista*/
SELECT ProductID, Name, ProductNumber, Color, ListPrice,Size
FROM Production.Product 
ORDER BY ListPrice DESC
/*Selecciona todos los registros de la tabla de empleados y los ordena por su fecha de cumpleaños en orden descendente*/
SELECT * 
FROM HumanResources.Employee
ORDER BY BirthDate DESC
/*Selecciona los titulos de los empleados rodenados de la Z a A*/
SELECT JobTitle
FROM HumanResources.Employee
ORDER BY JobTitle DESC