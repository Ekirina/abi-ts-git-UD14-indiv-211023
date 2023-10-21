CREATE database ejercicio3;
USE ejercicio3;
CREATE table fabricantes(
	codigo int,
    nombre VARCHAR(100),
    primary key (codigo)
);
CREATE table articulos(
	codigo int,
    nombre VARCHAR(100),
    precio int,
    codigo_fabricante int,
    foreign key (codigo_fabricante) REFERENCES fabricantes (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (codigo)
);