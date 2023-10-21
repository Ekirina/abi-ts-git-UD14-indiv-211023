CREATE database ejercicio11;
USE ejercicio11;
CREATE table facultad(
	codigo int,
    nombre VARCHAR(100),
    primary key (codigo)
);
CREATE table investigadores(
	dni VARCHAR(8),
    nom_apels VARCHAR(255),
    codigo_facultad int,
    foreign key (codigo_facultad) REFERENCES facultad (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (dni)
);
CREATE table equipos(
	num_serie CHAR(4),
    nombre VARCHAR(100),
    codigo_facultad int,
    foreign key (codigo_facultad) REFERENCES facultad (codigo)
    ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (num_serie)
);
CREATE table reserva(
	dni VARCHAR(8),
    num_serie CHAR(4),
    comienzo datetime,
    fin datetime,
    foreign key (dni) REFERENCES investigadores (dni)
    ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key (num_serie) REFERENCES equipos (num_serie)
    ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (dni, num_serie)
);