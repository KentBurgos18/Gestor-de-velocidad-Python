-- NOTA: Puede ejecutar todo el script de manera completa sin
-- necesidad de copiar por partes
create database test;
go
use test;
go
create table producto(
	id varchar(50),
	descripcion varchar(50),
	costo decimal(7,2),
	precio decimal(7,2)
);
go
create procedure insertar_producto(
	@id varchar(50),
	@descripcion varchar(50),
	@costo decimal(7,2),
	@precio decimal(7,2)
)
as
begin
	insert into producto values(@id, @descripcion, @costo, @precio);
end

go





-- execute insertar_producto '1','mantequilla',1.25,1.50;
-- select * from producto
