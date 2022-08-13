use peluqueria_canina;

# Consulta 1
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
    Fecha_nac date not null,
    Sexo varchar (30) not null,
    DNI_dueno int not null,
    PRIMARY KEY (ID_Perro),
    FOREIGN KEY (DNI_dueno) REFERENCES dueno (DNI)
);

create table historial(
	ID_Historial int not null,
    Fecha date not null,
    Perro int not null,
    Descripcion varchar(100) not null,
    Monto varchar(100) not null,
    PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES perro (ID_Perro)
);

INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (40289357, "Pedro", "Garcia", "3515029879", "La Rioja 97");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (27897231, "Pedro", "Rodriguez", "3548987654", "Av. Los Aromos 567");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (37657897, "Nahuel", "Bustamante", "3515641236", "Av. Colón 289");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (30299992, "Celeste", "Noriega", "3518745123", "Av. Colón 897");
INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (41279327, "Roxana", "Bustos", "3515029857", "La Rioja 71");

INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (1, "Fito", "2020-05-15", "Macho", 40289357);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (3, "Pupi", "2017-09-29", "Hembra", 30299992);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (5, "Rocco", "2021-01-07", "Macho", 27897231);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (7, "Lola", "2019-08-06", "Hembra", 41279327);
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (9, "Sultán", "2022-06-16", "Macho", 37657897);

INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (20, "2020-11-29", 1, "Raza: Mestizo - Baño", "$1.800");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (110, "2017-10-29", 3, "Raza: Pitbull - Baño y corte de pelaje", "$3.000");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (120, "2021-02-08", 5, "Raza: Beagle - Baño", "$1.800");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (30, "2020-09-11", 7, "Raza: Mestizo - Baño, corte de pelaje y pedicure canino", "$5.000");
INSERT INTO historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES (40, "2022-08-19", 9, "Raza: Caniche - Baño y Corte de pelaje", "$1.800");

# Consulta 2

INSERT INTO dueno(DNI, Nombre, Apellido, Telefono, Direccion) VALUES (36989545, "Nicolas", "Perez", "3515045678", "La Rioja 850");
INSERT INTO perro(ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES (11, "Pelusa", "2020-07-20", "Macho", 36989545);

# Consulta 3

SELECT 
    ID_Historial, Fecha
FROM
    historial;
    
DELETE FROM historial ORDER BY Fecha ASC LIMIT 1

# Consulta 6

SELECT Perro, Fecha FROM historial WHERE Fecha > '2022-01-01';

