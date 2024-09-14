-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Electrodomesticos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Electrodomesticos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Electrodomesticos` DEFAULT CHARACTER SET utf8 ;
USE `Electrodomesticos` ;

-- -----------------------------------------------------
-- Table `Electrodomesticos`.`Fabricante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Electrodomesticos`.`Fabricante` (
  `id_fabric` INT NOT NULL AUTO_INCREMENT,
  `nom_fabric` VARCHAR(45) NOT NULL,
  `país_orig` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_fabric`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Electrodomesticos`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Electrodomesticos`.`Producto` (
  `id_prod` INT NOT NULL,
  `nom_prod` VARCHAR(45) NOT NULL,
  `mod_prod` VARCHAR(45) NOT NULL,
  `precio_prod` VARCHAR(45) NOT NULL,
  `Fabricante_id_fabric` INT NOT NULL,
  PRIMARY KEY (`id_prod`, `Fabricante_id_fabric`),
  INDEX `fk_Producto_Fabricante_idx` (`Fabricante_id_fabric` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_Fabricante`
    FOREIGN KEY (`Fabricante_id_fabric`)
    REFERENCES `Electrodomesticos`.`Fabricante` (`id_fabric`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
