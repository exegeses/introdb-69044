# Vistas
/*
  una vista es una consulta que podemos
  almacenar en la base de datos
 */
####### parece una tabla temporal, pero no lo es ###
CREATE VIEW consulta_precio
AS
SELECT 	idProducto AS id,
          prdNombre AS Producto,
          prdPrecio AS PrecioContado,
          prdPrecio * 1.05 AS PrecioLista,
          concat( mkNombre, ' - ', catNombre ) AS 'Marca - Categoria'
FROM productos AS p, marcas AS m, categorias AS c
WHERE p.idMarca = m.idMarca
  AND p.idCategoria = c.idCategoria;
