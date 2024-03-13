-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Inventory_Management_System
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Inventory_Management_System
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Inventory_Management_System` DEFAULT CHARACTER SET utf8 ;
USE `Inventory_Management_System` ;

-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Warehouse`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Warehouse` (
  `Warehouse_ID` INT NOT NULL,
  `Warehouse_Name` VARCHAR(45) NULL,
  `Street_Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Zip_Code` VARCHAR(45) NULL,
  PRIMARY KEY (`Warehouse_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Employee` (
  `Employee_ID` INT NOT NULL,
  `Employee_Name` VARCHAR(45) NULL,
  `Designation` VARCHAR(45) NULL,
  `Manager_ID` VARCHAR(45) NULL,
  PRIMARY KEY (`Employee_ID`),
  CONSTRAINT `Warehouse_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Warehouse` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Supplier` (
  `Supplier_ID` INT NOT NULL,
  `Supplier_Name` VARCHAR(45) NULL,
  `Contact_Person` VARCHAR(45) NULL,
  `Phone_Number` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`Supplier_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Order` (
  `Order_ID` INT NOT NULL,
  `Warehouse_ID` VARCHAR(45) NULL,
  `Supplier_ID` VARCHAR(45) NULL,
  `Order_Date` VARCHAR(45) NULL,
  PRIMARY KEY (`Order_ID`),
  CONSTRAINT `Warehouse_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Warehouse` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Supplier_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Supplier` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Shipment Facilitator`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Shipment Facilitator` (
  `Facilitator_ID` INT NOT NULL,
  `Facilitator_Name` VARCHAR(45) NULL,
  `Facilitator_Contact` VARCHAR(45) NULL,
  `Facilitator_Cost_Per_KG` VARCHAR(45) NULL,
  PRIMARY KEY (`Facilitator_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Shipment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Shipment` (
  `Shipment_ID` INT NOT NULL,
  `Supplier_ID` VARCHAR(45) NULL,
  `Facilitator_ID` VARCHAR(45) NULL,
  `Warehouse_ID` VARCHAR(45) NULL,
  `Dispatch_Address` VARCHAR(45) NULL,
  `Delivery_Address` VARCHAR(45) NULL,
  `Dispatch_Date` VARCHAR(45) NULL,
  PRIMARY KEY (`Shipment_ID`),
  CONSTRAINT `Warehouse_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Warehouse` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Supplier_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Supplier` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Facilitator_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Shipment Facilitator` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Item` (
  `Item_ID` INT NOT NULL,
  `Order_ID` VARCHAR(45) NULL,
  `Item_Name` VARCHAR(45) NULL,
  `Item_Description` VARCHAR(45) NULL,
  `Item_Quantity` VARCHAR(45) NULL,
  `Item_Cost_Price` VARCHAR(45) NULL,
  `` VARCHAR(45) NULL,
  PRIMARY KEY (`Item_ID`),
  CONSTRAINT `Order_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Order` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Invoice` (
  `Invoice_ID` INT NOT NULL,
  `Warehouse_ID` VARCHAR(45) NULL,
  `Supplier_ID` VARCHAR(45) NULL,
  `Amount` VARCHAR(45) NULL,
  PRIMARY KEY (`Invoice_ID`),
  CONSTRAINT `Supplier_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Supplier` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Warehouse_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Warehouse` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Store` (
  `Store_Name` VARCHAR(45) NULL,
  `Street_Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Zip_Code` VARCHAR(45) NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Inventory_Management_System`.`Transacts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Inventory_Management_System`.`Transacts` (
  `Store_ID` INT NOT NULL,
  `Warehouse_ID` VARCHAR(45) NOT NULL,
  `Item_ID` VARCHAR(45) NOT NULL,
  `Item_Quantity` VARCHAR(45) NULL,
  `Transaction_Date` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Store_ID`, `Warehouse_ID`, `Item_ID`, `Transaction_Date`),
  CONSTRAINT `Warehouse_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Warehouse` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Store_ID`
    FOREIGN KEY ()
    REFERENCES `Inventory_Management_System`.`Store` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
