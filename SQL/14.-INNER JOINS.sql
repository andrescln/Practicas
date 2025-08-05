/*Muestra nombre, apellido y email de las personas que tienen correo.
Tablas: Person.Person ↔ Person.EmailAddress.*/
SELECT p.FirstName, p.LastName, e.EmailAddress
FROM Person.Person p
INNER JOIN Person.EmailAddress e 
ON p.BusinessEntityID = e.BusinessEntityID

/*Muestra el ID, nombre y numero de producto de los productos que aparecen en la tabla ordenes de venta.
Tablas: Production.Product ↔ Sales.SalesOrderDetail.*/
SELECT ss.ProductID, pp.Name, pp.ProductNumber
FROM Sales.SalesOrderDetail ss
INNER JOIN Production.Product PP
ON ss.ProductID = pp.ProductID

/*Muestra el ID, nombre, apellido, cumpleaños, titulo de trabajo de los empleados ordenados acendentemente por ID
Tablas: HumanResources.Employee ↔ Person.Person*/
SELECT e.BusinessEntityID, p.FirstName, p.LastName, e.BirthDate, e.JobTitle
FROM HumanResources.Employee e
INNER JOIN Person.Person p
ON e.BusinessEntityID = p.BusinessEntityID
ORDER BY e.BusinessEntityID ASC

/*Muestra el ID de la orden, fecha de la orden, ID del terrytorio y el nombre del territorio, ordena el ID de la orden de forma acendente
  Tablas: Sales.SalesOrderHeader ↔ Sales.SalesTerritory.*/
SELECT o.SalesOrderID, o.OrderDate, t.TerritoryID, t.Name
FROM Sales.SalesOrderHeader o
INNER JOIN Sales.SalesTerritory t
ON o.TerritoryID = t.TerritoryID
ORDER BY o.SalesOrderID

SELECT * FROM Sales.SalesOrderHeader
SELECT * FROM Sales.SalesTerritory
/*Muestra el ContactTypeID y Name del tipo de contacto asociado a cada persona de Person.PersonContactType.
  Tablas: Person.ContactType ↔ Person.PersonCreditCard.*/

/*Selecciona ProductID, VendorID y Name del producto con su proveedor.
  Tablas: Purchasing.ProductVendor ↔ Purchasing.Vendor.*/

/*Muestra AddressID, AddressLine1 y City para las direcciones asociadas a clientes.
  Tablas: Person.Address ↔ Sales.CustomerAddress.*/

/*Lista Name de la divisa y Year del tipo de cambio registrado.
  Tablas: Sales.Currency ↔ Sales.CurrencyRate.*/

/*Obtener Name de la cultura y ProductModelID del modelo cultural de productos.
  Tablas: Production.Culture ↔ Production.ProductModelProductDescriptionCulture.*/

/*Mostrar Name de la ubicación y ProductID del inventario.
  Tablas: Production.Location ↔ Production.ProductInventory.*/

/*Mostrar Name de la ubicación y ProductID del inventario.
  Tablas: Production.Location ↔ Production.ProductInventory.*/

select *  FROM Sales.SalesOrderDetail

select *  FROM Production.Product
