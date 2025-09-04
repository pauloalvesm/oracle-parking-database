-- 1: List the VehicleType and the count of vehicles for each type, but only for types that have more than one vehicle registered.
SELECT VehicleType AS "Vehicle Type", 
       COUNT(*) AS "Number of Vehicles" 
FROM Vehicles
GROUP BY VehicleType
HAVING COUNT(*) > -1;

-- 2: For each StayStatus, calculate the total amount of all stays and the average of the amounts.
SELECT StayStatus AS "Stay Status", 
       SUM(TOTALAMOUNT) AS "Total Amount",
       AVG(TOTALAMOUNT) AS "Average Value"
FROM Stays
GROUP BY StayStatus;

-- 3: Select the customer's Name and Cpf for customers who live in the same city as the customer with Id equal to 3.
SELECT Name AS "Name", 
       Cpf AS "CPF"
FROM Customers
WHERE AddressId IN (
	SELECT Id 
	FROM Addresses
	WHERE City = (
		SELECT City
		FROM Addresses
		WHERE Id = (SELECT AddressId FROM Customers WHERE Id = 3)
	)
);

-- 4: Find the Model and Brand of all vehicles that belong to customers living in the state of 'SP'.
SELECT Model AS "Model", 
       Brand AS "Brand"
FROM Vehicles
WHERE Id IN (
	SELECT VehicleId
	FROM CustomerVehicles
	WHERE CustomerId IN (
		SELECT Id
		FROM Customers
		WHERE AddressId IN (
			SELECT Id
			FROM Addresses
			WHERE FederativeUnit = 'SP'
		) 
	)
);

-- 5: Calculate the total number of customers by City and FederativeUnit. Order the result by the number of customers, from largest to smallest.
SELECT City AS "City", 
       FederativeUnit AS "Federative Unit",
       COUNT(*) AS "Total Customers"
FROM Addresses
GROUP BY City, FederativeUnit
ORDER BY "Total Customers" DESC;

-- 6: List the Brand, Model, and VehicleYear of all vehicles, and add an extra column that shows the HourlyRate of the most expensive stay registered for a car.
SELECT Brand AS "Brand", 
       Model AS "Model", 
       TO_CHAR(VehicleYear, 'FM9999') AS "Vehicle Year",
       (SELECT MAX(HourlyRate) FROM Stays) AS "Maximum Hourly Rate"
FROM Vehicles;

-- 7: For each combination of Brand and Color, count how many vehicles exist.
SELECT Brand AS "Brand", 
       Color AS "Color",
       COUNT(*) AS "Number of Vehicles"
FROM Vehicles
GROUP BY Brand, Color;

-- 8: Calculate the average TotalAmount of stays, but only consider stays where the total amount is greater than R$ 20.00.
SELECT AVG(TotalAmount) AS "Average Stay Value"
FROM Stays
WHERE TotalAmount > 20.00;

-- 9: Count how many stays were completed (StayStatus = 'Finalizado') in the month of August 2025.
SELECT COUNT(*) AS "Stays completed in August 2025"
FROM Stays
WHERE StayStatus = 'Finalizado'
AND EntryDate >= TO_TIMESTAMP('2025-08-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
AND EntryDate <= TO_TIMESTAMP('2025-08-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');

-- 10: List the Id of customers who own more than one registered vehicle.
SELECT  CustomerId  AS "Customer Id"
FROM CustomerVehicles 
GROUP BY CustomerId
HAVING COUNT(*) > 1;






