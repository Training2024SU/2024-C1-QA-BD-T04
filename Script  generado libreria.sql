-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema LibreriaBuscaLibre
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema LibreriaBuscaLibre
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LibreriaBuscaLibre` DEFAULT CHARACTER SET utf8 ;
USE `LibreriaBuscaLibre` ;

-- -----------------------------------------------------
-- Table `LibreriaBuscaLibre`.`Editorial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibreriaBuscaLibre`.`Editorial` (
  `nombre` VARCHAR(50) NOT NULL,
  `ciudad` VARCHAR(30) NOT NULL,
  `complemento` VARCHAR(100) NOT NULL,
  `Telefono` VARCHAR(20) NOT NULL DEFAULT '6013909541',
  PRIMARY KEY (`nombre`),
  UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibreriaBuscaLibre`.`libro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibreriaBuscaLibre`.`libro` (
  `ISBN` VARCHAR(10) NOT NULL,
  `titulo` VARCHAR(45) NOT NULL,
  `numero_paginas` VARCHAR(45) NULL,
  `nombre_editorial` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`ISBN`),
  INDEX `nombre_editorial_idx` (`nombre_editorial` ASC) VISIBLE,
  CONSTRAINT `nombre_editorial`
    FOREIGN KEY (`nombre_editorial`)
    REFERENCES `LibreriaBuscaLibre`.`Editorial` (`nombre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibreriaBuscaLibre`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibreriaBuscaLibre`.`cliente` (
  `cedula` VARCHAR(10) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`cedula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibreriaBuscaLibre`.`autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibreriaBuscaLibre`.`autor` (
  `id` VARCHAR(10) NOT NULL,
  `fecha de nacimiento` VARCHAR(45) NULL,
  `nacionalidad` VARCHAR(20) NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibreriaBuscaLibre`.`libro_autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibreriaBuscaLibre`.`libro_autor` (
  `ISBN_libro` VARCHAR(10) NOT NULL,
  `id_autor` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ISBN_libro`, `id_autor`),
  INDEX `id_autor_idx` (`id_autor` ASC) VISIBLE,
  CONSTRAINT `id_autor`
    FOREIGN KEY (`id_autor`)
    REFERENCES `LibreriaBuscaLibre`.`autor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ISBN_libro`
    FOREIGN KEY (`ISBN_libro`)
    REFERENCES `LibreriaBuscaLibre`.`libro` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibreriaBuscaLibre`.`libro_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibreriaBuscaLibre`.`libro_cliente` (
  `ISBN_libro_cliente` VARCHAR(10) NOT NULL,
  `id_cliente` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`ISBN_libro_cliente`, `id_cliente`),
  INDEX `id_cliente_idx` (`id_cliente` ASC) VISIBLE,
  CONSTRAINT `ISBN_libro_cliente`
    FOREIGN KEY (`ISBN_libro_cliente`)
    REFERENCES `LibreriaBuscaLibre`.`libro` (`ISBN`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_cliente`
    FOREIGN KEY (`id_cliente`)
    REFERENCES `LibreriaBuscaLibre`.`cliente` (`cedula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `LibreriaBuscaLibre`.`telefono_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LibreriaBuscaLibre`.`telefono_cliente` (
  `cedula_cliente` VARCHAR(10) NOT NULL,
  `numero` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`cedula_cliente`, `numero`),
  CONSTRAINT `cedula_cliente`
    FOREIGN KEY (`cedula_cliente`)
    REFERENCES `LibreriaBuscaLibre`.`cliente` (`cedula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- Insertar registros en la tabla autor
INSERT INTO LibreriaBuscaLibre.autor(id,`fecha de nacimiento`, nacionalidad, nombre)
VALUES
('1', '1978-03-25', 'Mexicana', 'Carlos Fuentes'),
('2', '1960-11-12', 'Española', 'Isabel Allende'),
('3', '1952-07-30', 'Estadounidense', 'J.K. Rowling'),
('4', '1985-09-18', 'Canadiense', 'Margaret Atwood'),
('5', '1948-12-05', 'Británica', 'Ian McEwan');

-- Insertar registros en la tabla editorial

INSERT INTO LibreriaBuscaLibre.Editorial (nombre, ciudad, complemento, Telefono) 
VALUES 
('Planeta', 'Barcelona', 'Carrer de Provença, 101', '932 23 34 45'),
('Penguin Classics', 'Londres', '80 Strand', '+44 20 7010 2000'),
('Harper Perennial', 'Nueva York', '195 Broadway', '212-207-7000'),
('Salani', 'Milán', 'Via San Gregorio, 7', '+39 02 8699 3860'),
('Vintage Español', 'Nueva York', '1745 Broadway', '212-572-2000');

-- Insertar registros tabla libro

INSERT INTO LibreriaBuscaLibre.libro (ISBN, titulo, numero_paginas, nombre_editorial) 
VALUES 
('97803100', 'La Aventura del Tiempo', '200', 'Planeta'),
('97806790', 'Caminos del Alma', '250', 'Penguin Classics'),
('97800610', 'El Secreto del Bosque', '300', 'Harper Perennial'),
('97800620', 'El Misterio de la Noche', '400', 'Salani'),
('97803070', 'El Tesoro del Pirata', '150', 'Vintage Español'),
('97804390', 'El Guardian de las Sombras', '180', 'Viking Press');


-- Insertar registros tabla cliente
INSERT INTO LibreriaBuscaLibre.cliente (cedula, nombre) 
VALUES 
('1234567890', 'Juan Pérez'),
('2345678901', 'María Rodríguez'),
('3456789012', 'José García'),
('4567890123', 'Ana Martínez'),
('5678901234', 'Carlos López'),
('6789012345', 'Laura González'),
('7890123456', 'Pedro Díaz'),
('8901234567', 'Sofía Hernández'),
('9012345678', 'Miguel Sánchez');

-- Insertar registros en la tabla libro_autor
INSERT INTO LibreriaBuscaLibre.libro_autor (ISBN_libro, id_autor) 
VALUES 
('97803100', '1'), -- La Aventura del Tiempo - Autor 1
('97806790', '2'), -- Caminos del Alma - Autor 2
('97800610', '3'), -- El Secreto del Bosque - Autor 3
('97800620', '4'), -- El Misterio de la Noche - Autor 4
('97803070', '5'); -- El Tesoro del Pirata - Autor 5


-- Insertar registros en la tabla libro_cliente
INSERT INTO LibreriaBuscaLibre.libro_cliente (ISBN_libro_cliente, id_cliente) 
VALUES 
('97803100', '1234567890'), -- La Aventura del Tiempo - Juan Pérez
('97806790', '2345678901'), -- Caminos del Alma - María Rodríguez
('97800610', '3456789012'), -- El Secreto del Bosque - José García
('97800620', '4567890123'), -- El Misterio de la Noche - Ana Martínez
('97803070', '5678901234'); -- El Tesoro del Pirata - Carlos López


-- Insertar registros en la tabla telefono_cliente
INSERT INTO LibreriaBuscaLibre.telefono_cliente (cedula_cliente, numero) 
VALUES 
('1234567890', '555-1455234'), -- Juan Pérez
('2345678901', '555-5678345'), -- María Rodríguez
('3456789012', '555-9876435'), -- José García
('4567890123', '555-4324321'), -- Ana Martínez
('5678901234', '555-8765532'); -- Carlos López

