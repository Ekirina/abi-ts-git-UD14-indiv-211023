CREATE database ejercicio5;
USE ejercicio5;
CREATE table almacenes(
	codigo int,
    lugar VARCHAR(100),
    capacidad int,
    primary key (codigo)
);
CREATE table cajas(
	num_referencia CHAR(5),
    contenido VARCHAR(100),
    valor int,
    codigo_almacen int,
    foreign key (codigo_almacen) REFERENCES almacenes (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (num_referencia)
);