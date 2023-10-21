CREATE database ejercicio6;
USE ejercicio6;
CREATE table peliculas(
	codigo int,
    nombre VARCHAR(100),
    calificacion_edad int,
    primary key (codigo)
);
CREATE table salas(
	codigo int,
    nombre VARCHAR(100),
    codigo_pelicula int,
    foreign key (codigo) REFERENCES peliculas (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (codigo)
);