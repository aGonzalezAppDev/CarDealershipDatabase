-- Question 5
SELECT d.dealership_id, d.dealership_name, d.address, d.phone
FROM inventory i
INNER JOIN vehicles v
	ON i.VIN = v.VIN
INNER JOIN dealerships d
	ON i.dealership_id = d.dealership_id
WHERE v.color = "white" AND v.make = "Honda" AND v.model = "Civic" ;