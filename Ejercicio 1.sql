create database ejercicio1;
use ejercicio1;

create table despachos (
numero int,
capacidad int,
primary key(numero)
);

create table directores (
dni varchar(8),
nomApels varchar(255),
dniJefe varchar(8),
despacho int,
foreign key(despacho) references despachos(numero)
on delete cascade
on update cascade,
foreign key(dniJefe) references directores(dni)
on delete cascade
on update cascade,
primary key(dni)
);

INSERT INTO despachos (numero, capacidad)
VALUES
(101, 4),
(102, 3),
(103, 2),
(104, 5),
(105, 3),
(106, 4),
(107, 2),
(108, 3),
(109, 4),
(110, 2);

INSERT INTO directores (dni, nomApels, dniJefe, despacho)
VALUES
('11111111', 'Juan Pérez', NULL, 101),
('22222222', 'María Gómez', NULL, 102),
('33333333', 'Carlos Rodríguez', '11111111', 103),
('44444444', 'Ana López', '11111111', 104),
('55555555', 'Pedro Martínez', '22222222', 105),
('66666666', 'Laura Ramírez', '22222222', 106),
('77777777', 'Andrés Torres', '22222222', 107),
('88888888', 'Elena Castro', '44444444', 108),
('99999999', 'Javier Sánchez', '44444444', 109),
('10101010', 'Carmen Ruiz', '55555555', 110);

UPDATE directores
SET despacho = 110
WHERE dni = '33333333';

DELETE FROM directores
WHERE dni = '88888888';

DELETE FROM despachos
WHERE numero = 109;

