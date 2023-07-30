create database ejercicio2;
use ejercicio2;

create table piezas (
codigo int auto_increment,
nombre varchar(100),
primary key(codigo)
);

create table proveedores (
id char(4),
nombre varchar(100),
primary key(id)
);

create table suministra (
codigoPieza int,
idProveedor char(4),
precio int,
foreign key(codigoPieza) references piezas(codigo)
on delete cascade
on update cascade,
foreign key(idProveedor) references proveedores(id)
on delete cascade
on update cascade,
primary key(codigoPieza, idProveedor)
);

INSERT INTO piezas (nombre)
VALUES
('Tornillo'),
('Tuerca'),
('Arandela'),
('Resorte'),
('Cable'),
('Engranaje'),
('Perno'),
('Eje'),
('Correa'),
('Rueda');
  
INSERT INTO proveedores (id, nombre)
VALUES
('P001', 'Proveedor A'),
('P002', 'Proveedor B'),
('P003', 'Proveedor C'),
('P004', 'Proveedor D'),
('P005', 'Proveedor E'),
('P006', 'Proveedor F'),
('P007', 'Proveedor G'),
('P008', 'Proveedor H'),
('P009', 'Proveedor I'),
('P010', 'Proveedor J');
  
INSERT INTO suministra (codigoPieza, idProveedor, precio)
VALUES
(1, 'P001', 100),
(2, 'P002', 80),
(3, 'P003', 50),
(4, 'P004', 120),
(5, 'P005', 90),
(6, 'P006', 200),
(7, 'P007', 70),
(8, 'P008', 180),
(9, 'P009', 60),
(10, 'P010', 150);

UPDATE proveedores
SET nombre = 'Nuevo Proveedor A'
WHERE id = 'P001';

UPDATE suministra
SET precio = precio + 15
WHERE codigoPieza = 3;

DELETE FROM proveedores
WHERE id = 'P010';

DELETE FROM suministra
WHERE codigoPieza = 6 AND idProveedor = 'P006';

