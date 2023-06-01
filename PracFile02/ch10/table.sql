DROP TABLE IF EXISTS tblRegister;

CREATE TABLE tblRegister (
	id VARCHAR(20) NOT NULL,
	pwd VARCHAR(20) NOT NULL,
	name CHAR(6),
	num1 CHAR(6),
	num2 CHAR(7),
	email VARCHAR(30),
	phone VARCHAR(30),
	zipcode CHAR(5),
	address VARCHAR(60),
	job VARCHAR(30)
);