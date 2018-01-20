-- MySQL Script generated by MySQL Workbench
-- Fri Jan 19 22:24:56 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Ficha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ficha` (
  `idFicha` INT NOT NULL,
  `Dt_Ficha` DATE NULL,
  `Cs_status` CHAR(1) NOT NULL,
  `Observacao` VARCHAR(200) NULL,
  PRIMARY KEY (`idFicha`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Animais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Animais` (
  `idAnimais` INT NOT NULL,
  `Nome_animais` VARCHAR(15) NOT NULL,
  `Ficha_idFicha` INT NOT NULL,
  PRIMARY KEY (`idAnimais`),
  INDEX `fk_Animais_Ficha_idx` (`Ficha_idFicha` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`Ficha`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Ficha` (`idFicha`, `Dt_Ficha`, `Cs_status`, `Observacao`) VALUES (1, '01/01/2018', '1', 'teste do sistema');
INSERT INTO `mydb`.`Ficha` (`idFicha`, `Dt_Ficha`, `Cs_status`, `Observacao`) VALUES (2, '01/01/2018', '1', 'teste');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Animais`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Animais` (`idAnimais`, `Nome_animais`, `Ficha_idFicha`) VALUES (1, 'BOVINO', 1);
INSERT INTO `mydb`.`Animais` (`idAnimais`, `Nome_animais`, `Ficha_idFicha`) VALUES (2, 'EQUIDEO', 2);
INSERT INTO `mydb`.`Animais` (`idAnimais`, `Nome_animais`, `Ficha_idFicha`) VALUES (3, 'CAPRINO', 3);

COMMIT;

