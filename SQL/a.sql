--=SELECT=--
/*Selecciona todos los datos de la tabla HumanResources.Employee*/
SELECT * FROM HumanResources.Employee
/*Selecciona todos los datos de la tabla Person.Person*/
SELECT * FROM Person.Person
/*Selecciona solo el FirstName y LastName de la tabla Person.Person*/
SELECT FirstName, LastName 
FROM Person.Person
/*Muestra el ID, nivel de organizacion y titulo de trabajo de la tabla HumanResources.Employee.*/
SELECT BusinessEntityID, OrganizationLevel, JobTitle 
FROM HumanResources.Employee
/*Selecciona el ID, nombre y color de los productos en Production.Product.*/
SELECT ProductID, Name, Color
FROM Production.Product

--=COUNT=--
/*Cuenta cu�ntos productos hay en la tabla Production.Product*/
SELECT COUNT(*) 
FROM Production.Product;

/*Cuenta cu�ntas personas hay en la tabla Person.Person*/
SELECT COUNT(*) 
FROM Person.Person;

/*Cuenta cu�ntos empleados hay registrados en la tabla HumanResources.Employee.
  Resultado esperado: Un solo n�mero que indica la cantidad de empleados.*/
SELECT COUNT(*) AS "Cantidad de empleados"
FROM HumanResources.Employee;

/*Cuenta cu�ntos registros hay en la tabla HumanResources.Department.
  Resultado esperado: Un solo n�mero que indica la cantidad de departamentos.*/
SELECT COUNT(*) AS "Cantidad de Departamentos"
FROM HumanResources.Department;

