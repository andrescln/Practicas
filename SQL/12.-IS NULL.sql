/*Selecciona los producos que no tengan un color especificado*/
SELECT * 
FROM Production.Product
WHERE Color IS NULL
/*Selecciona los productos cuyo tamaño no este espesificado*/
SELECT * 
FROM Production.Product
WHERE Size IS NULL
/*Selecciona las personas que no cuenten con información de contacto adicional*/
SELECT * 
FROM Person.Person
WHERE AdditionalContactInfo IS NULL
/*Selecciona todas las personas cuyo segundo nombre es nulo*/
SELECT *
FROM Person.Person
WHERE MiddleName IS NULL
/*Selecciona las personas que no tengan un titulo*/
SELECT *
FROM Person.Person
WHERE Title IS NULL
