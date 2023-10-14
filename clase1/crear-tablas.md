# Crear tablas en una base de datos

## Creación de tablas

> Para crear tablas en una base de datos
> utilizamos el comando **CREATE TABLE**  

> Sintáxis:  

    CREATE TABLE nombreTabla  
    (  
        nombreCol1 tipo características,
        nombreCol2 tipo características,
        nombreCol3 tipo características,
        nombreCol4 tipo características
    );

> Ejemplo práctico:

    CREATE TABLE productos_apple  
    (  
        id smallint unsigned auto_increment primary key not null,
        nombre varchar(30) unique not null,
        precio decimal(10,2) unsigned not null,
        stock smallint unsigned not null
    );
