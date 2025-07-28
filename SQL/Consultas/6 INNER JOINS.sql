/*Muestra FirstName, LastName y EmailAddress de las personas que tienen correo.
  Tablas: Person.Person ↔ Person.EmailAddress.*/
SELECT pp.FirstName, pp.LastName, pe.EmailAddress
FROM Person.Person pp
INNER JOIN Person.EmailAddress pe 
ON pp.BusinessEntityID = pe.BusinessEntityID

/*Lista ProductID, Name y ProductNumber de los productos que aparecen en Sales.SalesOrderDetail.
  Tablas: Production.Product ↔ Sales.SalesOrderDetail.*/
SELECT ss.ProductID, pp.Name, pp.ProductNumber
FROM Sales.SalesOrderDetail ss
INNER JOIN Production.Product PP
ON ss.ProductID = pp.ProductID

/*Muestra BusinessEntityID y JobTitle de los empleados junto con Name del departamento donde trabajan.
  Tablas: HumanResources.Employee ↔ HumanResources.EmployeeDepartmentHistory.*/

/*Obtén SalesOrderID, OrderDate y TerritoryID de las órdenes junto con Name del territorio.
  Tablas: Sales.SalesOrderHeader ↔ Sales.SalesTerritory.*/

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
