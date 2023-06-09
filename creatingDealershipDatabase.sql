DROP DATABASE IF EXISTS cardealershipdatabase;
CREATE DATABASE cardealershipdatabase;

CREATE TABLE dealerships (
	dealership_id  int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(50),
    address varchar(50),
    phone varchar(12)
);


CREATE TABLE vehicles(
	VIN int PRIMARY KEY NOT NULL,
    model varchar(50),
    make varchar(50),
    color varchar(50),
    year int ,
    vehicleType varchar(50),
    odometer int,
    price int
);





