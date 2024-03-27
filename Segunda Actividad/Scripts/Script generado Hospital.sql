-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Hospital
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Hospital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Hospital` DEFAULT CHARACTER SET utf8 ;
USE `Hospital` ;

-- -----------------------------------------------------
-- Table `Hospital`.`Medico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital`.`Medico` ;

CREATE TABLE IF NOT EXISTS `Hospital`.`Medico` (
  `IdMedico` INT NOT NULL AUTO_INCREMENT,
  `NombreMedico` VARCHAR(100) NOT NULL,
  `ApellidoMedico` VARCHAR(100) NOT NULL,
  `Especialidad` VARCHAR(45) NULL,
  PRIMARY KEY (`IdMedico`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Enfermero`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital`.`Enfermero` ;

CREATE TABLE IF NOT EXISTS `Hospital`.`Enfermero` (
  `IdEnfermero` INT NOT NULL AUTO_INCREMENT,
  `NombreEnfermero` VARCHAR(100) NOT NULL,
  `ApellidoEnfermero` VARCHAR(120) NOT NULL,
  `IdMedico` INT NULL,
  PRIMARY KEY (`IdEnfermero`),
  INDEX `IdMedico_idx` (`IdMedico` ASC) VISIBLE,
  CONSTRAINT `IdMedicoConstraint`
    FOREIGN KEY (`IdMedico`)
    REFERENCES `Hospital`.`Medico` (`IdMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Procedimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital`.`Procedimiento` ;

CREATE TABLE IF NOT EXISTS `Hospital`.`Procedimiento` (
  `IdProcedimiento` INT NOT NULL AUTO_INCREMENT,
  `TipoProcedimiento` VARCHAR(45) NULL,
  PRIMARY KEY (`IdProcedimiento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Paciente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital`.`Paciente` ;

CREATE TABLE IF NOT EXISTS `Hospital`.`Paciente` (
  `idPaciente` INT NOT NULL AUTO_INCREMENT,
  `NombrePaciente` VARCHAR(45) NOT NULL,
  `ApellidoPaciente` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NULL,
  `IdProcedimiento` INT NULL,
  PRIMARY KEY (`idPaciente`),
  INDEX `IdProcedimientoConstraint_idx` (`IdProcedimiento` ASC) VISIBLE,
  CONSTRAINT `IdProcedimientoConstraint`
    FOREIGN KEY (`IdProcedimiento`)
    REFERENCES `Hospital`.`Procedimiento` (`IdProcedimiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Telefono`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital`.`Telefono` ;

CREATE TABLE IF NOT EXISTS `Hospital`.`Telefono` (
  `IdPersonal` INT NOT NULL,
  `NumeroTelefono` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`IdPersonal`, `NumeroTelefono`),
  CONSTRAINT `IdPersonalEnfermero`
    FOREIGN KEY (`IdPersonal`)
    REFERENCES `Hospital`.`Enfermero` (`IdEnfermero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IdPersonalMedico`
    FOREIGN KEY (`IdPersonal`)
    REFERENCES `Hospital`.`Medico` (`IdMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IdPersonalPaciente`
    FOREIGN KEY (`IdPersonal`)
    REFERENCES `Hospital`.`Paciente` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Medicamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital`.`Medicamento` ;

CREATE TABLE IF NOT EXISTS `Hospital`.`Medicamento` (
  `IdMedicamento` INT NOT NULL AUTO_INCREMENT,
  `NombreMedicamento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`IdMedicamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`PacienteMedicamento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital`.`PacienteMedicamento` ;

CREATE TABLE IF NOT EXISTS `Hospital`.`PacienteMedicamento` (
  `IdPaciente` INT NOT NULL,
  `IdMedicamento` INT NOT NULL,
  `Dosis` VARCHAR(45) NULL,
  `Fecha` DATE NULL,
  `IdPacienteMedicamento` INT NOT NULL AUTO_INCREMENT,
  INDEX `IdMedicamentoConstraint_idx` (`IdMedicamento` ASC) VISIBLE,
  PRIMARY KEY (`IdPacienteMedicamento`),
  CONSTRAINT `IdPacienteConstraint`
    FOREIGN KEY (`IdPaciente`)
    REFERENCES `Hospital`.`Paciente` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IdMedicamentoConstraint`
    FOREIGN KEY (`IdMedicamento`)
    REFERENCES `Hospital`.`Medicamento` (`IdMedicamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`MedicoProcedimiento`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital`.`MedicoProcedimiento` ;

CREATE TABLE IF NOT EXISTS `Hospital`.`MedicoProcedimiento` (
  `IdMedicoProcedimiento` INT NOT NULL AUTO_INCREMENT,
  `IdMedico` INT NULL,
  `IdProcedimiento` INT NULL,
  PRIMARY KEY (`IdMedicoProcedimiento`),
  INDEX `IdMedicoConstraint_idx` (`IdMedico` ASC) VISIBLE,
  INDEX `IdProcedimientoConstraint_idx` (`IdProcedimiento` ASC) VISIBLE,
  CONSTRAINT `IdMedicoConstraint`
    FOREIGN KEY (`IdMedico`)
    REFERENCES `Hospital`.`Medico` (`IdMedico`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `IdProcedimientoConstraint`
    FOREIGN KEY (`IdProcedimiento`)
    REFERENCES `Hospital`.`Procedimiento` (`IdProcedimiento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Hospital`.`Factura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Hospital`.`Factura` ;

CREATE TABLE IF NOT EXISTS `Hospital`.`Factura` (
  `IdFactura` INT NOT NULL AUTO_INCREMENT,
  `Fecha` DATE NOT NULL,
  `Precio` DECIMAL(2) NULL,
  `IdPaciente` INT NULL,
  PRIMARY KEY (`IdFactura`),
  INDEX `IdPacienteConstraint_idx` (`IdPaciente` ASC) VISIBLE,
  CONSTRAINT `IdPacienteConstraint`
    FOREIGN KEY (`IdPaciente`)
    REFERENCES `Hospital`.`Paciente` (`idPaciente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
