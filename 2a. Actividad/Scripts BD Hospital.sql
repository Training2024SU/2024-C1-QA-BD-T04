-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema hospital
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hospital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hospital` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `hospital` ;

-- -----------------------------------------------------
-- Table `hospital`.`tb_medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`tb_medico` (
  `id_medico` INT NOT NULL AUTO_INCREMENT,
  `nombre_medico` VARCHAR(45) NOT NULL,
  `apellido_medico` VARCHAR(45) NOT NULL,
  `especialidad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_medico`),
  UNIQUE INDEX `id_medico_UNIQUE` (`id_medico` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `hospital`.`tb_enfermero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`tb_enfermero` (
  `id_enfermero` INT NOT NULL,
  `nombre_enfermero` VARCHAR(45) NOT NULL,
  `apellido_enfermero` VARCHAR(45) NOT NULL,
  `id_medico` INT NOT NULL,
  PRIMARY KEY (`id_enfermero`),
  INDEX `id_medico_idx` (`id_medico` ASC) VISIBLE,
  CONSTRAINT `id_medico`
    FOREIGN KEY (`id_medico`)
    REFERENCES `hospital`.`tb_medico` (`id_medico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `hospital`.`tb_procedimiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`tb_procedimiento` (
  `id_procedimiento` INT NOT NULL,
  `tipo_procedimiento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_procedimiento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `hospital`.`tb_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`tb_paciente` (
  `id_paciente` INT NOT NULL,
  `nombre_paciente` VARCHAR(45) NOT NULL,
  `apellido_paciente` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `id_procedimiento` INT NOT NULL,
  PRIMARY KEY (`id_paciente`),
  UNIQUE INDEX `id_paciente_UNIQUE` (`id_paciente` ASC) VISIBLE,
  INDEX `id_procedimiento_idx` (`id_procedimiento` ASC) VISIBLE,
  CONSTRAINT `id_procedimiento`
    FOREIGN KEY (`id_procedimiento`)
    REFERENCES `hospital`.`tb_procedimiento` (`id_procedimiento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `hospital`.`tb_factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`tb_factura` (
  `id_factura` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `valor_total` INT NOT NULL,
  `id_paciente` INT NOT NULL,
  PRIMARY KEY (`id_factura`),
  UNIQUE INDEX `id_factura_UNIQUE` (`id_factura` ASC) VISIBLE,
  INDEX `id_paciente_idx` (`id_paciente` ASC) VISIBLE,
  CONSTRAINT `id_paciente`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `hospital`.`tb_paciente` (`id_paciente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `hospital`.`tb_medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`tb_medicamento` (
  `id_medicamento` INT NOT NULL,
  `nombre_medicamento` VARCHAR(45) NOT NULL,
  `dosis` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_medicamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `hospital`.`tb_medico_procedimiento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`tb_medico_procedimiento` (
  `id_medico_procedimiento` INT NOT NULL,
  `id_medico` INT NOT NULL,
  `id_procedimiento` INT NOT NULL,
  PRIMARY KEY (`id_medico_procedimiento`),
  INDEX `id_medico` (`id_medico` ASC) VISIBLE,
  INDEX `id_procedimiento` (`id_procedimiento` ASC) VISIBLE,
  CONSTRAINT `tb_medico_procedimiento_ibfk_1`
    FOREIGN KEY (`id_medico`)
    REFERENCES `hospital`.`tb_medico` (`id_medico`),
  CONSTRAINT `tb_medico_procedimiento_ibfk_2`
    FOREIGN KEY (`id_procedimiento`)
    REFERENCES `hospital`.`tb_procedimiento` (`id_procedimiento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`tb_paciente_medicamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`tb_paciente_medicamento` (
  `id_paciente_medicamento` INT NOT NULL,
  `id_paciente` INT NOT NULL,
  `id_medicamento` INT NOT NULL,
  PRIMARY KEY (`id_paciente_medicamento`),
  INDEX `id_paciente` (`id_paciente` ASC) VISIBLE,
  INDEX `id_medicamento` (`id_medicamento` ASC) VISIBLE,
  CONSTRAINT `tb_paciente_medicamento_ibfk_1`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `hospital`.`tb_paciente` (`id_paciente`),
  CONSTRAINT `tb_paciente_medicamento_ibfk_2`
    FOREIGN KEY (`id_medicamento`)
    REFERENCES `hospital`.`tb_medicamento` (`id_medicamento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`telefono_enfermero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`telefono_enfermero` (
  `id_enfermero` INT NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_enfermero`, `telefono`),
  CONSTRAINT `telefono_enfermero_ibfk_1`
    FOREIGN KEY (`id_enfermero`)
    REFERENCES `hospital`.`tb_enfermero` (`id_enfermero`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`telefono_medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`telefono_medico` (
  `id_medico` INT NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_medico`, `telefono`),
  CONSTRAINT `telefono_medico_ibfk_1`
    FOREIGN KEY (`id_medico`)
    REFERENCES `hospital`.`tb_medico` (`id_medico`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hospital`.`telefono_paciente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital`.`telefono_paciente` (
  `id_paciente` INT NOT NULL,
  `telefono` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id_paciente`, `telefono`),
  CONSTRAINT `telefono_paciente_ibfk_1`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `hospital`.`tb_paciente` (`id_paciente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
