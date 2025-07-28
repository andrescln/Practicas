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
/*Cuenta cuántos productos hay en la tabla Production.Product*/
SELECT COUNT(*) 
FROM Production.Product;

/*Cuenta cuántas personas hay en la tabla Person.Person*/
SELECT COUNT(*) 
FROM Person.Person;

/*Cuenta cuántos empleados hay registrados en la tabla HumanResources.Employee.
  Resultado esperado: Un solo número que indica la cantidad de empleados.*/
SELECT COUNT(*) AS "Cantidad de empleados"
FROM HumanResources.Employee;

/*Cuenta cuántos registros hay en la tabla HumanResources.Department.
  Resultado esperado: Un solo número que indica la cantidad de departamentos.*/
SELECT COUNT(*) AS "Cantidad de Departamentos"
FROM HumanResources.Department;

