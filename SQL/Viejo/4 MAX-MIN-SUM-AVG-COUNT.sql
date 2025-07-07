--=MAX=--
/*Encuentra el precio m�ximo de los productos en la tabla Production.Product*/
SELECT MAX(ListPrice)
--MAX(ListPrice) AS NombrePrecio
--MAX(ListPrice) AS "Nombre Precio"
FROM Production.Product
/*Obt�n la fecha m�s reciente de creaci�n de direcciones en la tabla Person.Address*/
SELECT MAX(ModifiedDate)
FROM Person.Address
/*Obten el registro del producto con el ID mas alto de Production.Product*/
SELECT *
FROM Production.Product
WHERE ProductID = (SELECT MAX(ProductID) FROM Production.Product);
/*Obt�n el registro completo del producto con el mayor precio*/
SELECT *
FROM Production.Product
WHERE ListPrice = (SELECT MAX(ListPrice) FROM Production.Product)
/*Encuentra el registro del empleado con numero mas alto en nivel organizacional en la tabla HumanResources.Employee*/
SELECT *
FROM HumanResources.Employee
WHERE OrganizationLevel = (SELECT MAX(OrganizationLevel) FROM HumanResources.Employee)
/*Recupera la direcci�n m�s recientemente modificada en la tabla Person.Address*/
SELECT *
FROM Person.Address
WHERE ModifiedDate = (SELECT MAX(ModifiedDate) FROM Person.Address)
/*Encuentra el pedido con el monto total m�s alto en la tabla Sales.SalesOrderHeader*/
SELECT *
FROM Sales.SalesOrderHeader
WHERE TotalDue = (SELECT MAX(TotalDue) FROM Sales.SalesOrderHeader)
--=MIN=--
/*Encuentra el precio m�nimo de los productos en la tabla Production.Product*/
SELECT MIN(ListPrice)
FROM Production.Product
/*Muestra la fecha m�s antigua de modificaci�n en la tabla Person.Person*/
SELECT MIN(ModifiedDate)
FROM Person.Person
/*Obt�n el ID m�s bajo de cualquier pedido en la tabla Sales.SalesOrderHeader*/
SELECT MIN(SalesOrderID)
FROM Sales.SalesOrderHeader
/*Obt�n el registro completo del producto con el precio m�s bajo*/
SELECT *
FROM Production.Product
WHERE ListPrice = (SELECT MIN(ListPrice) FROM Production.Product)
--=SUM=--
/*Calcula el total de precios de los productos en la tabla Production.Product*/
SELECT SUM(ListPrice)
FROM Production.Product
/*Suma la cantidad total de unidades en inventario en la tabla Production.ProductInventory*/
SELECT SUM(Quantity)
FROM Production.ProductInventory
/*Muestra la transacci�n m�s antigua en la tabla Production.TransactionHistory*/
SELECT *
FROM Production.TransactionHistory
WHERE TransactionDate = (SELECT MIN(TransactionDate) FROM Production.TransactionHistory);
--=AVG=--
/*Calcula el precio promedio de los productos en la tabla Production.Product*/
SELECT AVG(ListPrice)
FROM Production.Product
/*Calcula el promedio de ventas totales por pedido en la tabla Sales.SalesOrderHeader*/
SELECT AVG(TotalDue) AS PromedioVentas
FROM Sales.SalesOrderHeader;
--=COUNT=--
/*Cuenta cu�ntos productos hay en la tabla Production.Product*/
SELECT COUNT(*)
FROM Production.Product;
/*Cuenta el n�mero de personas registradas en la tabla Person.Person*/
SELECT COUNT(*)
FROM Person.Person;
/*Obt�n la cantidad de �rdenes de venta registradas en la tabla Sales.SalesOrderHeader*/
SELECT COUNT(*)
FROM Sales.SalesOrderHeader;
/*Cuenta cu�ntas direcciones est�n registradas en la tabla Person.Address*/
SELECT COUNT(*) AS TotalDirecciones
FROM Person.Address;
/*Cuenta el n�mero de departamentos en la tabla HumanResources.Department*/
SELECT COUNT(*) AS TotalDepartamentos
FROM HumanResources.Department;