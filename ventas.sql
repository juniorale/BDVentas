/*Crear base de datos Ventas*/
CREATE DATABASE VENTAS
	DEFAULT CHARACTER SET UTF8;
SELECT DATABASE()VENTAS;
/*Poner en uso la base de datos*/
USE VENTAS;
/*Tabla Cliente*/
CREATE  TABLE CLIENTE
(
id_Cliente INT,
nom_Cliente VARCHAR(50) NOT NULL,
ape_Cliente VARCHAR(50) NOT NULL,
ciu_Cliente VARCHAR(50) NOT NULL,
FeCNaCliente DATE NOT NULL,
CONSTRAINT id_Cliente_PK PRIMARY KEY (id_Cliente)
);
/*Tabla Producto */
CREATE TABLE PRODUCTO
(
id_Prod INT,
desc_Prod VARCHAR(80) NOT NULL,
pres_Prod DECIMAL(6,2) NOT NULL,
CONSTRAINT id_Prod_PK PRIMARY KEY (id_Prod)
);
/*Tabla Venta*/
CREATE TABLE VENTA
(
id_Venta INT,
fec_Venta DATE NOT NULL,
Cliente_Venta INT,
CONSTRAINT id_Venta_PK PRIMARY KEY (id_Venta)
);
/*Tabla Venta Detalle*/
CREATE TABLE VENTA_DETALLE
(
id_Orden INT,
cant_Orden NUMERIC(6,2),
VENTA_VENTA INT,
PRODUCTO_PROD INT,
CONSTRAINT id_Orden_PK PRIMARY KEY (id_Orden)
);
/*Relacion entre las tablas venta y cliente*/
ALTER TABLE VENTA
	ADD CONSTRAINT Cliente_Venta FOREIGN
    KEY (id_Venta) REFERENCES CLIENTE
    (id_Cliente);
/*Relacion entre las tablas venta_detalle y venta*/
ALTER TABLE VENTA_DETALLE
	ADD CONSTRAINT VENTA_VENTA FOREIGN
    KEY (id_Orden) REFERENCES VENTA
    (id_Venta);
/*Relacion entre las tablas producto y la tabla venta_detalle*/
ALTER TABLE VENTA_DETALLE
	ADD CONSTRAINT PRODUCTO_PROD FOREIGN
    KEY (id_Orden) REFERENCES PRODUCTO
    (id_Prod);
/*Ingresando registros en la tabla cliente*/
INSERT INTO CLIENTE
			(id_Cliente,nom_Cliente, ape_Cliente, FeCNaCliente)
		VALUES 
			('C00001', 'Aberto','Altamirano Yaya', '1999-05-05'),
            ('C00002', 'Rodolfo','Quispe Quispe', '1999-05-05'),
            ('C00003', 'Sergio','De la Cruz','2015-12-28'),
            ('C00004', 'Marcos','Maita Lao','2014-05-05'),
            ('C00005', 'Alexander','Caseres Cerazo','2013-04-14'),
            ('C00006', 'Alex','Manzo Luna','2012-08-05'),
            ('C00007', 'Joseth','Canales Guando','2011-05-12'),
            ('C00008', 'Juan','Campos Yaya','2010-09-05'),
            ('C00009', 'Pablo','Campos Yaya','2009-05-05'),
            ('C00010', 'Diego','Allon Galvez','2008-07-05'),
            ('C00011','Gustavo','Yacsa Ulloa','2007-05-05'),
            ('C00012','Jerson ','Cornejo Julca','2006-03-05'),
            ('C00013','Luis','Cordero Peral','2005-05-20'),
            ('C00014','Arnol','Yupanqui Salas','2004-05-05'),
            ('C00015','Cristhian','Gutierrez del Solor','2003-05-05'),
            ('C00016','Jesus','Manani Flores','2002-05-15'),
            ('C00017','Aldair','Chillce Monteros','2001-05-05'),
            ('C00018','Yonathan','Arroyo Meneses', '2000-05-04');