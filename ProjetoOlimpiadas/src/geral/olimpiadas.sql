-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema olimpiadas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema olimpiadas
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `olimpiadas` DEFAULT CHARACTER SET utf8 ;
USE `olimpiadas` ;

-- -----------------------------------------------------
-- Table `olimpiadas`.`modalidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olimpiadas`.`modalidades` (
  `id_modalidade` INT(10) UNSIGNED NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `Ouro` INT(100) NULL DEFAULT NULL,
  `Prata` INT(100) NULL DEFAULT NULL,
  `Bronze` INT(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id_modalidade`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `olimpiadas`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olimpiadas`.`pais` (
  `id_pais` INT(10) UNSIGNED NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `populacao` BIGINT(20) UNSIGNED NOT NULL,
  `area` DECIMAL(15,2) NOT NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `olimpiadas`.`olimpiadas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `olimpiadas`.`olimpiadas` (
  `ano` INT(10) UNSIGNED NOT NULL,
  `tipo` ENUM('verao', 'inverno') NULL DEFAULT NULL,
  `pais_id_pais` INT(10) UNSIGNED NOT NULL,
  `modalidades_id_modalidade` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`ano`, `pais_id_pais`, `modalidades_id_modalidade`),
  INDEX `fk_olimpiadas_pais_idx` (`pais_id_pais` ASC),
  INDEX `fk_olimpiadas_modalidades1_idx` (`modalidades_id_modalidade` ASC),
  CONSTRAINT `fk_olimpiadas_pais`
    FOREIGN KEY (`pais_id_pais`)
    REFERENCES `olimpiadas`.`pais` (`id_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_olimpiadas_modalidades1`
    FOREIGN KEY (`modalidades_id_modalidade`)
    REFERENCES `olimpiadas`.`modalidades` (`id_modalidade`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
