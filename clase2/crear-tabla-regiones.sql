-- creación de tabla regiones
CREATE TABLE regiones
(
   idRegion tinyint unsigned auto_increment not null primary key,
   regNombre varchar(50) unique not null
);

-- inserción de  datos en tabla regiones
INSERT INTO regiones
VALUES
    ( DEFAULT, 'América del Sur' ),
    ( DEFAULT, 'América Central' ),
    ( DEFAULT, 'Caribe y México' ),
    ( DEFAULT, 'América del Norte' ),
    ( DEFAULT, 'Europa Occidental'),
    ( DEFAULT, 'Europa del Este'),
    ( DEFAULT, 'Asia'),
    ( DEFAULT, 'Oceanía');