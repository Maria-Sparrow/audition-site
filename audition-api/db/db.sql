-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema audition-db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema audition-db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `audition-db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `audition-db` ;

-- -----------------------------------------------------
-- Table `audition-db`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `audition-db`.`user` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `audition-db`.`tariff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `audition-db`.`tariff` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  `price` FLOAT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `audition-db`.`feedback`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `audition-db`.`feedback` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `content` VARCHAR(500) NOT NULL,
  `date` DATE NOT NULL,
  `user_id` INT NOT NULL,
  `tariff_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `feedback_user_idx` (`user_id` ASC) VISIBLE,
  INDEX `feedback_tariff_idx` (`tariff_id` ASC) VISIBLE,
  CONSTRAINT `feedback_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `audition-db`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `feedback_tariff`
    FOREIGN KEY (`tariff_id`)
    REFERENCES `audition-db`.`tariff` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `audition-db`.`post_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `audition-db`.`post_type` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `audition-db`.`post`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `audition-db`.`post` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `text` VARCHAR(500) NOT NULL,
  `img_link` VARCHAR(200) NOT NULL,
  `type_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `post_post_type_idx` (`type_id` ASC) VISIBLE,
  CONSTRAINT `post_post_type`
    FOREIGN KEY (`type_id`)
    REFERENCES `audition-db`.`post_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `audition-db`.`service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `audition-db`.`service` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `description` VARCHAR(500) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
