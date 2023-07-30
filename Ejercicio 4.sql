create database ejercicio4;
use ejercicio4;

create table productos (
codigo int auto_increment,
nombre varchar(100),
precio int,
primary key(codigo)
);

create table cajeros (
codigo int auto_increment,
nomApels varchar(255),
primary key(codigo)
);

create table maquinas_registradoras (
codigo int auto_increment,
piso int,
primary key(codigo)
);

create table venta (
cajero int,
maquina int,
producto int,
foreign key(cajero) references cajeros(codigo)
on update cascade
on delete cascade,
foreign key(maquina) references maquinas_registradoras(codigo)
on update cascade
on delete cascade,
foreign key(producto) references productos(codigo)
on update cascade
on delete cascade,
primary key(cajero, maquina, producto)
);

INSERT INTO productos (nombre, precio)
VALUES
('Producto A', 100),
('Producto B', 80),
('Producto C', 50),
('Producto D', 120),
('Producto E', 90),
('Producto F', 200),
('Producto G', 70),
('Producto H', 180),
('Producto I', 60),
('Producto J', 150);

INSERT INTO cajeros (nomApels)
VALUES
('Juan Pérez'),
('María Gómez'),
('Carlos Rodríguez'),
('Ana López'),
('Pedro Martínez'),
('Laura Ramírez'),
('Andrés Torres'),
('Elena Castro'),
('Javier Sánchez'),
('Carmen Ruiz');

INSERT INTO maquinas_registradoras (piso)
VALUES
(1),
(1),
(2),
(2),
(3),
(3),
(4),
(4),
(5),
(5);

INSERT INTO venta (cajero, maquina, producto)
VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 4, 8),
(9, 5, 9),
(10, 5, 10);

UPDATE productos
SET nombre = 'Nuevo Producto C', precio = 60
WHERE codigo = 3;

DELETE FROM venta
WHERE cajero = 7 AND maquina = 4 AND producto = 7;
