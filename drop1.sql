# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1_ora_proj JOW.dez                       #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-27 14:38                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `EMPLOYEES` DROP FOREIGN KEY `DEP_EMPLOYEES`;

ALTER TABLE `EMPLOYEES` DROP FOREIGN KEY `PROJWORK_EMPLOYEES`;

ALTER TABLE `EMPLOYEES` DROP FOREIGN KEY `DETAILS_EMPLOYEES`;

ALTER TABLE `PROJWORK` DROP FOREIGN KEY `PROJECT_PROJWORK`;

# ---------------------------------------------------------------------- #
# Drop table "EMPLOYEES"                                                 #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `EMPLOYEES` DROP PRIMARY KEY;

DROP TABLE `EMPLOYEES`;

# ---------------------------------------------------------------------- #
# Drop table "DETAILS"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `DETAILS` DROP PRIMARY KEY;

DROP TABLE `DETAILS`;

# ---------------------------------------------------------------------- #
# Drop table "PROJWORK"                                                  #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `PROJWORK` DROP PRIMARY KEY;

DROP TABLE `PROJWORK`;

# ---------------------------------------------------------------------- #
# Drop table "PROJECT"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `PROJECT` DROP PRIMARY KEY;

DROP TABLE `PROJECT`;

# ---------------------------------------------------------------------- #
# Drop table "DEP"                                                       #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `DEP` DROP PRIMARY KEY;

DROP TABLE `DEP`;
