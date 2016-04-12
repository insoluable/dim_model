CREATE TABLE FACT_PRODUCT_SALES (
	PRODUCT_SK NUMBER(10, 0) NOT NULL,
	REGION_SK NUMBER(10, 0) NOT NULL,
	DATE_SK NUMBER(10, 0) NOT NULL,
	REP_SK NUMBER(10, 0) NOT NULL,
	CUSTOMER_SK NUMBER(10, 0) NOT NULL,
	COUNTRY_SK NUMBER(10, 0) NOT NULL,
	QUANTITY_SOLD NUMBER(6, 0),
	UNIT_COST NUMBER(10, 2)
);
CREATE TABLE DIM_REP (
	REP_SK NUMBER(10, 0) NOT NULL,
	FAMILY_NAME VARCHAR2(100) NOT NULL,
	GIVEN_NAME VARCHAR2(50) NOT NULL,
);
ALTER TABLE DIM_REP ADD CONSTRAINT REP_PK PRIMARY KEY(REP_SK);
CREATE TABLE DIM_CUSTOMER (
	CUSTOMER_ID VARCHAR2(100) NOT NULL,
	CUSTOMER_SK NUMBER(10, 0) NOT NULL,
	FAMILY_NAME VARCHAR2(100) NOT NULL,
	GIVEN_NAME VARCHAR2(50) NOT NULL,
	SHIP_ADDRESS VARCHAR2(50) NOT NULL,
	COMPANY_NAME VARCHAR2(50) NOT NULL
);
ALTER TABLE DIM_CUSTOMER ADD CONSTRAINT CUSTOMER_PK PRIMARY KEY(CUSTOMER_SK);
CREATE TABLE DIM_REGION (
	REGION_SK NUMBER(10, 0) NOT NULL,
	REGION VARCHAR2(50) NOT NULL
);
ALTER TABLE DIM_REGION ADD CONSTRAINT REGION_PK PRIMARY KEY(REGION_SK);
CREATE TABLE DIM_DATE (
	DATE_SK NUMBER(10, 0) NOT NULL,
	D_DATE DATE NOT NULL
);
ALTER TABLE DIM_DATE ADD CONSTRAINT DATE_PK PRIMARY KEY(DATE_SK);
CREATE TABLE DIM_COUNTRY (
	COUNTRY_SK NUMBER(10, 0) NOT NULL,
	COUNTRY_ABBR VARCHAR2(4) NOT NULL,
	COUNTRY VARCHAR2(50) NOT NULL
);
ALTER TABLE DIM_COUNTRY ADD CONSTRAINT COUNTRY_PK PRIMARY KEY(COUNTRY_SK);
CREATE TABLE DIM_PRODUCT (
	PRODUCT_SK NUMBER(10, 0) NOT NULL,
	PRODUCT_ID VARCHAR2(10),
	PRODUCT_NAME VARCHAR2(50) NOT NULL
);
ALTER TABLE DIM_PRODUCT ADD CONSTRAINT PRODUCT_PK PRIMARY KEY(PRODUCT_SK);

