--=DISTINCT=--
/*Muestra los diferentes colores disponibles en la tabla Production.Product.
  Resultado esperado: Lista de colores únicos en los productos*/
SELECT DISTINCT Color
FROM Production.Product
/*Selecciona los tamaños únicos de productos en Production.Product.
  Resultado esperado: Lista de tamaños únicos de productos*/
SELECT DISTINCT Size
FROM Production.Product
/*Muestra los diferentes precios de lista (ListPrice) que existen en la tabla Production.Product.
  Resultado esperado: Lista de precios únicos*/
SELECT DISTINCT ListPrice
FROM Production.Product
/*Selecciona los nombres de productos únicos en la tabla Production.Product.
  Resultado esperado: Lista de nombres de productos sin duplicados*/
SELECT DISTINCT Name
FROM Production.Product
/*Obtén las combinaciones únicas de Color y Size en la tabla Production.Product.
  Resultado esperado: Lista de combinaciones de color y tamaño únicos*/
SELECT DISTINCT Color,Size
FROM Production.Product
/*Muestra las categorías únicas de productos (ProductCategoryID) en la tabla Production.Product.
  Resultado esperado: Lista de categorías únicas de productos*/
SELECT DISTINCT ProductSubcategoryID
FROM Production.Product