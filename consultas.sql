

-- 2. 
select  sum(p.monto), c.nombte
from cliente c join pagos p on c.id_cliente = p.id_cliente 
group by p.monto, c.nombte, p.id_cliente 
order by p.monto limit 1;



-- 3.

select (select ((count(p1.id_pelicula)*(count(p1.genero)))/100) from pelicula p1) as cantidad, p.titulo as pelicula
from pelicula p 
group by p.genero, p.titulo;

-- 4

select s.nombre, count(s.id_sucursal) as transacciones  
from sucursales s join pelicula p on s.id_sucursal= p.id_sucursal 
  join alquileres a on p.id_pelicula = a.id_pelicula
  group by nombre 
  order by count(s.id_sucursal) desc limit 1;
  

-- 5.
 select p.titulo, p.genero
 from pelicula p 
 where p.disponibilidad = true;

-- 6 
select c.nombte as cliente, a.fecha_inicio ,a.fecha_devolucion, p.titulo
from cliente c join historial h on c.id_cliente = h.id_cliente
		join alquileres a on a.id_alquiler =h.id_alquiler  
		join pelicula p on p.id_pelicula = a.id_alquiler;
 
	
-- 7
select p.*
from pelicula p join alquileres a on a.id_alquiler = p.id_pelicula
where a.total > 1000; 
 

-- 8
	select * 
	from  pelicula p  
	where date_part('year', p.annio_lanzamiento) >= date_part('year', current_date) - 5;
 
 
 
 
 
 
