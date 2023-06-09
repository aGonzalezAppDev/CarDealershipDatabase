DROP DATABASE IF EXISTS cardealershipdatabase;
CREATE DATABASE cardealershipdatabase;

-- Table 1
CREATE TABLE dealerships (
	dealership_id  int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dealership_name varchar(50) NOT NULL,
    address varchar(50) NOT NULL,
    phone varchar(12) NOT NULL
);
INSERT INTO dealerships
VALUES (1, "Best Dealership", "123 Memorial Drive, Hackensack, NJ","973-546-7656");
INSERT INTO dealerships
VALUES (2, "Okay Dealership", "453 Paramus Ava, Paramus, NJ", "201-854-0926");


-- Table 2
CREATE TABLE vehicles (
	VIN int PRIMARY KEY NOT NULL,
    make varchar(50) NOT NULL,
    model varchar(50) NOT NULL,
    color varchar(50) NOT NULL,
    year int NOT NULL,
    vehicleType varchar(50),
    odometer int NOT NULL,
    price int NOT NULL,
    sold bool NOT NULL
);
INSERT INTO vehicles
VALUES(10201, "Toyota", "Camry","silver",2015,"sedan",10000,12000, 0);
INSERT INTO vehicles
VALUES(10202,"Kia","Stinger","black",2020, "sedan",5000,60000, 1);
INSERT INTO vehicles
VALUES (10203,"Chevy","Silverado", "blue",2018, "truck",12000,40000,0);

-- Table 3
CREATE TABLE inventory (
	dealership_id int,
    VIN int
);

-- Table 4
CREATE TABLE sales_contracts (
	sales_id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
    customer_name varchar(50) NOT NULL,
    sales_coordinator varchar(50) NOT NULL,
    FOREIGN KEY (price) REFERENCES vehicles(price),
    FOREIGN KEY (year) REFERENCES vehicles(year),
    FOREIGN KEY (make) REFERENCES vehicles(make),
    FOREIGN KEY (model) REFERENCES vehicles(model),
    FOREIGN KEY (color) REFERENCES vehicles(color)
);

-- Table 5
CREATE TABLE lease_contracts (
	lease_id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
    customer_name varchar(50) NOT NULL,
    lease_coordinator varchar(50) NOT NULL,
    FOREIGN KEY (price) REFERENCES vehicles(price),
    FOREIGN KEY (year) REFERENCES vehicles(year),
    FOREIGN KEY (make) REFERENCES vehicles(make),
    FOREIGN KEY (model) REFERENCES vehicles(model),
    FOREIGN KEY (color) REFERENCES vehicles(color)
);



