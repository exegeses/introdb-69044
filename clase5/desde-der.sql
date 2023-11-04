-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema introDB69044
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema introDB69044
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `introDB69044` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `introDB69044` ;

-- -----------------------------------------------------
-- Table `introDB69044`.`regiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69044`.`regiones` (
  `idRegion` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `regNombre` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE INDEX `regNombre` (`regNombre` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69044`.`destinos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69044`.`destinos` (
  `idDestino` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `destNombre` VARCHAR(50) NOT NULL,
  `idRegion` TINYINT UNSIGNED NOT NULL,
  `destPrecio` DECIMAL(9,2) UNSIGNED NOT NULL,
  `destAsientos` TINYINT UNSIGNED NOT NULL,
  `destDisponibles` TINYINT UNSIGNED NOT NULL,
  `destActivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idDestino`),
  UNIQUE INDEX `destNombre` (`destNombre` ASC) VISIBLE,
  INDEX `idRegion` (`idRegion` ASC) VISIBLE,
  CONSTRAINT `destinos_ibfk_1`
    FOREIGN KEY (`idRegion`)
    REFERENCES `introDB69044`.`regiones` (`idRegion`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69044`.`monedas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69044`.`monedas` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `exacto` DECIMAL(10,2) NOT NULL,
  `aproximado` FLOAT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69044`.`productos_apple`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introDB69044`.`productos_apple` (
  `id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(30) NOT NULL,
  `precio` DECIMAL(10,2) UNSIGNED NOT NULL,
  `stock` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nombre` (`nombre` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `introDB69044`.`marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS marcas (
  `idMarca` TINYINT UNSIGNED  primary key NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(45) UNIQUE NOT NULL
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB69044`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS categorias (
  `idCategoria` TINYINT UNSIGNED  primary key  NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(45) UNIQUE NOT NULL
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB69044`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS productos (
  `idProducto` MEDIUMINT UNSIGNED primary key NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(45) NOT NULL,
  `prdPrecio` DECIMAL(8,2) UNSIGNED NOT NULL,
  `idMarca` TINYINT UNSIGNED NOT NULL,
  `idCategoria` TINYINT UNSIGNED NOT NULL,
  `prdDescripcion` VARCHAR(1000) NOT NULL,
  `prdActivo` TINYINT(1) NOT NULL DEFAULT 1,
    FOREIGN KEY (idMarca)
		REFERENCES marcas (idMarca),
    FOREIGN KEY (idCategoria)
    REFERENCES categorias (idCategoria)
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
