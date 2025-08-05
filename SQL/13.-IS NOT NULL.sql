/*Selecciona los producos que tengan un color especificado*/
SELECT * 
FROM Production.Product
WHERE Color IS NOT NULL
/*Selecciona los productos cuyo tamaño este espesificado*/
SELECT * 
FROM Production.Product
WHERE Size IS NOT NULL
/*Selecciona las personas que cuenten con información de contacto adicional*/
SELECT * 
FROM Person.Person
WHERE AdditionalContactInfo IS NOT NULL
/*Selecciona todas las personas que tengan segundo nombre*/
SELECT *
FROM Person.Person
WHERE MiddleName IS NOT NULL
/*Selecciona las personas que tengan un titulo*/
SELECT *
FROM Person.Person
WHERE Title IS NOT NULL
