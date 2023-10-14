-- creación de tabla monedas
CREATE TABLE monedas
(
    id tinyint unsigned auto_increment primary key not null,
    exacto decimal(10,2)  not null,
    aproximado float not null
);

-- insertar datos en tabla monedas
INSERT INTO monedas
    VALUES
        ( DEFAULT, 100.4, 20.4 ),
        ( DEFAULT, -80, 0 );

-- consulta
SELECT SUM(exacto), SUM(aproximado)
FROM monedas;