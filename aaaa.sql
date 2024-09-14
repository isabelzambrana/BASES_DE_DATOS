-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema arriendos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema arriendos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `arriendos` DEFAULT CHARACTER SET utf8 ;
USE `arriendos` ;

-- -----------------------------------------------------
-- Table `arriendos`.`Arrendatario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arriendos`.`Arrendatario` (
  `cod_a` INT NOT NULL AUTO_INCREMENT,
  `nom_a` VARCHAR(45) NOT NULL,
  `appa` VARCHAR(45) NULL,
  `apma` VARCHAR(45) NULL,
  `edad` INT NOT NULL,
  `num_telf` INT NOT NULL,
  `fecha_arriendo` DATE NOT NULL,
  PRIMARY KEY (`cod_a`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arriendos`.`Piso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arriendos`.`Piso` (
  `cod_piso` INT NOT NULL AUTO_INCREMENT,
  `nom_piso` VARCHAR(45) NOT NULL,
  `cantidad_of` INT NOT NULL,
  PRIMARY KEY (`cod_piso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arriendos`.`Oficinas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arriendos`.`Oficinas` (
  `cod_of` INT NOT NULL AUTO_INCREMENT,
  `nombre_of` VARCHAR(45) NOT NULL,
  `sup_of` INT NOT NULL,
  `precio_of` VARCHAR(45) NOT NULL,
  `Arrendatario_cod_a` INT NOT NULL,
  `Piso_cod_piso` INT NOT NULL,
  PRIMARY KEY (`cod_of`, `Arrendatario_cod_a`, `Piso_cod_piso`),
  INDEX `fk_Oficinas_Arrendatario_idx` (`Arrendatario_cod_a` ASC) VISIBLE,
  INDEX `fk_Oficinas_Piso1_idx` (`Piso_cod_piso` ASC) VISIBLE,
  CONSTRAINT `fk_Oficinas_Arrendatario`
    FOREIGN KEY (`Arrendatario_cod_a`)
    REFERENCES `arriendos`.`Arrendatario` (`cod_a`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Oficinas_Piso1`
    FOREIGN KEY (`Piso_cod_piso`)
    REFERENCES `arriendos`.`Piso` (`cod_piso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = 'O';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
