
CREATE DATABASE testDatabase;

use testDatabase;

CREATE TABLE tbl_data
(
	date                 TIMESTAMP NOT NULL,
	time                 TIME NOT NULL,
	prn                  INTEGER NOT NULL
);

ALTER TABLE tbl_data
ADD CONSTRAINT XPKtbl_data PRIMARY KEY (date,time,prn);

CREATE TABLE tbl_header
(
	date                 TIMESTAMP NOT NULL
);

ALTER TABLE tbl_header
ADD CONSTRAINT XPKtbl_header PRIMARY KEY (date);

ALTER TABLE tbl_data
ADD CONSTRAINT R_1 FOREIGN KEY (date) REFERENCES tbl_header (date);
