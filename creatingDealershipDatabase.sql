DROP DATABASE IF EXISTS cardealershipdatabase;

CREATE DATABASE cardealershipdatabase;

-- Table 1
CREATE TABLE dealerships (
	dealership_id  int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dealership_name varchar(50) NOT NULL,
    address varchar(50) NOT NULL,
    phone varchar(12) NOT NULL
);

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

-- Table 3
CREATE TABLE inventory (
	dealerships_id int PRIMARY KEY NOT NULL,
    VIN int NOT NULL,
	FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

-- Table 4
CREATE TABLE sales_contracts (
	sales_id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
    customer_name varchar(50) NOT NULL,
    sales_coordinator varchar(50) NOT NULL,
    price int NOT NULL,
    year int NOT NULL,
    make varchar(50) NOT NULL,
    model varchar(50) NOT NULL,
    color varchar(50) NOT NULL,
    odometer int NOT NULL
);

-- Table 5
CREATE TABLE lease_contracts (
	lease_id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
    customer_name varchar(50) NOT NULL,
    lease_coordinator varchar(50) NOT NULL,
   price int NOT NULL,
    year int NOT NULL,
    make varchar(50) NOT NULL,
    model varchar(50) NOT NULL,
    color varchar(50) NOT NULL,
    odometer int NOT NULL
);



-- POPULATE SAMPLE DATA 
-- dealerships
INSERT INTO dealerships
VALUES (1, "Best Dealership", "123 Memorial Drive, Hackensack, NJ","973-546-7656");
INSERT INTO dealerships
VALUES (2, "Okay Dealership", "453 Paramus Ava, Paramus, NJ", "201-854-0926");

-- vehicles
INSERT INTO vehicles
VALUES(10201, "Toyota", "Camry","silver",2015,"sedan",10000,12000, 0);
INSERT INTO vehicles
VALUES(10202,"Kia","Stinger","black",2020, "sedan",5000,60000, 1);
INSERT INTO vehicles
VALUES (10203,"Chevy","Silverado", "blue",2018, "truck",12000,40000,0);
INSERT INTO vehicles
VALUES (10204, "Honda","Civic","white",2019,"sedan",3000,45000,1);

-- inventory
INSERT INTO inventory
VALUES(1,10203);
INSERT INTO inventory
VALUES(2, 10201);

-- sales_contracts
INSERT INTO sales_contracts
VALUES (1,10202,"Angel Gonzalez","Jack Freeman",60000,2020,"Kia","Stinger","black", 5000);

-- lease contracts 
INSERT INTO lease_contracts
VALUES (1,10204,"Ronald Chase","Mary Rose",45000,2019,"Honda","Civic","white",3000);
