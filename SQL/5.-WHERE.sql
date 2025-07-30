--=OPERADORES DE COMPARACION=--
/*	=	Igual a
	>	Mayor que
	<	Menor que
	>=	Mayor o igual que
	<=	Menor o igual que
	<>	No es igual a	*/
/*Muestra el ID, nombre y precio de los productos que tengan un precio de lista igual a 3.99*/
SELECT ProductID, Name, ListPrice
FROM Production.Product
WHERE ListPrice = 3.99
/*Muestra los productos cuyo precio de lista sea menor o igual a 9.50*/
SELECT *
FROM Production.Product
WHERE ListPrice <= 9.50
/*Selecciona los productos cuyo precio de lista sea mayor a 50*/
SELECT *
FROM Production.Product
WHERE ListPrice > 50
/*Seleciona los productos cuyo precio de lista no sea 9.50*/
SELECT *
FROM Production.Product
WHERE ListPrice <> 9.50
/*Seleciona los empleados cuyo titulo de trabajo sea Marketing Specialist*/
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle = 'Marketing Specialist'
/*Seleciona los empleados cuyo titulo de trabajo no sea Marketing Specialist*/
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle <> 'Marketing Specialist'
/*Selecciona todo los empleados que su cumpleaños sean antes del 2000*/
SELECT *
FROM HumanResources.Employee
WHERE BirthDate < '2000-01-01';