-- MySQL Script generated by MySQL Workbench
-- Fri Nov 26 22:14:50 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema int222
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `int222` ;

-- -----------------------------------------------------
-- Schema int222
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `int222` DEFAULT CHARACTER SET utf8 ;
USE `int222` ;

-- -----------------------------------------------------
-- Table `int222`.`Type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `int222`.`Type` ;

CREATE TABLE IF NOT EXISTS `int222`.`Type` (
  `typeId` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`typeId`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `int222`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `int222`.`User` ;

CREATE TABLE IF NOT EXISTS `int222`.`User` (
  `userId` INT NOT NULL AUTO_INCREMENT,
  `userName` VARCHAR(45) NOT NULL,
  `password` VARCHAR(60) NOT NULL,
  `address` VARCHAR(150) NOT NULL,
  `tel` VARCHAR(10) NOT NULL,
  `fullName` VARCHAR(80) NOT NULL,
  `role` VARCHAR(20) NOT NULL,
  `status` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE INDEX `userName_UNIQUE` (`userName` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `int222`.`Product`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `int222`.`Product` ;

CREATE TABLE IF NOT EXISTS `int222`.`Product` (
  `productId` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(55) NOT NULL,
  `description` VARCHAR(550) NOT NULL,
  `price` DOUBLE(8,2) NOT NULL,
  `saleDate` DATE NOT NULL,
  `imageName` VARCHAR(100) NOT NULL,
  `quantity` INT(6) NOT NULL,
  `typeId` INT NOT NULL,
  `userId` INT NOT NULL,
  PRIMARY KEY (`productId`, `typeId`, `userId`),
  INDEX `fk_Product_Type1_idx` (`typeId` ASC) VISIBLE,
  INDEX `fk_Product_User1_idx` (`userId` ASC) VISIBLE,
  CONSTRAINT `fk_Product_Type1`
    FOREIGN KEY (`typeId`)
    REFERENCES `int222`.`Type` (`typeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Product_User1`
    FOREIGN KEY (`userId`)
    REFERENCES `int222`.`User` (`userId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `int222`.`Color`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `int222`.`Color` ;

CREATE TABLE IF NOT EXISTS `int222`.`Color` (
  `colorId` INT NOT NULL AUTO_INCREMENT,
  `colorName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`colorId`),
  UNIQUE INDEX `colorName_UNIQUE` (`colorName` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `int222`.`HaveColor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `int222`.`HaveColor` ;

CREATE TABLE IF NOT EXISTS `int222`.`HaveColor` (
  `productId` INT NOT NULL,
  `colorId` INT NOT NULL,
  PRIMARY KEY (`productId`, `colorId`),
  INDEX `fk_HaveColor_Product1_idx` (`productId` ASC) VISIBLE,
  INDEX `fk_HaveColor_Color1_idx` (`colorId` ASC) VISIBLE,
  CONSTRAINT `fk_HaveColor_Product1`
    FOREIGN KEY (`productId`)
    REFERENCES `int222`.`Product` (`productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_HaveColor_Color1`
    FOREIGN KEY (`colorId`)
    REFERENCES `int222`.`Color` (`colorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `int222`.`UserOrder`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `int222`.`UserOrder` ;

CREATE TABLE IF NOT EXISTS `int222`.`UserOrder` (
  `userOrderId` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `userId` INT NOT NULL,
  PRIMARY KEY (`userOrderId`, `userId`),
  INDEX `fk_Order_User1_idx` (`userId` ASC) VISIBLE,
  CONSTRAINT `fk_Order_User1`
    FOREIGN KEY (`userId`)
    REFERENCES `int222`.`User` (`userId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `int222`.`Comment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `int222`.`Comment` ;

CREATE TABLE IF NOT EXISTS `int222`.`Comment` (
  `commentId` INT NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(200) NOT NULL,
  `productId` INT NOT NULL,
  `userId` INT NOT NULL,
  PRIMARY KEY (`commentId`),
  INDEX `fk_Comment_Product1_idx` (`productId` ASC) VISIBLE,
  INDEX `fk_Comment_User1_idx` (`userId` ASC) VISIBLE,
  CONSTRAINT `fk_Comment_Product1`
    FOREIGN KEY (`productId`)
    REFERENCES `int222`.`Product` (`productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comment_User1`
    FOREIGN KEY (`userId`)
    REFERENCES `int222`.`User` (`userId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `int222`.`OrderDetail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `int222`.`OrderDetail` ;

CREATE TABLE IF NOT EXISTS `int222`.`OrderDetail` (
  `orderDetailId` INT NOT NULL AUTO_INCREMENT,
  `quantity` INT NOT NULL,
  `totalPrice` DOUBLE(15,2) NOT NULL,
  `colorId` INT NOT NULL,
  `productId` INT NOT NULL,
  `userOrderId` INT NOT NULL,
  PRIMARY KEY (`orderDetailId`, `colorId`, `productId`),
  INDEX `fk_OrderDetail_Color1_idx` (`colorId` ASC) VISIBLE,
  INDEX `fk_OrderDetail_Product1_idx` (`productId` ASC) VISIBLE,
  INDEX `fk_OrderDetail_UserOrder1_idx` (`userOrderId` ASC) VISIBLE,
  CONSTRAINT `fk_OrderDetail_Color1`
    FOREIGN KEY (`colorId`)
    REFERENCES `int222`.`Color` (`colorId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderDetail_Product1`
    FOREIGN KEY (`productId`)
    REFERENCES `int222`.`Product` (`productId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderDetail_UserOrder1`
    FOREIGN KEY (`userOrderId`)
    REFERENCES `int222`.`UserOrder` (`userOrderId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
