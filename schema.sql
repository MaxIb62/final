CREATE DATABASE IF NOT EXISTS VentaConsolas;

USE VentaConsolas;

CREATE TABLE PAISES (
    ID_PAISES INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    NOMBRE VARCHAR(50) NOT NULL, 
    DOMINIO CHAR(2) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

CREATE TABLE TIPOS (
    ID_TIPOS INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TIPO_NOMBRE VARCHAR(12) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

CREATE TABLE EMPRESAS (
	ID_EMPRESAS INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	NOMBRE VARCHAR(20) NOT NULL,
	FECHA_FUNDACION DATE NOT NULL,
	ID_PAISES INTEGER UNSIGNED,
    FOREIGN KEY (ID_PAISES)
    	REFERENCES PAISES(ID_PAISES)
    	ON DELETE RESTRICT
    	ON UPDATE CASCADE
) ENGINE= INNODB DEFAULT CHARSET=utf8mb4;

CREATE TABLE CONSOLAS (
	ID_CONSOLAS INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY, 
    NOMBRE_CONSOLA VARCHAR(30) NOT NULL,
    UNIDADES VARCHAR (25) NOT NULL, 
    GENERACION VARCHAR (15) NOT NULL,
    LANZAMIENTO YEAR,
    ID_EMPRESAS INTEGER UNSIGNED, 
    ID_TIPOS INTEGER UNSIGNED,
    FOREIGN KEY (ID_EMPRESAS)
    	REFERENCES EMPRESAS(ID_EMPRESAS)
    	ON DELETE RESTRICT
    	ON UPDATE CASCADE,
    FOREIGN KEY (ID_TIPOS)
    	REFERENCES TIPOS(ID_TIPOS)
    	ON DELETE RESTRICT 
    	ON UPDATE CASCADE
) ENGINE= INNODB DEFAULT CHARSET=utf8mb4;

CREATE TABLE VENTAS_X_EMPRESA (
    VENTAS_X_EMPRESA_ID INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    ID_EMPRESAS INTEGER UNSIGNED,
    FOREIGN KEY (ID_EMPRESAS)
    	REFERENCES EMPRESAS(ID_EMPRESAS)
    	ON DELETE RESTRICT
    	ON UPDATE CASCADE,
    VENTA_SOBREMRESA VARCHAR (20) NOT NULL,
    VENTA_PORTATILES VARCHAR (20) NOT NULL,
    VENTA_TOTALES VARCHAR (20) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;