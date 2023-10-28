# Creación de tablas catálogo

-- tabla marcas
create table marcas
(
    idMarca tinyint unsigned primary key auto_increment not null,
    mkNombre varchar(45) unique not null
);

-- tabla categorias
create table categorias
(
    idCategoria tinyint unsigned primary key auto_increment not null,
    catNombre varchar(45) unique not null
);

-- tabla productos
create table productos
(
    idProducto mediumint unsigned primary key auto_increment not null,
    prdNombre varchar(45) unique not null,
    prdPrecio decimal(8,2) unsigned not null,
    idMarca tinyint unsigned not null,
    foreign key ( idMarca ) references marcas ( idMarca ),
    idCategoria tinyint unsigned not null,
    foreign key ( idCategoria ) references categorias ( idCategoria ),
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null,
    prdActivo boolean default(1) not null
);
