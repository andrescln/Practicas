--=LIKE=--
--Selecciona los empleados cuyos t�tulos de trabajo comiencen con 'Marketing'
SELECT *
FROM HumanResources.Employee
WHERE JobTitle like 'Marketing%'
--Muestra el nombre y el apellido de las personas cuyo apellido comienza con la letra 'A':
SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'A%'
--Encuentra los productos cuyos nombres terminan con 'Bike':
SELECT *
FROM Production.Product
WHERE Name LIKE '%Bike'
--Busca en la tabla Person.Person los registros en los que el nombre tenga exactamente 5
SELECT FirstName, LastName
FROM Person.Person
WHERE FirstName LIKE '_____'
--Encuentra todos los productos cuyo nombre tenga la palabra 'Touring' en cualquier parte:
SELECT *
FROM Production.Product
WHERE Name LIKE '%Touring%'
--Selecciona los empleados cuyos t�tulos de trabajo incluyan un n�mero:
SELECT *
FROM HumanResources.Employee
WHERE JobTitle LIKE '%[0-9]%'
--Busca a las personas de la tabla Person.Person cuyos apellidos NO comiencen con vocal:
SELECT *
FROM Person.Person
WHERE LastName LIKE '[^AEIOU]%'
--Encuentra productos cuyos nombres contengan un guion ('-') en cualquier parte:
SELECT *
FROM Production.Product
WHERE Name LIKE '%-%'
--Muestra los t�tulos de trabajo de la tabla HumanResources.Employee que contengan las palabras 'Lead' o 'Specialist':
SELECT JobTitle
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Lead%' OR JobTitle LIKE '%Specialist%'
--Selecciona las direcciones de la tabla Person.Address que comiencen con un n�mero seguido de cualquier palabra, separadas por un espacio:
SELECT *
FROM Person.Address
WHERE AddressLine1 LIKE '[0-9]% %'
--Encuentra las personas cuyo apellido contenga las letras 'an' (sin importar su posici�n), pero NO terminen en 'n':
SELECT FirstName, LastName
FROM Person.Person
--Busca en la tabla Production.Product los productos que comiencen con una letra entre 'A' y 'F'
SELECT ProductID, Name
FROM Production.Product
--Selecciona los nombres de empleados cuyos t�tulos contengan una 'e' exactamente en la segunda posici�n
SELECT BusinessEntityID, JobTitle
FROM HumanResources.Employee
--Encuentra en la tabla Person.Person las personas cuyos apellidos contengan exactamente 8 caracteres y no empiecen con una consonante
SELECT FirstName, LastName
FROM Person.Person

--comod�n o wildcards
% (porcentaje): Representa cero, uno o m�s caracteres.
Ejemplo: 'a%' encuentra cualquier cadena que comience con "a".

_ (gui�n bajo): Representa un �nico car�cter.
Ejemplo: 'a_' encuentra cualquier cadena de dos caracteres que comience con "a".

[ ] (corchetes): Representa cualquier car�cter dentro de los corchetes.
Ejemplo: '[abc]%' encuentra cualquier cadena que comience con "a", "b" o "c".

[^ ] (acento circunflejo dentro de corchetes): Representa cualquier car�cter que no est� dentro de los corchetes.
Ejemplo: '[^abc]%' encuentra cualquier cadena que no comience con "a", "b" o "c".

- (guion en corchetes): Representa un rango de caracteres dentro de los corchetes.
Ejemplo: '[a-z]%' encuentra cualquier cadena que comience con una letra de la "a" a la "z".
--=PORCENTAJE=--
/*Obt�n los empleados en HumanResources.Employee cuyo JobTitle contiene la palabra "Manager".
  Resultado esperado: Lista de empleados con "Manager" en su t�tulo*/
SELECT * 
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Manager%'