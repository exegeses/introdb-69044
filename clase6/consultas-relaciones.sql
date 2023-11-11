# consultas con relaciones

##### table relation
/*
  SELECT colTabla1, colTabla1, colTabla2
  FROM tabla1, tabla2
  WHERE tabla1.fk = tabla2.pk
*/
SELECT destNombre, destPrecio, regNombre
FROM destinos, regiones
WHERE destinos.idRegion = regiones.idRegion;



SELECT prdNombre, prdPrecio, mkNombre
FROM productos, marcas
WHERE productos.idMarca = marcas.idMarca;

SELECT prdNombre, prdPrecio, mkNombre, catNombre
FROM productos, marcas, categorias
WHERE productos.idMarca = marcas.idMarca
  AND  productos.idCategoria = categorias.idCategoria;

##### JOIN
/*
  SELECT colTabla1, colTabla1, colTabla2
  FROM tabla1
  JOIN tabla2
    ON tabla1.fk = tabla2.pk
*/

SELECT destNombre, destPrecio, regNombre
  FROM destinos
  JOIN regiones
    ON destinos.idRegion = regiones.idRegion;


SELECT prdNombre, prdPrecio, mkNombre
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca;

SELECT prdNombre, prdPrecio, mkNombre, catNombre
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria;
