-- Question 2
SELECT v.VIN, v.make, v.model, v.color, v.year, v.vehicleType, v.odomoter, v.price, v.sold
FROM inventory i
INNER JOIN vehicles v
	ON i.VIN = v.VIN
INNER JOIN dealerships d
	ON i.dealership_id = d.dealership_id
WHERE dealership_name = "Best Dealership";