--=BETWEEN=--
--Muestra los ProductID, Name y ListPrice de productos cuyo precio de lista (ListPrice) esté entre 10 y 50 en Production.Product.
SELECT ProductID, Name, ListPrice 
FROM Production.Product
WHERE ListPrice BETWEEN 10 AND 50
--Selecciona los productos cuyo precio de lista (ListPrice) esté entre 100 y 500, en la tabla Production.Product.
SELECT ProductID, Name 
FROM Production.Product
WHERE ListPrice BETWEEN 100 AND 500
--Muestra los ProductID, Name y SellStartDate de productos cuyo inicio de venta (SellStartDate) esté entre el 1 de enero de 2012 y el 31 de diciembre de 2012 en Production.Product.
SELECT ProductID, Name, SellStartDate 
FROM Production.Product
WHERE SellStartDate BETWEEN '2012-01-01' AND '2012-31-12'
--Muestra los ProductID y Name de productos cuyo tamaño (Size) esté entre 'M' y 'L' en la tabla Production.Product.
SELECT ProductID, Name 
FROM Production.Product
WHERE Size BETWEEN 'M' AND 'L'
--Muestra los ProductID y Name de productos cuyo ProductNumber esté entre 'LW-1000' y 'LW-3000' en Production.Product.
SELECT ProductID, Name 
FROM Production.Product
WHERE ProductNumber BETWEEN 'LW-1000' AND 'LW-3000'
