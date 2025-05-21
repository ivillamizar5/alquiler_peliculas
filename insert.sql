
insert into director(nombre) values 
('director1'),
('director2'),
('director3'),
('director4'),
('director5');


insert into sucursales (nombre) values 
('sucursal1'),
('sucursal2'),
('sucursal3'),
('sucursal4'),
('sucursal5');

insert into pelicula (titulo,annio_lanzamiento,disponibilidad,id_sucursal,genero) values 
('titulo1','2000-01-02',true, 1, 'comedia'),
('titulo2','1990-01-02',false, 2,'comedia'),
('titulo3','2015-01-02',true, 3,'ficcion'),
('titulo4','2006-01-02',true, 4,'accion'),
('titulo5','1890-01-02',false ,5,'terror'),
('titulo6','2008-01-02',true, 1, 'comedia'),
('titulo7','1880-07-07',false, 2,'comedia'),
('titulo8','2010-01-02',true, 3,'ficcion'),
('titulo9','2005-07-02',true, 4,'accion'),
('titulo10','1890-08-02',false ,5,'suspenso'),
('titulo11','2007-01-12',true, 1, 'comedia'),
('titulo12','1881-07-13',false, 2,'comedia'),
('titulo13','2011-01-14',true, 3,'ficcion'),
('titulo14','1888-07-15',true, 4,'accion'),
('titulo15','1891-08-15',false ,5,'suspenso');



insert into director_pelicula (id_director,id_pelicula) values 
(1,1),
(1,2),
(2,3),
(4,5),
(5,6);




insert into alquileres (id_pelicula,fecha_inicio,fecha_devolucion,total) values 
(1,'2025-01-01','2025-01-02',4000),
(2,'2025-01-02','2025-01-03',4000),
(3,'2025-01-03','2025-01-04',4000),
(4,'2025-01-04','2025-01-05',4000),
(5,'2025-01-05','2025-01-06',4000),
(1,'2025-01-06','2025-01-08',4000),
(6,'2025-01-07','2025-01-10',4000),
(9,'2025-01-08','2025-01-11',4000),
(10,'2025-01-09','2025-01-12',4000),
(1,'2025-01-10','2025-01-13',4000);



insert into  cliente (nombte,direccion,contacto) values 
('nombre1','calle 43 # 7-01','3214569874'),
('nombre2','calle 5 # 7-01','3219569874'),
('nombre3','calle 8 # 13-11','3214569889'),
('nombre4','calle 43 # 7-01','3214569874'),
('nombre5','calle 23 # 8-01','3214569874'),
('nombre6','calle 33 # 7-01','3214569854'),
('nombre7','calle 37 # 6-01','3214569874'),
('nombre8','calle 3 # 5-01','32145669874'),
('nombre9','carrera 43 # 7-01','3254569874'),
('nombre10','carrera 4 # 7-01','32198749874');


insert into  pagos (fecha_pago,id_cliente,id_alquiler,monto) values 
('2025-01-01',1,1,4000),
('2025-01-02',2,2,4000),
('2025-01-03',3,3,4000),
('2025-01-04',4,4,4000),
('2025-01-05',5,5,4000),
('2025-01-06',6,6,4000),
('2025-01-07',7,7,4000),
('2025-01-08',8,8,4000),
('2025-01-09',9,9,4000),
('2025-01-10',2,10,4000);


insert into  historial (id_alquiler,id_cliente) values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(2,10);

insert into  categoria (nombre) values
('categoria1'),
('categoria2'),
('categoria3'),
('categoria4'),
('categoria5');


insert into  categoria_pelicula (id_pelicula,id_categoria) values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,1),
(7,2),
(8,3),
(9,4),
(10,5);








