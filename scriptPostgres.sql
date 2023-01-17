-- Antes crear la base de datos llamada test

create table producto(
	id varchar(50),
	descripcion varchar(50),
	costo numeric(7,2),
	precio numeric(7,2)
);

create or replace procedure insertar_producto(
	id varchar(50),
	descripcion varchar(50),
	costo numeric(7,2),
	precio numeric(7,2)
)
language plpgsql
as $$
begin
	insert into producto values(id,descripcion,costo,precio);
end; $$

-- call  insertar_producto('1','mantequilla',1.25,1.50);