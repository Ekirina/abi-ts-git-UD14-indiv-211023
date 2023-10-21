CREATE database ejercicio2;
USE ejercicio2;
CREATE table editorial(
	clave_editorial smallint,
    nombre VARCHAR (20),
    direccion VARCHAR (30),
    telefono VARCHAR (15),
    primary key (clave_editorial)
);
CREATE table libro(
	clave_libro int auto_increment,
    titulo VARCHAR(60),
    idioma VARCHAR(15),
    formato VARCHAR(15),
    clave_editorial smallint,
    foreign key (clave_editorial) REFERENCES editorial (clave_editorial)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (clave_libro)
);
CREATE table tema(
	clave_tema smallint,
    nombre VARCHAR(40),
    primary key (clave_tema)
);
CREATE table autor(
	clave_autor int,
    nombre VARCHAR(60),
    primary key (clave_autor)
 );   
CREATE table ejemplar(
	clave_ejemplar int auto_increment,
    clave_libro int,
    num_orden smallint,
    edicion smallint,
    ubicacion VARCHAR(15),
    categoria CHAR,
    foreign key (clave_libro) REFERENCES libro (clave_libro)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (clave_ejemplar)
 );
CREATE table socio(
	clave_socio int auto_increment,
    nombre VARCHAR(60),
    direccion VARCHAR(60),
    telefono VARCHAR(15),
    categoria CHAR,
    primary key (clave_socio)
 );   
CREATE table prestamo(
	clave_socio int,
    clave_ejemplar int,
    num_orden smallint,
	fecha_prestamo date,
    fecha_devolucion date,
	notas blob,
    foreign key (clave_socio) REFERENCES socio (clave_socio)
	ON DELETE CASCADE ON UPDATE CASCADE,
	foreign key (clave_ejemplar) REFERENCES ejemplar (clave_ejemplar)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (clave_socio, clave_ejemplar, num_orden)
 );
CREATE table trata_sobre (
    clave_libro int,
    clave_tema smallint,
    FOREIGN KEY (clave_libro) REFERENCES libro (clave_libro)
	ON DELETE CASCADE ON UPDATE CASCADE,
	foreign key (clave_tema) REFERENCES tema (clave_tema)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (clave_libro, clave_tema)
);
CREATE table escrito_por(
	clave_libro int,
    clave_autor int,
    foreign key (clave_libro) REFERENCES libro (clave_libro)
   	ON DELETE CASCADE ON UPDATE CASCADE,
	foreign key (clave_autor) REFERENCES autor (clave_autor)
   	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (clave_libro, clave_autor)
);
