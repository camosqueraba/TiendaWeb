-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tiendabd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tiendabd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tiendabd` DEFAULT CHARACTER SET utf8 ;
USE `tiendabd` ;

-- -----------------------------------------------------
-- Table `tiendabd`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendabd`.`Cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `cedula` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiendabd`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendabd`.`Categoria` (
  `idCategoria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiendabd`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendabd`.`Producto` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `marca` VARCHAR(45) NULL,
  `precio` FLOAT NULL,
  `Categoria_idCategoria` INT NOT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `fk_Producto_Categoria1_idx` (`Categoria_idCategoria` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_Categoria1`
    FOREIGN KEY (`Categoria_idCategoria`)
    REFERENCES `tiendabd`.`Categoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiendabd`.`SubVenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendabd`.`SubVenta` (
  `id_subVenta` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NULL,
  `sub_importe` FLOAT NULL,
  `Producto_id_producto` INT NOT NULL,
  PRIMARY KEY (`id_subVenta`),
  INDEX `fk_SubVenta_Producto1_idx` (`Producto_id_producto` ASC) VISIBLE,
  CONSTRAINT `fk_SubVenta_Producto1`
    FOREIGN KEY (`Producto_id_producto`)
    REFERENCES `tiendabd`.`Producto` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiendabd`.`Vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendabd`.`Vendedor` (
  `id_vendedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `cedula` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`id_vendedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tiendabd`.`Venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tiendabd`.`Venta` (
  `id_venta` INT NOT NULL,
  `Cliente_id_cliente` INT NOT NULL,
  `SubVenta_id_subVenta` INT NOT NULL,
  `Vendedor_id_vendedor` INT NOT NULL,
  `importe` FLOAT NULL,
  `fecha` DATE NULL,
  PRIMARY KEY (`id_venta`),
  INDEX `fk_Venta_Cliente_idx` (`Cliente_id_cliente` ASC) VISIBLE,
  INDEX `fk_Venta_SubVenta1_idx` (`SubVenta_id_subVenta` ASC) VISIBLE,
  INDEX `fk_Venta_Vendedor1_idx` (`Vendedor_id_vendedor` ASC) VISIBLE,
  CONSTRAINT `fk_Venta_Cliente`
    FOREIGN KEY (`Cliente_id_cliente`)
    REFERENCES `tiendabd`.`Cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venta_SubVenta1`
    FOREIGN KEY (`SubVenta_id_subVenta`)
    REFERENCES `tiendabd`.`SubVenta` (`id_subVenta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venta_Vendedor1`
    FOREIGN KEY (`Vendedor_id_vendedor`)
    REFERENCES `tiendabd`.`Vendedor` (`id_vendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
