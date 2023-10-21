CREATE database ejercicio1;
USE ejercicio1;
CREATE table estacion(
	identificador int auto_increment,
    latitud int,
    longitud int,
    altitud int,
    primary key (identificador)
);    
CREATE table muestra(
	identificador_estacion int,
    fecha date,
    temperatura_min double,
    temperatura_max double,
    precipitaciones VARCHAR(20),
    humedad_min double,
    humedad_max double,
    velocidad_viento_max double,
    velocidad_viento_min double,
    foreign key (identificador_estacion) REFERENCES estacion (identificador)
	ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (identificador_estacion)
);
