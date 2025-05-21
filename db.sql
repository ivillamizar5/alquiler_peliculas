CREATE TABLE public.director (
	id_director serial NOT NULL,
	nombre varchar(100) NULL,
	CONSTRAINT director_pk PRIMARY KEY (id_director)
);


CREATE TABLE public.sucursales (
	nombre varchar(100) NOT NULL,
	id_sucursal serial NOT NULL,
	CONSTRAINT sucursales_pk PRIMARY KEY (id_sucursal)
);


create type genero as enum('comedia','ficcion','terror','suspenso','aventura',
	'drama','tristesa','alegria','accion','omicidio');

CREATE TABLE public.pelicula (
	id_pelicula serial NOT NULL,
	titulo varchar(100) NOT NULL,
	annio_lanzamiento date NOT NULL,
	disponibilidad boolean NOT NULL,
	id_sucursal int NOT NULL,
	genero genero,
	CONSTRAINT pelicula_pk PRIMARY KEY (id_pelicula),
	CONSTRAINT pelicula_sucursales_fk FOREIGN KEY (id_sucursal) REFERENCES public.sucursales(id_sucursal) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE public.director_pelicula (
	id_director_pelicula serial NOT NULL,
	id_director int NOT NULL,
	id_pelicula int NOT NULL,
	CONSTRAINT director_pelicula_pk PRIMARY KEY (id_director_pelicula),
	CONSTRAINT director_pelicula_director_fk FOREIGN KEY (id_director) REFERENCES public.director(id_director) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT director_pelicula_pelicula_fk FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE public.alquileres (
	id_alquiler serial NOT NULL,
	id_pelicula int NOT NULL,
	fecha_inicio date NOT NULL,
	fecha_devolucion date NOT NULL,
	total decimal(10) NOT NULL check(total >0),
	CONSTRAINT alquileres_pk PRIMARY KEY (id_alquiler),
	CONSTRAINT alquileres_pelicula_fk FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE public.cliente (
	id_cliente serial NOT NULL,
	nombte varchar(100) NOT NULL,
	direccion varchar(200) NOT NULL,
	contacto varchar(15) NOT NULL,
	CONSTRAINT cliente_pk PRIMARY KEY (id_cliente)
);


CREATE TABLE public.pagos (
	id_pagos serial NOT NULL,
	fecha_pago date NOT NULL,
	id_cliente int NOT NULL,
	id_alquiler int NOT NULL,
	monto decimal(10, 3) NOT NULL check(monto>0),
	CONSTRAINT pagos_pk PRIMARY KEY (id_pagos),
	CONSTRAINT pagos_cliente_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT pagos_alquileres_fk FOREIGN KEY (id_alquiler) REFERENCES public.alquileres(id_alquiler) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE public.historial (
	id_historial serial NOT NULL,
	id_alquiler int NOT NULL,
	id_cliente int NOT NULL,
	CONSTRAINT historial_pk PRIMARY KEY (id_historial),
	CONSTRAINT historial_cliente_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id_cliente) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT historial_alquileres_fk FOREIGN KEY (id_alquiler) REFERENCES public.alquileres(id_alquiler) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE public.categoria (
	id_categoria serial NOT NULL,
	nombre varchar(100) NOT NULL,
	CONSTRAINT categoria_pk PRIMARY KEY (id_categoria)
);

CREATE TABLE public.categoria_pelicula (
	id_categoria int NOT NULL,
	id_pelicula int NOT NULL,
	id_categoria_pelicula serial NOT NULL,
	CONSTRAINT categoria_pelicula_pk PRIMARY KEY (id_categoria_pelicula),
	CONSTRAINT categoria_pelicula_categoria_fk FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT categoria_pelicula_pelicula_fk FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula) ON DELETE CASCADE ON UPDATE CASCADE
);

