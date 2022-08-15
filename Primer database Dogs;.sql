create database PeluqueriaCanina;
use PeluqueriaCanina;

--Consulta 1--
create table Dueno(
	DNI int not null,
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    Telefono varchar(50) not null,
    Direccion varchar(100) not null,
    PRIMARY KEY (DNI)

);

create table Perro(
	ID_Perro int not null,
    Nombre varchar(50) not null,
    Fecha_nac varchar(50) not null,
    Sexo varchar (30) not null,
    DNI_Dueno int not null,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_Dueno) REFERENCES dueno (DNI)
);

create table Historial(
	ID_Historial int not null,
    Fecha varchar(50) not null,
    Perro int not null,
    Descripcion varchar(100) not null,
    Monto varchar(100) not null,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES perro (ID_Perro)
);

-- CONSULTA NUMERO 2 -- 
INSERTAR EN Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (40289357, "Pedro", "Garcia", "3515029879", "La Rioja 97");
INSERTAR EN Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (1, "Fito", "15/5/2020", "Macho", 40289357);



-- Datos agregados a la base de datos: 
INSERTAR EN Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALORES (40289357, "Pedro", "Garcia", "3515029879", "La Rioja 97");
INSERTAR EN Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALORES (27897231, "Pedro", "Rodriguez", "3548987654", "Av. Los Aromos 567");
INSERTAR EN Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALORES (37657897, "Nahuel", "Bustamante", "3515641236", "Av. Colón 289");
INSERTAR EN Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALORES (30299992, "Celeste", "Noriega", "3518745123", "Av. Colón 897");
INSERTAR EN Dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALORES (41279327, "Roxana", "Bustos", "3515029857", "La Rioja 71");

INSERTAR EN Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALORES (1, "Fito", "15/5/2020", "Macho", 40289357);
INSERTAR EN Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALORES (3, "Pupi", "29/9/2017", "Hembra", 30299992);
INSERTAR EN Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALORES (5, "Rocco", "7/1/2021", "Macho", 27897231);
INSERTAR EN Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALORES (7, "Lola", "6/8/2019", "Hembra", 41279327);
INSERTAR EN Perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALORES (9, "Sultán", "16/6/2022", "Macho", 37657897);

INSERTAR EN Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALORES (20, "29/11/2020", 1, "Raza: Mestizo - Baño", "$1.800");
INSERTAR EN Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALORES (110, "29/10/2017", 3, "Raza: Pitbull - Baño y corte de pelaje", "$3.000");
INSERTAR EN Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALORES (120, "8/2/2021", 5, "Raza: Beagle - Baño", "$1.800");
INSERTAR EN Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALORES (30, "11/9/2020", 7, "Raza: Mestizo - Baño, corte de pelaje y pedicure canino", "$5.000");
INSERTAR EN Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALORES (40, "19/8/2022", 9, "Raza: Caniche - Baño y Corte de pelaje", "$1.800");



--Consulta numero 9
--consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE Dueno
  SET Direccion = "Libertad 123"
  WHERE Direccion = "Celeste","Noriega"
