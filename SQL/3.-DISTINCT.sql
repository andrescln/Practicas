--=DISTINCT=--
/*Muestra los diferentes colores disponibles en la tabla Production.Product.
  Resultado esperado: Lista de colores �nicos en los productos*/
SELECT DISTINCT Color
FROM Production.Product
/*Selecciona los tama�os �nicos de productos en Production.Product.
  Resultado esperado: Lista de tama�os �nicos de productos*/
SELECT DISTINCT Size
FROM Production.Product
/*Muestra los diferentes precios de lista (ListPrice) que existen en la tabla Production.Product.
  Resultado esperado: Lista de precios �nicos*/
SELECT DISTINCT ListPrice
FROM Production.Product
/*Selecciona los nombres de productos �nicos en la tabla Production.Product.
  Resultado esperado: Lista de nombres de productos sin duplicados*/
SELECT DISTINCT Name
FROM Production.Product
/*Obt�n las combinaciones �nicas de Color y Size en la tabla Production.Product.
  Resultado esperado: Lista de combinaciones de color y tama�o �nicos*/
SELECT DISTINCT Color,Size
FROM Production.Product
/*Muestra las categor�as �nicas de productos (ProductCategoryID) en la tabla Production.Product.
  Resultado esperado: Lista de categor�as �nicas de productos*/
SELECT DISTINCT ProductSubcategoryID
FROM Production.Product