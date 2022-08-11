create database peluqueria;
use peluqueria;

-- CONSULTA NUMERO 1 --
create table dueno(
	DNI int not null,
    Nombre varchar(50) not null,
    Apellido varchar(50) not null,
    Telefono varchar(50) not null,
    Direccion varchar(100) not null,
    PRIMARY KEY (DNI)

);

create table perro(
	ID_Perro int not null,
    Nombre varchar(50) not null,
    Fecha_nac varchar(50) not null,
    Sexo varchar (30) not null,
    DNI_dueno int not null,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES dueno (DNI)
);

create table historial(
	ID_Historial int not null,
    Fecha varchar(50) not null,
    Perro int not null,
    Descripcion varchar(100) not null,
    Monto varchar(100) not null,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES perro (ID_Perro)
);

-- CONSULTA NUMERO 2 -- 
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (40289357, "Pedro", "Garcia", "3515029879", "La Rioja 97");
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (1, "Fito", "15/5/2020", "Macho", 40289357);

-- CONSULTA NUMERO 4 --
SELECT * FROM perro;
UPDATE perro
SET fecha_nac = "9/3/2021"
WHERE ID_Perro = 5

-- CONSULTA NUMERO 5 --
SELECT * FROM perro as p, dueno as d WHERE p.DNI_dueno = d.DNI and d.Nombre = "Pedro";
-- sale la cruz roja aca pero no se porque, pero la consulta si funciona si borra todos
-- los otros INSERT y Consultas.

-- DATOS QUE YO AGREGE A LA BASE DE DATOS: 
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (40289357, "Pedro", "Garcia", "3515029879", "La Rioja 97");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (27897231, "Pedro", "Rodriguez", "3548987654", "Av. Los Aromos 567");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (37657897, "Nahuel", "Bustamante", "3515641236", "Av. Colón 289");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (30299992, "Celeste", "Noriega", "3518745123", "Av. Colón 897");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (41279327, "Roxana", "Bustos", "3515029857", "La Rioja 71");

INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (1, "Fito", "15/5/2020", "Macho", 40289357);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (3, "Pupi", "29/9/2017", "Hembra", 30299992);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (5, "Rocco", "7/1/2021", "Macho", 27897231);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (7, "Lola", "6/8/2019", "Hembra", 41279327);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (9, "Sultán", "16/6/2022", "Macho", 37657897);

INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (20, "29/11/2020", 1, "Raza: Mestizo - Baño", "$1.800");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (110, "29/10/2017", 3, "Raza: Pitbull - Baño y corte de pelaje", "$3.000");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (120, "8/2/2021", 5, "Raza: Beagle - Baño", "$1.800");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (30, "11/9/2020", 7, "Raza: Mestizo - Baño, corte de pelaje y pedicure canino", "$5.000");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (40, "19/8/2022", 9, "Raza: Caniche - Baño y Corte de pelaje", "$1.800");
