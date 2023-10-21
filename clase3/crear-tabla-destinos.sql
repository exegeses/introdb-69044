-- Creación de tabla destinos
CREATE TABLE destinos
(
    idDestino smallint unsigned primary key auto_increment not null,
    destNombre varchar(50) unique not null,
    idRegion tinyint unsigned not null,
    foreign key ( idRegion ) references regiones (idRegion),
    destPrecio decimal(9,2) unsigned not null,
    destAsientos tinyint unsigned not null,
    destDisponibles tinyint unsigned not null,
    destActivo boolean not null default(1)
);

-- inserción de datos en tabla destinos
INSERT INTO destinos
(idDestino, destNombre, idRegion, destPrecio, destAsientos, destDisponibles, destActivo)
VALUES
    (DEFAULT, 'Londres (Heathrow)', 5, 9711, 5, 5, DEFAULT),
    (DEFAULT, 'Amsterdam (Schiphol)', 5, 6231, 5, 5, DEFAULT),
    (DEFAULT, 'Miami (Wilcox Field)', 4, 6517, 5, 5, DEFAULT),
    (DEFAULT, 'Tokio (Narita)', 7, 8704, 5, 5, DEFAULT),
    (DEFAULT, 'Kuala Lumpur (KLIA)', 8, 8570, 5, 5, DEFAULT),
    (DEFAULT, 'Bangkok (Suvarnabhumi)', 8, 8469, 5, 5, DEFAULT),
    (DEFAULT, 'París (Charles de Gaulle)', 5, 7713, 5, 5, DEFAULT),
    (DEFAULT, 'Cancún (Cancún)', 3, 6494, 5, 5, DEFAULT),
    (DEFAULT, 'Milán (Malpensa)', 5, 6756, 5, 5, DEFAULT);
