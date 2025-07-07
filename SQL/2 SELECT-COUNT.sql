--=SELECT=--
/*Selecciona todos los datos de la tabla Person.Person.
  Resultado esperado: Todos los registros de la tabla Person.Person*/
SELECT * FROM Person.Person
/*Selecciona solo el FirstName y LastName de la tabla Person.Person.
  Resultado esperado: Lista de nombres y apellidos*/
SELECT FirstName, LastName 
FROM Person.Person
 /*Muestra el ID, nivel de organizacion y titulo de trabajo (BusinessEntityID, OrganizationLevel, JobTitle) de la tabla HumanResources.Employee.
  Resultado esperado: Lista de empleados con sus ID, niveles y títulos*/
SELECT BusinessEntityID, OrganizationLevel, JobTitle 
FROM HumanResources.Employee
/*Obtén los clientes (CustomerID) que tienen un pedido en la tabla Sales.SalesOrderHeader.
  Resultado esperado: Lista de IDs de clientes*/
SELECT CustomerID 
FROM Sales.SalesOrderHeader
/*Selecciona el Name y Color de los productos en Production.Product.
  Resultado esperado: Lista de productos con su color*/
SELECT Name, Color 
FROM Production.Product
/*Obtén los TerritoryID y SalesQuota de Sales.SalesPerson.
  Resultado esperado: Lista de IDs de territorio y cuotas de ventas*/
SELECT TerritoryID, SalesQuota
FROM Sales.SalesPerson;

--=COUNT=--
/*Cuenta cuántos productos hay en la tabla Production.Product.
  Resultado esperado: Un solo número que indica la cantidad de productos.*/
SELECT *
FROM Production.Product;

/*Cuenta cuántas personas hay en la tabla Person.Person.
  Resultado esperado: Un solo número que indica la cantidad de personas registradas.*/
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

