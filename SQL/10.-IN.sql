/*Selecciona los tipos de persona empleado(EM),cliente individual(IN) y vendedor(SP)*/
SELECT *
FROM person.Person
WHERE PersonType IN('EM','IN','SP')
/*Selecciona los empleados que tengan el titulo de trabajo 'Senior Tool Designer', 'Marketing Specialist', 'Design Engineer'*/
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle IN ('Senior Tool Designer', 'Marketing Specialist', 'Design Engineer')
/*Selecciona los productos que tengan el color Black, Red o Blue*/
SELECT *
FROM Production.Product
WHERE Color IN ('Black', 'Red', 'Blue')
/*Selecciona los productos que tengan precio de lista 0.00 o 34.99*/
SELECT *
FROM Production.Product
WHERE ListPrice IN(0.00,34.99)
/*Selecciona los empleados que nacieron en el año 1990 o 1980*/
SELECT *
FROM HumanResources.Employee
WHERE YEAR(BirthDate) IN (1990, 1980)
