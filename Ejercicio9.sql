CREATE database ejercicio9;
USE ejercicio9;
CREATE table cientificos(
	dni VARCHAR(8),
    nom_apels VARCHAR(255),
    primary key (dni)
);
CREATE table proyecto(
	id CHAR(4),
    nombre VARCHAR(255),
    horas int,
    primary key (id)
);
CREATE table asignado_a(
	dni_cientifico VARCHAR(8),
    id_proyecto CHAR(4),
    foreign key (dni_cientifico) REFERENCES cientificos (dni)
   	ON DELETE CASCADE ON UPDATE CASCADE,
	foreign key (id_proyecto) REFERENCES proyecto (id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (dni_cientifico, id_proyecto)
);