create table PRODUCTO 
(
   ID_PRODUCTO           VARCHAR2(10),
   DESCRIPCION          VARCHAR2(20),
   COSTO         NUMBER(7,2),
   PRECIO        NUMBER(7,2)
);

--PROCEDIMIENTO ALMACENADO CON ORACLE - PLSQL
CREATE OR REPLACE PROCEDURE insertar_producto (
   id VARCHAR2,
   descripcion VARCHAR2,
   costo NUMBER,
   precio NUMBER
)
AS
BEGIN
   INSERT INTO producto (id, descripcion, costo, precio) VALUES (id, descripcion, costo, precio);
END;