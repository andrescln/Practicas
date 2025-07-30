--comodín o wildcards
% (porcentaje): Representa cero, uno o más caracteres.
Ejemplo: 'a%' encuentra cualquier cadena que comience con "a".

_ (guión bajo): Representa un único carácter.
Ejemplo: 'a_' encuentra cualquier cadena de dos caracteres que comience con "a".

[ ] (corchetes): Representa cualquier carácter dentro de los corchetes.
Ejemplo: '[abc]%' encuentra cualquier cadena que comience con "a", "b" o "c".

[^ ] (acento circunflejo dentro de corchetes): Representa cualquier carácter que no esté dentro de los corchetes.
Ejemplo: '[^abc]%' encuentra cualquier cadena que no comience con "a", "b" o "c".

- (guion en corchetes): Representa un rango de caracteres dentro de los corchetes.
Ejemplo: '[a-z]%' encuentra cualquier cadena que comience con una letra de la "a" a la "z".

/*Selecciona los empleados que tengan la plabra "Manager" en tu titulo de empleo*/
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Manager%'
/*Selecciona los empleados cuyo titulo de trabajo empiece como "Marketing"*/
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle LIKE 'Marketing%'
/*Muestra el nombre y apellido de las peronas cuyo nombre empieze con la letra 'A'*/
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'A%'
/*Selecciona los productos cuyo nombre tenga la plabra 'Touring'*/
SELECT *
FROM Production.Product
WHERE Name LIKE '%Touring%'
/*Selecciona los productos cuyo nombre contengan un guion '-'*/
SELECT *
FROM Production.Product
WHERE Name LIKE '%-%'
/*Selecciona los productos cuyo nombre termine en Bike*/
SELECT *
FROM Production.Product
WHERE Name LIKE '%Bike'
/*Selecciona los empleados cuyo titulo de trabajo tengan una e en la segunda pocicion*/
SELECT BusinessEntityID, JobTitle
FROM HumanResources.Employee
WHERE JobTitle LIKE '_e%'
/*Muestra el nombre y apellido de las personas cuyo nombre tenga exactamente 5 acracteres*/
SELECT FirstName, LastName
FROM Person.Person
WHERE FirstName LIKE '_____'
/*Selecciona los empleados cuyos titulos de trabajo incluyan un número*/
SELECT *
FROM HumanResources.Employee
WHERE JobTitle LIKE '%[0-9]%'
/*Selecciona a las personas cuyos apellidos NO comiencen con una vocal*/
SELECT *
FROM Person.Person
WHERE LastName LIKE '[^AEIOU]%'
/*Muestra nombre y apellido de las personas cuyo apellido contengan las letras 'an', pero que no terminen en 'n'*/
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE '%an%[^n]'
/*Muestra el nombre y apellido de las personas cuyos apellidos contengan exacamente 8 caracteres y no empicecen con una consonante*/
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE '[^BCDFGHJKLMNÑPQRSTVWXYZ]_______'