-- Question 6
SELECT * 
FROM sales_contracts s
INNER JOIN inventory i
	ON i.VIN = s.VIN
INNER JOIN dealerships d
	ON	i.dealership_id = d.dealership_id
WHERE d.dealership_name = "Best Dealership" AND s.sales_date = 2023-07-04;