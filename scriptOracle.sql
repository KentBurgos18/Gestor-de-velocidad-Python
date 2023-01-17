import cx_Oracle

conn = cx_Oracle.connect(username/password@host:port/sid)


cursor = conn.cursor()


cursor.execute(
    CREATE TABLE producto(
        id varchar(50),
        descripcion varchar(50),
        costo decimal(7,2),
        precio decimal(7,2)
    )
)


cursor.execute(
    CREATE OR REPLACE PROCEDURE insertar_producto(
        p_id varchar(50),
        p_descripcion varchar(50),
        p_costo decimal(7,2),
        p_precio decimal(7,2)
    )
    AS
    BEGIN
        INSERT INTO producto (id, descripcion, costo, precio)
        VALUES (p_id, p_descripcion, p_costo, p_precio);
    END;
)

cursor.close()
conn.close()