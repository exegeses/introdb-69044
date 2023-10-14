# Insertar datos en SQL

> Hay 3 maneras de insertar datos en SQL

## Sintáxis usando **SET** 

> Sint´´axis:  

    INSERT INTO nombreTabla  
        SET  
            nombreColumna = valor,  
            nombreColumna = valor,  
            nombreColumna = valor; 

> Ejemplo práctico:

    INSERT INTO productos_apple  
        SET  
            id = DEFAULT,
            nombre = 'iPod',  
            precio = 299,  
            stock = 200;  

## Sintáxis completa ( se mencionan las columnas )

> Sint´´axis:

    INSERT INTO nombreTabla  
        ( nombreCol2, nombreCol3, nombreCol4 )  
      VALUES  
        ( valCol2, valCol3, valCol4 );  

> Ejemplo práctico:

    INSERT INTO productos_apple  
        ( nombre, precio, stock )  
      VALUES  
        ( 'iPhone', 399, 300 );

## Sintáxis simplificada ( NO se mencionan las columnas )

> Sint´´axis:

    INSERT INTO nombreTabla  
      VALUES  
        ( valor, valor, valor, valor );  

> Ejemplo práctico:

    INSERT INTO productos_apple  
      VALUES  
        ( DEFAULT, 'iPad', 499, 250 );
