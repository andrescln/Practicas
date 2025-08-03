--=IS NULL=--
--Selecciona los productos en Production.Product que no tengan Color especificado.
SELECT * 
FROM Production.Product
WHERE Color IS NULL

/*Selecciona los productos de Production.Product cuyo tama�o (Size) no est� especificado.*/
SELECT * 
FROM Production.Product
WHERE Size IS NULL;

/*Lista a los vendedores en Sales.SalesPerson cuyo TerritoryID sea nulo.*/
SELECT * 
FROM Sales.SalesPerson
WHERE TerritoryID IS NULL;

/*Obt�n las direcciones en Person.Address cuya segunda l�nea (AddressLine2) est� vac�a.*/
SELECT * 
FROM Person.Address
WHERE AddressLine2 IS NULL;

/*Muestra las personas en Person.Person sin informaci�n de contacto adicional (AdditionalContactInfo).*/
SELECT * 
FROM Person.Person
WHERE AdditionalContactInfo IS NULL;

--=IS NOT NULL=--
--Muestra los clientes en la tabla Sales.Customer cuyo PersonID no sea nulo.
SELECT *
FROM Sales.Customer
WHERE PersonID IS NOT NULL

/*Selecciona los productos en Production.Product cuyo color (Color) s� est� especificado.*/
SELECT * 
FROM Production.Product
WHERE Color IS NOT NULL;

/*Muestra las personas en Person.Person que s� tienen segundo nombre (MiddleName).*/
SELECT * 
FROM Person.Person
WHERE MiddleName IS NOT NULL;

/*Obt�n las direcciones en Person.Address que s� tienen segunda l�nea (AddressLine2).*/
SELECT * 
FROM Person.Address
WHERE AddressLine2 IS NOT NULL;
