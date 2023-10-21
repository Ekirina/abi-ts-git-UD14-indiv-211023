CREATE database ejercicio8;
USE ejercicio8;
CREATE table piezas(
	codigo int,
    nombre VARCHAR(100),
    primary key (codigo)
);
CREATE table proveedores(
	id int,
    nombre VARCHAR(100),
    primary key (id)
);
CREATE table suministra(
	codigo_pieza int,
    id_proveedor int,
    precio int,
    foreign key (codigo_pieza) REFERENCES piezas (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key (id_proveedor) REFERENCES proveedores (id)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (codigo_pieza, id_proveedor)
);