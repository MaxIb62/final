USE VentaConsolas;

/* Empresas */

/* Crear una empresa */
INSERT INTO EMPRESAS (ID_EMPRESAS,NOMBRE,FECHA_FUNDACION,ID_PAISES) VALUES (11,"Nokia","1865-03-12",69);
/* Leer todas las empresas */
SELECT * FROM EMPRESAS;
/* Leer una empresa en particular */
SELECT * FROM EMPRESAS WHERE ID_EMPRESAS = 1;
/* Actualizar una empresa */
UPDATE EMPRESAS SET NOMBRE="Coleco", FECHA_FUNDACION="1932-02-29", ID_PAISES=65 WHERE ID_EMPRESAS = 6;
/* Leer Cambios */
SELECT * FROM EMPRESAS;
/* Eliminar una empresa */
DELETE FROM EMPRESAS WHERE ID_EMPRESAS=11;

/* Consolas */

/* Crear una consola */
INSERT INTO CONSOLAS (ID_CONSOLAS,NOMBRE_CONSOLA,UNIDADES,GENERACION,LANZAMIENTO,ID_EMPRESAS,ID_TIPOS) VALUES (11,"GameCube","21,74 millones","6  Generacion","2001",1,1);
/* Leer todas las consolas */
SELECT * FROM CONSOLAS;
/* Leer una consola en particular */
SELECT * FROM CONSOLAS WHERE ID_CONSOLAS =2;
/* Actualizar una consola */
UPDATE CONSOLAS SET NOMBRE_CONSOLA="PlayStation 5", UNIDADES="25 Millones", Generacion="9 Generacion", LANZAMIENTO="2020", ID_EMPRESAS=3, ID_TIPOS=1 WHERE ID_CONSOLAS = 3;
/* Leer Cambios */
SELECT * FROM CONSOLAS;
/* Eliminar una consola */
DELETE FROM CONSOLAS WHERE ID_CONSOLAS=11;

/* Tipos */

/* Crear un tipo */
INSERT INTO TIPOS (ID_TIPOS,TIPO_NOMBRE) VALUES (3,"Hibrido");
/* Leer todos los tipos */
SELECT * FROM TIPOS;
/* Leer un tipo en particular */
SELECT * FROM TIPOS WHERE ID_TIPOS = 1;
/* Actualizar un tipo */
UPDATE TIPOS SET TIPO_NOMBRE="Inmovil" WHERE ID_TIPOS =1;
/* Leer Cambios */
SELECT * FROM TIPOS;
/* Eliminar un tipo */
DELETE FROM TIPOS WHERE ID_TIPOS = 3;

/* Paises */

/* Crear un pais */
INSERT INTO PAISES (ID_PAISES,NOMBRE,DOMINIO) VALUES (249,"Dorne", "DR");
/* Leer todos los paises */
SELECT * FROM PAISES;
/* Leer un pais en particular */
SELECT * FROM PAISES WHERE ID_PAISES = 65;
/* Actualizar un pais */
UPDATE PAISES SET NOMBRE = "Nueva EspaÃ±a", DOMINIO="NS" WHERE ID_PAISES = 141;
/* Leer Cambios */
SELECT * FROM PAISES;
/* Eliminar un pais */
DELETE FROM PAISES WHERE ID_PAISES=249;

/* Ventas x Empresa */

/* Crear una venta x empresa */
INSERT INTO VENTAS_X_EMPRESA (VENTAS_X_EMPRESA_ID,ID_EMPRESAS,VENTA_SOBREMRESA,VENTA_PORTATILES,VENTA_TOTALES) VALUES (11,9,"3,5 Millones","25 Millones","28,5 Millones");
/* Leer todas las ventas x empresa */
SELECT * FROM VENTAS_X_EMPRESA;
/* Leer una venta x empresa en particular */
SELECT * FROM VENTAS_X_EMPRESA WHERE VENTAS_X_EMPRESA_ID=6;
/* Actualizar una venta x empresa */
UPDATE VENTAS_X_EMPRESA SET ID_EMPRESAS=8, VENTA_SOBREMRESA="23 Millones", VENTA_PORTATILES="7 Millones", VENTA_TOTALES= "30 Millones" WHERE VENTAS_X_EMPRESA_ID=5;
/* Leer Cambios */
SELECT * FROM VENTAS_X_EMPRESA;
/* Eliminar una venta x empresa */
DELETE FROM VENTAS_X_EMPRESA WHERE VENTAS_X_EMPRESA_ID=11;