
 create or replace function registrarcliente(cliente int)
 return text as $$
begin
	if(select id_cliente from cliente) is null then
		raise exception 'El cliente no existe';
	end if;
end
$$ language plpgsql;


