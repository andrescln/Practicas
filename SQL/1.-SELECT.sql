--=SELECT=--
/*Selecciona todos los datos de la tabla Person.Person*/
SELECT * FROM Person.Person

/*Muestra el ID, tipo de persona nombre y apellido*/
SELECT BusinessEntityID, PersonType, FirstName, LastName
FROM Person.Person

/*Selecciona todos los datos de la tabla HumanResources.Employee*/
SELECT * FROM HumanResources.Employee

/*Muestra el ID, nivel de organizacion y titulo de trabajo de la tabla
HumanResources.Employee*/
SELECT BusinessEntityID, OrganizationLevel, JobTitle 
FROM HumanResources.Employee

/*Selecciona todos los datos de la tabla de productos(Product)*/
SELECT * FROM Production.Product

/*Selecciona el ID, nombre y precio de los productos*/
SELECT ProductID, Name, ListPrice 
FROM Production.Product

/*Selecciona todos los campos de Production.ProductReview*/
SELECT * FROM Production.ProductReview

/*Muestra el ID del producto, la calificación y el comentario*/
SELECT ProductID,Rating,Comments
FROM Production.ProductReview

/*Selecciona todos los datos de Sales.Customer*/
SELECT * FROM Sales.Customer

/*Muestra el ID del cliente y el ID de la persona asociada*/
SELECT CustomerID,PersonID 
FROM Sales.Customer

/*Muestra los ID de tienda y territorio*/
SELECT StoreID, TerritoryID
FROM Sales.Customer

/*Selecciona todos los datos de Person.EmailAddress*/
SELECT * FROM Person.EmailAddress

/*Muestra el ID de la persona y el correo electrónico*/
SELECT BusinessEntityID,EmailAddress
FROM Person.EmailAddress