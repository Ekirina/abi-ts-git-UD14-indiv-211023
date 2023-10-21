CREATE database ejercicio12;
USE ejercicio12;
CREATE table curso(
	codigo int,
    nombre VARCHAR(100),
    num_max int,
    fecha_inicio date,
    fecha_final date,
    num_horas double,
    primary key (codigo)
);
CREATE table alumnos(
	codigo int,
    codigo_curso int,
    nombre VARCHAR(30),
    apellidos VARCHAR(50),
    direccion VARCHAR(100),
    fecha_nacimiento date,
    sexo CHAR(1),
    foreign key (codigo_curso) REFERENCES curso (codigo)
    ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (codigo)
);
CREATE table profesores(
	dni VARCHAR(9),
    nombre VARCHAR(30),
    direccion VARCHAR(100),
    titulacion VARCHAR(50),
    cuota_horas double,
    codigo_curso int,
    foreign key (codigo_curso) REFERENCES curso (codigo)
    ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (dni)
);