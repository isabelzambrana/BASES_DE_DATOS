-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pruebas_ayuda_2024
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pruebas_ayuda_2024
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pruebas_ayuda_2024` DEFAULT CHARACTER SET utf8 ;
USE `pruebas_ayuda_2024` ;

-- -----------------------------------------------------
-- Table `pruebas_ayuda_2024`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pruebas_ayuda_2024`.`admin` (
  `idadmin` INT NOT NULL,
  `nombres_admin` VARCHAR(45) NOT NULL,
  `app_admin` VARCHAR(45) NOT NULL,
  `apm_admin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idadmin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `pruebas_ayuda_2024`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pruebas_ayuda_2024`.`usuario` (
  `idusuario` INT NOT NULL,
  `nombre_usuario` VARCHAR(45) NOT NULL,
  `contraseña_usuario` VARCHAR(45) NOT NULL,
  `admin_idadmin` INT NOT NULL,
  PRIMARY KEY (`idusuario`, `admin_idadmin`),
  INDEX `fk_usuario_admin_idx` (`admin_idadmin` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
