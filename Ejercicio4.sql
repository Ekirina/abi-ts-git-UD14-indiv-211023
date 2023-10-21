CREATE database ejercicio4;
USE ejercicio4;
CREATE table departamentos(
	codigo int,
    nombre VARCHAR(100),
    presupuesto int,
    primary key (codigo)
);
CREATE table empleados(
	dni VARCHAR(8),
    nombre VARCHAR(100),
    apellidos VARCHAR(255),
    codigo_departamento int,
    foreign key (codigo_departamento) REFERENCES departamentos (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (dni)
);