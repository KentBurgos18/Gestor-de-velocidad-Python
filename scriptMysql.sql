-- NOTA: Puede ejecutar todo el script de manera completa sin
-- necesidad de copiar por partes
create database test;
use test;
create table producto(
	id varchar(50),
    descripcion varchar(50),
	costo decimal(7,2),
	precio decimal(7,2)
);

-- Procedimiento Almacenado con Mysql
DELIMITER $$
create procedure insertar_producto(
	IN id VARCHAR(50),
    descripcion varchar(50),
	costo decimal(7,2),
	precio decimal(7,2)
)
begin
    insert into producto values(id,descripcion,costo,precio);
end$$





-- call insertar_producto('1','Computadora',800,1000);