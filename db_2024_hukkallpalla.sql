-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_2024.proyecto
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_2024.proyecto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_2024.proyecto` DEFAULT CHARACTER SET utf8 ;
USE `db_2024.proyecto` ;

-- -----------------------------------------------------
-- Table `db_2024.proyecto`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_2024.proyecto`.`usuario` (
  `idusuario` INT NOT NULL,
  `correo_usuario` VARCHAR(45) NOT NULL,
  `contraseña_usuario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_2024.proyecto`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_2024.proyecto`.`admin` (
  `idadmin` INT NOT NULL,
  `nombres_admin` VARCHAR(45) NOT NULL,
  `app_admin` VARCHAR(45) NOT NULL,
  `apm_admin` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idadmin`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_2024.proyecto`.`info_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_2024.proyecto`.`info_usuario` (
  `idinfo_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(45) NULL,
  `ap_p` VARCHAR(45) NULL,
  `ap_m` VARCHAR(45) NULL,
  `telefono` INT NULL,
  `direccion` VARCHAR(45) NULL,
  `monedas` INT NULL,
  `fecha_n` DATE NULL,
  `rol` VARCHAR(45) NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idinfo_usuario`, `usuario_idusuario`),
  INDEX `fk_info_usuario_usuario_idx` (`usuario_idusuario` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_2024.proyecto`.`info_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_2024.proyecto`.`info_usuario` (
  `idinfo_usuario` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(45) NULL,
  `ap_p` VARCHAR(45) NULL,
  `ap_m` VARCHAR(45) NULL,
  `telefono` INT NULL,
  `direccion` VARCHAR(45) NULL,
  `monedas` INT NULL,
  `fecha_n` DATE NULL,
  `rol` VARCHAR(45) NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idinfo_usuario`, `usuario_idusuario`),
  INDEX `fk_info_usuario_usuario_idx` (`usuario_idusuario` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_2024.proyecto`.`sesión`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_2024.proyecto`.`sesión` (
  `idsesión` INT NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idsesión`, `usuario_idusuario`),
  INDEX `fk_sesión_usuario1_idx` (`usuario_idusuario` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_2024.proyecto`.`recojo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_2024.proyecto`.`recojo` (
  `idrecojo` INT NOT NULL AUTO_INCREMENT,
  `fecha` DATE NOT NULL,
  `cantidad` DOUBLE NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idrecojo`, `usuario_idusuario`),
  INDEX `fk_recojo_usuario1_idx` (`usuario_idusuario` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_2024.proyecto`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_2024.proyecto`.`producto` (
  `idproducto` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `precio` INT NOT NULL,
  `cantidad` INT NOT NULL,
  PRIMARY KEY (`idproducto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_2024.proyecto`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_2024.proyecto`.`producto` (
  `idproducto` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `precio` INT NOT NULL,
  `cantidad` INT NOT NULL,
  PRIMARY KEY (`idproducto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_2024.proyecto`.`intercambio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_2024.proyecto`.`intercambio` (
  `producto_idproducto` INT NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  `fecha` DATE NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`producto_idproducto`, `usuario_idusuario`),
  INDEX `fk_producto_has_usuario_usuario1_idx` (`usuario_idusuario` ASC) ,
  INDEX `fk_producto_has_usuario_producto1_idx` (`producto_idproducto` ASC) )
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
