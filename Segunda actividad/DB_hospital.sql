-- MySQL Script generated by MySQL Workbench
-- Fri Mar 29 21:38:47 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Hospital
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Hospital` ;

-- -----------------------------------------------------
-- Schema Hospital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Hospital` DEFAULT CHARACTER SET utf8 ;
USE `Hospital` ;

-- -----------------------------------------------------
-- Table `Hospital`.`Medicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`Medicos` (
  `id_medicos` INT NOT NULL,
  `nombre_medico` VARCHAR(45) NOT NULL,
  `apellido_medico` VARCHAR(45) NOT NULL,
  `especialidad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_medicos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Procedimientos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`Procedimientos` (
  `id_procedimientos` INT NOT NULL,
  `tipo_procedimiento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_procedimientos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Medicamentos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`Medicamentos` (
  `id_medicamentos` INT NOT NULL,
  `nombre_medicamento` VARCHAR(45) NOT NULL,
  `dosis` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_medicamentos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`Pacientes` (
  `id_pacientes` INT NOT NULL,
  `nombre_paciente` VARCHAR(45) NOT NULL,
  `apellido_paciente` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `id_procedimiento` INT NOT NULL,
  PRIMARY KEY (`id_pacientes`),
  INDEX `id_procedimiento_idx` (`id_procedimiento` ASC) VISIBLE,
  CONSTRAINT `id_procedimiento`
    FOREIGN KEY (`id_procedimiento`)
    REFERENCES `Hospital`.`Procedimientos` (`id_procedimientos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Enfermeros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`Enfermeros` (
  `id_enfermero` INT NOT NULL,
  `nombre_enfermero` VARCHAR(45) NULL,
  `apellido_enfermero` VARCHAR(45) NULL,
  `id_medico` INT NOT NULL,
  PRIMARY KEY (`id_enfermero`),
  INDEX `id_medico_idx` (`id_medico` ASC) VISIBLE,
  CONSTRAINT `id_medico`
    FOREIGN KEY (`id_medico`)
    REFERENCES `Hospital`.`Medicos` (`id_medicos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`Facturas` (
  `id_factura` INT NOT NULL,
  `fecha` VARCHAR(45) NOT NULL,
  `valor_total` VARCHAR(45) NULL,
  `id_paciente` INT NOT NULL,
  PRIMARY KEY (`id_factura`),
  INDEX `id_paciente_idx` (`id_paciente` ASC) VISIBLE,
  CONSTRAINT `id_paciente`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `Hospital`.`Pacientes` (`id_pacientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`telefono_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`telefono_paciente` (
  `id_paciente_tel` INT NOT NULL,
  `telefono` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`telefono`, `id_paciente_tel`),
  INDEX `id_paciente_idx` (`id_paciente_tel` ASC) VISIBLE,
  CONSTRAINT `id_paciente_tel`
    FOREIGN KEY (`id_paciente_tel`)
    REFERENCES `Hospital`.`Pacientes` (`id_pacientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`telefono_medicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`telefono_medicos` (
  `id_medico` INT NOT NULL,
  `telefono` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`telefono`, `id_medico`),
  INDEX `id_medico_idx` (`id_medico` ASC) VISIBLE,
  CONSTRAINT `id_medico_tel`
    FOREIGN KEY (`id_medico`)
    REFERENCES `Hospital`.`Medicos` (`id_medicos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`telefono_enfermeros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`telefono_enfermeros` (
  `id_enfermero` INT NOT NULL,
  `telefono` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`telefono`, `id_enfermero`),
  INDEX `id_enfermero_idx` (`id_enfermero` ASC) VISIBLE,
  CONSTRAINT `id_enfermero_tel`
    FOREIGN KEY (`id_enfermero`)
    REFERENCES `Hospital`.`Enfermeros` (`id_enfermero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`paciente_medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`paciente_medicamento` (
  `id_paciente` INT NOT NULL,
  `id_medicamento` INT NOT NULL,
  INDEX `id_paciente_idx` (`id_paciente` ASC) VISIBLE,
  INDEX `id_medicamento_idx` (`id_medicamento` ASC) VISIBLE,
  PRIMARY KEY (`id_paciente`, `id_medicamento`),
  CONSTRAINT `id_paciente_med`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `Hospital`.`Pacientes` (`id_pacientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_medicamento_pac`
    FOREIGN KEY (`id_medicamento`)
    REFERENCES `Hospital`.`Medicamentos` (`id_medicamentos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`medico_procedimiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Hospital`.`medico_procedimiento` (
  `id_medico` INT NOT NULL,
  `id_procedimiento` INT NOT NULL,
  PRIMARY KEY (`id_medico`, `id_procedimiento`),
  INDEX `id_procedimiento_idx` (`id_procedimiento` ASC) VISIBLE,
  CONSTRAINT `id_medico_pro`
    FOREIGN KEY (`id_medico`)
    REFERENCES `Hospital`.`Medicos` (`id_medicos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `id_procedimiento_med`
    FOREIGN KEY (`id_procedimiento`)
    REFERENCES `Hospital`.`Procedimientos` (`id_procedimientos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
