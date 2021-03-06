DROP TABLE  IF EXISTS  PRICES;

DROP TABLE  IF EXISTS  PRODUCTS;

DROP TABLE  IF EXISTS  BRANDS;

CREATE TABLE PRODUCTS(ID BIGINT(64)  PRIMARY KEY, NAME VARCHAR(255),DESCRIPTION VARCHAR(255));

CREATE TABLE BRANDS(ID BIGINT(64)  PRIMARY KEY, NAME VARCHAR(255),DESCRIPTION VARCHAR(255));

CREATE TABLE PRICES(BRAND_ID BIGINT(64), PRODUCT_ID BIGINT(64),START_DATE TIMESTAMP,END_DATE TIMESTAMP,PRICE_LIST BIGINT(64) ,PRIORITY INTEGER,PRICE NUMERIC,CURR VARCHAR(255));

INSERT INTO PRODUCTS (ID,NAME,DESCRIPTION) VALUES(35402, 'Falda', 'Falda azul plisada');
INSERT INTO PRODUCTS (ID,NAME,DESCRIPTION)VALUES(35403, 'Falda', 'Falda verde plisada');

INSERT INTO BRANDS (ID,NAME,DESCRIPTION) VALUES(3, 'ZARA', 'Productos pertenecientes a la marca ZARA de Inditex');

INSERT INTO PRICES (BRAND_ID,PRODUCT_ID,START_DATE,END_DATE,PRICE_LIST,PRIORITY,PRICE,CURR) 
	VALUES(3,35402,{ts '2020-06-14 00:00:00.0'},{ts '2020-12-31 23:59:59.0'},1,0,35.50,'EUR');
INSERT INTO PRICES (BRAND_ID,PRODUCT_ID,START_DATE,END_DATE,PRICE_LIST,PRIORITY,PRICE,CURR)
	VALUES(3,35402,{ts '2020-06-14 15:00:00.0'},{ts '2020-06-14 18:30:00.0'},2,1,25.45,'EUR');
INSERT INTO PRICES (BRAND_ID,PRODUCT_ID,START_DATE,END_DATE,PRICE_LIST,PRIORITY,PRICE,CURR)
	VALUES(3,35402,{ts '2020-06-15 00:00:00.0'},{ts '2020-06-15 11:00:00.0'},3,1,30.50,'EUR');
INSERT INTO PRICES (BRAND_ID,PRODUCT_ID,START_DATE,END_DATE,PRICE_LIST,PRIORITY,PRICE,CURR)
	VALUES(3,35402,{ts '2020-06-15 16:00:00.0'},{ts '2020-12-31 23:59:59.0'},4,1,38.95,'EUR');
