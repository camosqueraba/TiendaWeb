-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tienda_bd
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tienda_bd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tienda_bd` DEFAULT CHARACTER SET utf8 ;
USE `tienda_bd` ;

-- -----------------------------------------------------
-- Table `tienda_bd`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_bd`.`Categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categoria`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `tienda_bd`.`Marca` (
  `id_marca` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id_marca`))
ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `tienda_bd`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_bd`.`Producto` (
  `id_producto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
 
  `precio` FLOAT NULL,
  `Categoria_idCategoria` INT NOT NULL,
  `Marca_id_marca` INT NOT NULL,
  PRIMARY KEY (`id_producto`),
  INDEX `fk_Producto_Categoria1_idx` (`Categoria_idCategoria`),
  INDEX `fk_Producto_Marca1_idx` (`Marca_id_marca`),
  CONSTRAINT `fk_Producto_Categoria1`
    FOREIGN KEY (`Categoria_idCategoria`)
    REFERENCES `tienda_bd`.`Categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_Marca1`
    FOREIGN KEY (`Marca_id_marca`)
    REFERENCES `tienda_bd`.`Marca` (`id_marca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tienda_bd`.`SubVenta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_bd`.`SubVenta` (
  `id_subVenta` INT NOT NULL AUTO_INCREMENT,
  `cantidad` INT NULL,
  `sub_importe` FLOAT NULL,
  `Producto_id_producto` INT NOT NULL,
  PRIMARY KEY (`id_subVenta`),
  INDEX `fk_SubVenta_Producto1_idx` (`Producto_id_producto` ) ,
  CONSTRAINT `fk_SubVenta_Producto1`
    FOREIGN KEY (`Producto_id_producto`)
    REFERENCES `tienda_bd`.`Producto` (`id_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tienda_bd`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_bd`.`Cliente` (
  `id_cliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `cedula` VARCHAR(45) NOT NULL ,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE INDEX `cedula_UNIQUE` (`cedula`)
  )
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `tienda_bd`.`Vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_bd`.`Vendedor` (
  `id_vendedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `cedula` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`id_vendedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tienda_bd`.`Venta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tienda_bd`.`Venta` (
  `id_venta` INT NOT NULL,
  `importe` FLOAT NULL,
  `fecha` DATE NULL,
  `SubVenta_id_subVenta` INT NOT NULL,
  `Cliente_id_cliente` INT NOT NULL,
  `Vendedor_id_vendedor` INT NOT NULL,
  PRIMARY KEY (`id_venta`),
  INDEX `fk_Venta_SubVenta_idx` (`SubVenta_id_subVenta` ) ,
  INDEX `fk_Venta_Cliente1_idx` (`Cliente_id_cliente` ) ,
  INDEX `fk_Venta_Vendedor1_idx` (`Vendedor_id_vendedor` ) ,
  CONSTRAINT `fk_Venta_SubVenta`
    FOREIGN KEY (`SubVenta_id_subVenta`)
    REFERENCES `tienda_bd`.`SubVenta` (`id_subVenta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venta_Cliente1`
    FOREIGN KEY (`Cliente_id_cliente`)
    REFERENCES `tienda_bd`.`Cliente` (`id_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venta_Vendedor1`
    FOREIGN KEY (`Vendedor_id_vendedor`)
    REFERENCES `tienda_bd`.`Vendedor` (`id_vendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;






SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES (NULL, 'categoria1');
INSERT INTO `cliente` (`id_cliente`, `nombre`, `cedula`, `telefono`) VALUES (NULL, 'cliente1', 'cedulacliente1', 'telefonocliente1');
INSERT INTO `producto` (`id_producto`, `nombre`, `marca`, `precio`, `Categoria_id_categoria`) VALUES (NULL, 'producto1', '1', 20000, '1');
INSERT INTO `marca` (`id_marca`, `nombre`) VALUES ('32', 'marca32');
INSERT INTO `producto` (`id_producto`, `nombre`, `marca`, `precio`, `Categoria_idCategoria`, `Marca_id_marca`) VALUES ('1', 'producto1', '1', '1000', '1', '32');
INSERT INTO `subventa` (`id_subVenta`, `cantidad`, `sub_importe`, `Producto_id_producto`) VALUES ('2', '1', '1000', '1');
INSERT INTO `vendedor` (`id_vendedor`, `nombre`, `cedula`, `telefono`) VALUES ('2', 'nombre_vendedor2', 'cedula_vendedor2', 'telefono_vendedor2');