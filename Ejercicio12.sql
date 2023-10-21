CREATE database ejercicio12;
USE ejercicio12;
CREATE table profesores(
	dni_profesor VARCHAR(9),
    nombre VARCHAR(30),
    apellido1 VARCHAR(20),
    apellido2 VARCHAR(20),
    direccion VARCHAR(100),
    titulacion VARCHAR(50),
    cuota_horas double NOT NULL,
    primary key (dni_profesor)
);
CREATE table curso(
	codigo int,
    nombre VARCHAR(100) UNIQUE,
    num_max int,
    fecha_inicio date,
    fecha_final date,
    num_horas double NOT NULL,
    dni_profesor VARCHAR(9),
    foreign key (dni_profesor) REFERENCES profesores (dni_profesor)
    ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (codigo),
    CHECK (fecha_inicio < fecha_final)
);
CREATE table alumnos(
	dni VARCHAR(9),
    nombre VARCHAR(30),
    apellido1 VARCHAR(20),
    apellido2 VARCHAR(20),
    direccion VARCHAR(100),
    fecha_nacimiento date,
    sexo CHAR(1),
	codigo_curso int,
    foreign key (codigo_curso) REFERENCES curso (codigo)
    ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (dni),
    CHECK (sexo = 'H' or sexo = 'M')
);

SELECT a.dni, p.dni_profesor, c.codigo FROM alumnos AS a, profesores AS p, curso AS c WHERE a.codigo_curso = c.codigo;
