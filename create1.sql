# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1_ora_proj JOW.dez                       #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-27 14:38                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "DEP"                                                        #
# ---------------------------------------------------------------------- #
DROP SCHEMA IF EXISTS 5605104008db;
CREATE SCHEMA 5605104008db;
USE 5605104008db;
CREATE TABLE `DEP` (
    `depno` CHAR(2) NOT NULL,
    `depname` VARCHAR(15),
    `location` VARCHAR(15),
    CONSTRAINT `PK_DEP` PRIMARY KEY (`depno`)
);

# ---------------------------------------------------------------------- #
# Add table "PROJECT"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `PROJECT` (
    `projno` CHAR(2) NOT NULL,
    `prodesc` VARCHAR(20),
    `startdate` DATE,
    `enddate` DATE,
    `budget` NUMERIC(9,2),
    CONSTRAINT `PK_PROJECT` PRIMARY KEY (`projno`)
);

# ---------------------------------------------------------------------- #
# Add table "PROJWORK"                                                   #
# ---------------------------------------------------------------------- #

CREATE TABLE `PROJWORK` (
    `projno` CHAR(2) NOT NULL,
    `empnum` CHAR(4) NOT NULL,
    `hours` NUMERIC(3),
    CONSTRAINT `PK_PROJWORK` PRIMARY KEY (`projno`, `empnum`)
);

# ---------------------------------------------------------------------- #
# Add table "DETAILS"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `DETAILS` (
    `NAME` CHAR(20) NOT NULL,
    `LAST NAME` CHAR(20) NOT NULL,
    CONSTRAINT `PK_DETAILS` PRIMARY KEY (`NAME`, `LAST NAME`)
);

# ---------------------------------------------------------------------- #
# Add table "EMPLOYEES"                                                  #
# ---------------------------------------------------------------------- #

CREATE TABLE `EMPLOYEES` (
    `empnum` CHAR(4) NOT NULL,
    `empname` VARCHAR(15),
    `hiredate` DATE,
    `salary` NUMERIC(8,2),
    `position` VARCHAR(10),
    `depno` CHAR(2) NOT NULL,
    `mgrno` CHAR(4),
    `projno` CHAR(2) NOT NULL,
    `NAME` CHAR(20) NOT NULL,
    `LAST NAME` CHAR(20) NOT NULL,
    CONSTRAINT `PK_EMPLOYEES` PRIMARY KEY (`empnum`, `projno`, `NAME`, `LAST NAME`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `EMPLOYEES` ADD CONSTRAINT `DEP_EMPLOYEES` 
    FOREIGN KEY (`depno`) REFERENCES `DEP` (`depno`);

ALTER TABLE `EMPLOYEES` ADD CONSTRAINT `PROJWORK_EMPLOYEES` 
    FOREIGN KEY (`projno`, `empnum`) REFERENCES `PROJWORK` (`projno`,`empnum`);

ALTER TABLE `EMPLOYEES` ADD CONSTRAINT `DETAILS_EMPLOYEES` 
    FOREIGN KEY (`NAME`, `LAST NAME`) REFERENCES `DETAILS` (`NAME`,`LAST NAME`);

ALTER TABLE `PROJWORK` ADD CONSTRAINT `PROJECT_PROJWORK` 
    FOREIGN KEY (`projno`) REFERENCES `PROJECT` (`projno`);
