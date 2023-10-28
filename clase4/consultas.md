# Consultas en SQL

## Consultas a server

> Palabra reservada **SHOW** 

    SHOW TABLES;

> Muestra las tablas de una base de datos activa

> Palabra reservada **DESCRIBE** 

    DESCRIBE nombreTable;

> Muestra las columnas y sus tipos de datos, restricciones y caracteríasticas de los campos.

> para otras consultas a server tenamos la palabra reservada **SELECT**

    SELECT DATABASE();

> Muestra la base de datos activa.

    SELECT curdate();

    SELECT curdate(), date_add( curdate(), INTERVAL 30 day );

> Muestra dos columnas: la primera con la fecha actual
> y la segunda con la fecha actual + 30 d´´ias

## Consultas a tablas de una base de datos

> Para generar consultas a una tabla también vamos a utilizar la palabra **SELECT**, pero además le vamos a agregas la palabra **FROM** para especificar la tabla a culsultar.

> Sintáxis: 

    SELECT * FROM nombreTabla;  

> Ejemplo práctico: 

    SELECT * FROM regiones;  

> Si queremos ver sólo algunas de las columnas estas se deben especificar separadas con comas.

> Sintáxis:

    SELECT nombreCampo3, nombreCampo5   
        FROM nombreTabla;  

> Ejemplo práctico:

    SELECT destNombre, destPrecio  
        FROM destinos;  

## Orden de los resultados 

> Para ordenar los resultados utilizamos la 
> palabra reservada **ORDER BY**

> Sintáxis:

    SELECT nombreCampo3, nombreCampo5   
        FROM nombreTabla  
        ORDER BY nombreColumna;  

> Ejemplo práctico:

    SELECT destNombre, destPrecio  
        FROM destinos  
        ORDER BY destPrecio;  

    SELECT destNombre, destPrecio  
        FROM destinos  
        ORDER BY idRegion, destPrecio;

## Filtrado de registros

> Filtrar registros significa traer sólamento 
> los registros que cumplan con una condición

> Para especificar un filtro utilizamos la 
> palabra reservada **WHERE**

> Traer nombre y precio de los destinos
> con un precio menor a 8000

    SELECT destNombre, destPrecio
        FROM destinos
        WHERE destPrecio <= 8000;

> Traer nombre y precio de los destinos
> con un precio entre 6600 y 8000

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio >= 6600  
        AND destPrecio <= 8000;

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE destPrecio BETWEEN 6600 AND 8000; 

> Traer nombre y precio de los destinos
> de la región 5

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion = 5;

> Traer nombre y precio de los destinos
> de la región 5 y además de la región 7

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion = 5  
           OR idRegion = 7;

    SELECT destNombre, destPrecio  
        FROM destinos  
        WHERE idRegion IN( 5, 7 );

