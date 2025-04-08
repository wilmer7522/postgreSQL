CREATE TABLE fabricante(
codigo serial PRIMARY KEY,
nombre varchar(50)
);
drop table producto;
CREATE TABLE producto (
codigo SERIAL primary key,
nombre VARCHAR(50),
precio DOUBLE PRECISION,
codigo_fabricante int,
FOREIGN KEY (codigo_fabricante) references fabricante (codigo)
);


insert into fabricante (nombre) values ('Asus'),
('Lenovo'),
('Hewleet-Packard'),
('Samsung'),
('Seagate'),
('Crucial'),
('Gigabyte'),
('Huawei'),
('Xiaomi');

insert into producto (nombre, precio, codigo_fabricante) values 
('Disco duro sata1TB', 86.99,5),
('Memoria RAM DDR4 8GB', 120, 6),
( 'Disco SSD 1 TB', 150.99, 4),
( 'GeForce GTX 1050Ti', 185, 7),
( 'GeForce GTX 1080 Xtreme', 755, 6),
( 'Monitor 24 LED Full HD', 202, 1),
( 'Monitor 27 LED Full HD', 245.99, 1),
( 'Portátil Yoga 520', 559, 2),
( 'Portátil Ideapd 320', 444, 2),
( 'Impresora HP Deskjet 3720', 59.99, 3),
( 'Impresora HP Laserjet Pro M26nw', 180, 3);


