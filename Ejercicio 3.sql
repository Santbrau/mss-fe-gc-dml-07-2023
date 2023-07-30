create database ejercicio3;
use ejercicio3;

create table cientificos (
dni varchar(8),
nomApels varchar(255),
primary key(dni)
);

create table proyecto (
id char(4),
nombre varchar(255),
horas int,
primary key(id)
);

create table asignado_a (
cientifico varchar(8),
proyecto char(4),
foreign key(cientifico) references cientificos(dni)
on update cascade
on delete cascade,
foreign key(proyecto) references proyecto(id)
on update cascade
on delete cascade,
primary key(cientifico, proyecto)
);

INSERT INTO cientificos (dni, nomApels)
VALUES
  ('11111111', 'Juan Pérez'),
  ('22222222', 'María Gómez'),
  ('33333333', 'Carlos Rodríguez'),
  ('44444444', 'Ana López'),
  ('55555555', 'Pedro Martínez'),
  ('66666666', 'Laura Ramírez'),
  ('77777777', 'Andrés Torres'),
  ('88888888', 'Elena Castro'),
  ('99999999', 'Javier Sánchez'),
  ('10101010', 'Carmen Ruiz');
  
INSERT INTO proyecto (id, nombre, horas)
VALUES
  ('P001', 'Proyecto A', 100),
  ('P002', 'Proyecto B', 80),
  ('P003', 'Proyecto C', 50),
  ('P004', 'Proyecto D', 120),
  ('P005', 'Proyecto E', 90),
  ('P006', 'Proyecto F', 200),
  ('P007', 'Proyecto G', 70),
  ('P008', 'Proyecto H', 180),
  ('P009', 'Proyecto I', 60),
  ('P010', 'Proyecto J', 150);
  
INSERT INTO asignado_a (cientifico, proyecto)
VALUES
  ('11111111', 'P001'),
  ('22222222', 'P001'),
  ('33333333', 'P002'),
  ('44444444', 'P003'),
  ('55555555', 'P003'),
  ('66666666', 'P003'),
  ('77777777', 'P004'),
  ('88888888', 'P005'),
  ('99999999', 'P006'),
  ('10101010', 'P007');

UPDATE cientificos
SET nomApels = 'Juan Pérez Gómez'
WHERE dni = '11111111';

UPDATE proyecto
SET horas = horas + 10
WHERE id = 'P008';

DELETE FROM asignado_a
WHERE cientifico = '55555555' AND proyecto = 'P003';
