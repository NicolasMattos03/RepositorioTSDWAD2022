-- Creación de la base de datos --
create database if not exists PeluqueriaCanina;

-- Selección de la base de datos --
use PeluqueriaCanina;

-- Creación de las tablas --
CREATE TABLE IF NOT EXISTS `PeluqueriaCanina`.`Dueno` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(20) NULL,
  `Apellido` VARCHAR(20) NULL,
  `Telefono` VARCHAR(15) NULL,
  `Direccion` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`)
  
  );

CREATE TABLE IF NOT EXISTS `PeluqueriaCanina`.`Perro` (
  `ID_Perro` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Fecha_nac` DATE NULL,
  `Sexo` VARCHAR(45) NULL,
  `DNI_dueno` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`, `DNI_dueno`),
	FOREIGN KEY (`DNI_dueno`) REFERENCES dueno (`DNI`)

);
    
CREATE TABLE IF NOT EXISTS `PeluqueriaCanina`.`Historial` (
  `ID_Historial` INT NOT NULL AUTO_INCREMENT,
  `Fecha` DATE NULL,
  `Perro` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  `Monto` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_Historial`, `Perro`),
 FOREIGN KEY (`Perro`) REFERENCES perro (`ID_Perro`)
 );	

-- Rellenado de tablas --
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (40289357, "Pedro", "Garcia", "3515029879", "La Rioja 97");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (27897231, "Pedro", "Rodriguez", "3548987654", "Av. Los Aromos 567");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (37657897, "Nahuel", "Bustamante", "3515641236", "Av. Colón 289");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (30299992, "Celeste", "Noriega", "3518745123", "Av. Colón 897");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (41279327, "Roxana", "Bustos", "3515029857", "La Rioja 71");

INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (1, "Fito", '2020-05-15', "Macho", 40289357);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (3, "Pupi",'2017-09-29', "Hembra", 30299992);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (5, "Rocco", '2021-01-07', "Macho", 27897231);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (7, "Lola", '2019-08-06', "Hembra", 41279327);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (9, "Sultán", '2022-06-16', "Macho", 37657897);

INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (20, '2020-11-29', 1, "Raza: Mestizo - Baño", "$1.800");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (110, '2017-10-29', 3, "Raza: Pitbull - Baño y corte de pelaje", "$3.000");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (120, '2021-02-08', 5, "Raza: Beagle - Baño", "$1.800");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (30, '2020-09-11', 7, "Raza: Mestizo - Baño, corte de pelaje y pedicure canino", "$5.000");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (40, '2022-08-19', 9, "Raza: Caniche - Baño y Corte de pelaje", "$1.800");

-- Consulta numero 7 --
SELECT Monto FROM Historial WHERE Fecha > 2022-07-01 AND Fecha < 2022-07-31;

-- Consulta numero 8 --

-- La linea dará error por ser una clave foránea, necesitamos un perro con la ID de 10 --
-- Que a su vez necesitará un Dueño! --
INSERT INTO Dueno (DNI) VALUES (99999999);
INSERT INTO Perro (ID_Perro, DNI_dueno) VALUES (10, 99999999);
INSERT INTO Historial (Perro) VALUES (10);