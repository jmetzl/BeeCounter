CREATE TABLE `beecounterdb`.`Entrance` (`ID` INT NOT NULL , `Number` INT NOT NULL , `Name` TEXT NOT NULL ) ENGINE = InnoDB;

CREATE TABLE `beecounterdb`.`Light_barriere` (`LB_ID` INT NOT NULL , `LB_TYPE` TEXT NOT NULL , `LB_GPIO_PORT` INT NOT NULL , `ENTRANCE_ID` INT NOT NULL ) ENGINE = InnoDB;

-- Foreign key
ALTER TABLE `Light_barriere` ADD CONSTRAINT `FK_ENTRANCE_ID` FOREIGN KEY (`ENTRANCE_ID`) REFERENCES `Entrance`(`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;