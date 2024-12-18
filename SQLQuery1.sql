IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'base_datos')
BEGIN
CREATE DATABASE base_datos;
PRINT 'Base de datos creada';
END;
GO

USE base_datos;
GO
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'tabla')
BEGIN
CREATE TABLE tabla(
ID INT NOT NULL IDENTITY(188,1) PRIMARY KEY,
CODIGO CHAR(10) NOT NULL DEFAULT '0',
NOMBRE CHAR(20) NOT NULL DEFAULT '0',
TP_PRODUCTO CHAR(20) NOT NULL DEFAULT '0',
PRECIO CHAR(50) NOT NULL DEFAULT '0',
CANTIDAD CHAR(50) NOT NULL DEFAULT '0'
);
END;
GO

SELECT * FROM sys.tables WHERE name = 'tabla';

INSERT INTO tabla(CODIGO,NOMBRE,TP_PRODUCTO,PRECIO,CANTIDAD) 
VALUES('A001', 'Producto1', 'Modelo1', '100', '50');

SELECT * FROM tabla;
