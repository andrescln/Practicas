/*Selecciona los productos cuyo color no sea 'Red'*/
SELECT * 
FROM Production.Product
WHERE NOT Color = 'Red'
/*Selecciona los productos cuyo color no sea diferente a 'Red'*/
SELECT * 
FROM Production.Product
WHERE NOT Color <> 'Red'
/*Selecciona los productos cuyo precio de lista no sean mayor a 100*/
SELECT * 
FROM Production.Product
WHERE NOT ListPrice > 100
/*Selecciona los empleados cuyo genero no sea 'F'*/
SELECT * 
FROM HumanResources.Employee
WHERE NOT Gender = 'F' 
/*Selecciona todo los empleados cuyo cumpleaños no sean antes del 1990*/
SELECT *
FROM HumanResources.Employee
WHERE NOT YEAR(BirthDate) < '1990'
/*Selecciona a las personas que no sean del tipo 'EM'*/
SELECT *
FROM Person.Person
WHERE NOT PersonType = 'EM'
