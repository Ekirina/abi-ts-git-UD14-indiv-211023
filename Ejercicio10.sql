CREATE database ejercicio10;
USE ejercicio10;
CREATE table cajeros(	
	codigo int,
    nom_apels VARCHAR(255),
    primary key (codigo)
);
CREATE table productos(
	codigo_producto int,
    nombre VARCHAR(100),
    precio int,
    primary key (codigo_producto)
);
CREATE table maquinas_registradoras(
	codigo_maquina int,
    piso int,
    primary key (codigo_maquina)
);
CREATE table ventas(
	codigo_cajero int,
    codigo_producto int,
    codigo_maquina int,
    foreign key (codigo_cajero) REFERENCES cajeros (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key (codigo_producto) REFERENCES productos (codigo_producto)
	ON DELETE CASCADE ON UPDATE CASCADE,
	foreign key (codigo_maquina) REFERENCES maquinas_registradoras (codigo_maquina)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (codigo_cajero, codigo_producto, codigo_maquina)
);