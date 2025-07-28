--=COUNT=--
/*Cuenta cu�ntos registros hay en la tabla Production.Product*/
SELECT COUNT(*) 
FROM Production.Product;

/*Cuenta cuantos Productos con tama�o hay*/
SELECT COUNT(Size)
FROM Production.Product

/*Cuenta cuantos registros hay en la tabla Person.Person*/
SELECT COUNT(*)
FROM Person.Person;

/*Cuenta cuantas personas tienen segundo nombre en Person.Person*/
SELECT COUNT(MiddleName) AS "Segundo Nombre"
FROM Person.Person

/*Cuenta cu�ntos registros hay en la tabla HumanResources.Employee*/
SELECT COUNT(*) AS "Empleados"
FROM HumanResources.Employee;

/*Cuenta cu�ntos registros hay en la tabla HumanResources.Department.*/
SELECT COUNT(*) AS "Departamentos"
FROM HumanResources.Department;

