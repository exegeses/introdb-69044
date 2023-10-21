# Modificación  de datos de una tabla

> Para la modificación de datos de una tabla (registros)
> utilizamos el comando **UPDATE**

> Sintáxis: 

    UPDATE nombreTabla    
        SET   
            nombreColumna = valor  
      WHERE columnaPK = valorID;

> Ejemplo práctico: 

    UPDATE destinos    
        SET    
            destPrecio = 9700    
        WHERE idDestino = 1;  

> Aumentar el precio un 5% (inclído)
> del registro 4

    UPDATE destinos  
        SET    
            destPrecio = destPrecio + ( destPrecio * 5/100 )    
        WHERE idDestino = 4;  


    UPDATE destinos  
        SET    
            destPrecio = destPrecio * 1.05     
        WHERE idDestino = 4;  

> Modificar los registros 5 y 6
> asignando la region 7 ( idRegion = 7 )

    UPDATE destinos  
        SET  
            idRegion = 7  
        WHERE idDestino = 5 
          OR  idDestino = 6;
        

    UPDATE destinos  
        SET  
            idRegion = 7  
        WHERE idDestino IN( 5, 6 );
