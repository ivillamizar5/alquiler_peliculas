

Pasos a desarrollar: Crear base de datos de datos alquiler peliculas en ella debes abrir un archivo sql donde copiaras los datos del archivo db.sql, luego insertaras los datos con la informacion que se encuentra en el archivo insert.sql. Las consultas se encuentran  en el archivo consultas.sql por ultimo el diagrama realcional se encuentra como imagen er.png

 
 
 create or replace function registrarcliente(cliente int)
 return text as $$
begin
	if(select id_cliente from cliente) is null then
		raise exception 'El cliente no existe';
	end if;
end
$$ language plpgsql;


