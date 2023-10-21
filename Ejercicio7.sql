CREATE database ejercicio7;
USE ejercicio7;
CREATE table despachos(
	numero int,
    capacidad int,
    primary key (numero)
);
CREATE table directores(
	dni VARCHAR(8),
    nom_apels VARCHAR(255),
    dni_jefe VARCHAR(8),
	num_despacho int,
    primary key (dni),
    foreign key (num_despacho) REFERENCES despachos (numero)
	ON DELETE CASCADE ON UPDATE CASCADE,
	foreign key (dni_jefe) REFERENCES directores (dni)
	ON DELETE CASCADE ON UPDATE CASCADE
);
