create database ejercicio5;
use ejercicio5;

create table facultad (
codigo int,
nombre varchar(100),
primary key(codigo)
);

create table investigadores (
dni varchar(8),
nomApels varchar(100),
facultad int,
foreign key(facultad) references facultad(codigo)
on update cascade
on delete cascade,
primary key(dni)
);

create table equipos (
numSerie varchar(4),
nombre varchar(100),
facultad int,
foreign key(facultad) references facultad(codigo)
on update cascade
on delete cascade,
primary key(numSerie)
);

create table reserva (
dni varchar(8),
numSerie varchar(4),
comienzo datetime,
fin datetime,
foreign key(dni) references investigadores(dni)
on update cascade
on delete cascade,
foreign key(numSerie) references equipos(numSerie)
on update cascade
on delete cascade,
primary key(dni, numSerie)
);

INSERT INTO facultad (codigo, nombre)
VALUES
(1, 'Facultad de Ciencias'),
(2, 'Facultad de Ingeniería'),
(3, 'Facultad de Medicina'),
(4, 'Facultad de Letras'),
(5, 'Facultad de Economía'),
(6, 'Facultad de Derecho'),
(7, 'Facultad de Arquitectura'),
(8, 'Facultad de Psicología'),
(9, 'Facultad de Química'),
(10, 'Facultad de Educación');

INSERT INTO investigadores (dni, nomApels, facultad)
VALUES
('11111111', 'Juan Pérez', 1),
('22222222', 'María Gómez', 2),
('33333333', 'Carlos Rodríguez', 1),
('44444444', 'Ana López', 3),
('55555555', 'Pedro Martínez', 4),
('66666666', 'Laura Ramírez', 2),
('77777777', 'Andrés Torres', 3),
('88888888', 'Elena Castro', 5),
('99999999', 'Javier Sánchez', 6),
('10101010', 'Carmen Ruiz', 7);

INSERT INTO equipos (numSerie, nombre, facultad)
VALUES
('E001', 'Equipo 1', 1),
('E002', 'Equipo 2', 2),
('E003', 'Equipo 3', 3),
('E004', 'Equipo 4', 1),
('E005', 'Equipo 5', 4),
('E006', 'Equipo 6', 2),
('E007', 'Equipo 7', 3),
('E008', 'Equipo 8', 5),
('E009', 'Equipo 9', 6),
('E010', 'Equipo 10', 7);

INSERT INTO reserva (dni, numSerie, comienzo, fin)
VALUES
('11111111', 'E001', '2023-07-30 10:00:00', '2023-07-30 12:00:00'),
('22222222', 'E002', '2023-07-31 09:30:00', '2023-07-31 11:30:00'),
('33333333', 'E003', '2023-08-01 14:00:00', '2023-08-01 16:00:00'),
('44444444', 'E004', '2023-08-02 15:30:00', '2023-08-02 17:30:00'),
('55555555', 'E005', '2023-08-03 11:00:00', '2023-08-03 13:00:00'),
('66666666', 'E006', '2023-08-04 13:30:00', '2023-08-04 15:30:00'),
('77777777', 'E007', '2023-08-05 16:00:00', '2023-08-05 18:00:00'),
('88888888', 'E008', '2023-08-06 10:30:00', '2023-08-06 12:30:00'),
('99999999', 'E009', '2023-08-07 12:00:00', '2023-08-07 14:00:00'),
('10101010', 'E010', '2023-08-08 09:00:00', '2023-08-08 11:00:00');

UPDATE investigadores
SET nomApels = 'Juan Gómez'
WHERE dni = '11111111';

DELETE FROM equipos
WHERE numSerie = 'E005';



