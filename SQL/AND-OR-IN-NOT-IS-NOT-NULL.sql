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
