-- 1: Select the name and email of all registered customers.
SELECT Name AS "Name", 
       Email AS "E-mail" 
FROM Customers;

-- 2: List the name, CPF, and email of all customers whose name starts with the letter 'A'.
SELECT Name AS "Name", 
       Email AS "E-mail"
FROM Customers
WHERE Name LIKE 'A%';

-- 3: Select the street, neighborhood, and city for all addresses that contain the word 'Palmeiras' in the street name.
SELECT Street AS "Street", 
       Neighborhood AS "Neighborhood", 
       City AS "City"
FROM Addresses
WHERE Street LIKE '%Palmeiras%';

-- 4: Display all data for the vehicle that is of type 'Car' and color 'Silver'.
SELECT * FROM Vehicles
WHERE VehicleType = 'Carro' 
AND Color = 'Prata';

-- 5: List the name of customers who were born before the year 1990.
SELECT Name AS "Name", BirthDate AS "Birth date"  
FROM Customers
WHERE BirthDate < TO_DATE('1990-01-01', 'YYYY-MM-DD');

-- 6: Show the license plate and total amount for stays that cost more than $50.00.
SELECT LicensePlate AS "License Plate", 
       TotalAmount AS "Total Amount" 
FROM Stays
WHERE TotalAmount > 50.00;

-- 7: Retrieve the street, city, and state (federative unit) for all addresses in the state of São Paulo (SP).
SELECT Street AS "Street", 
       City AS "City", 
       FederativeUnit AS "Federative Unit" 
FROM Addresses
WHERE FederativeUnit = 'SP';

-- 8: Count how many vehicles of the brand 'Honda' are registered in the table.
SELECT COUNT(*) 
FROM Vehicles
WHERE Brand = 'Honda';

-- 9: Calculate the average value of the hourly rate (HourlyRate) for all registered stays.
SELECT AVG(HourlyRate) AS "Hourly Rate Average" FROM Stays;

-- 10: Find the total amount of the most expensive stay in the Stays table.
SELECT MAX(TotalAmount) AS "Total Amount" FROM Stays;

-- 11: Find the total value of the minimum stay in the Stays table.
SELECT MIN(TotalAmount) AS "Total Amount" FROM Stays;

-- 12: Find addresses with null complements
SELECT * FROM Addresses
WHERE Complement IS NULL;

-- 13: Find addresses with non-null complements
SELECT * FROM Addresses
WHERE Complement IS NOT NULL;

-- 14: Select the license plate and entry date for stays that do not yet have an exit date (null ExitDate).
SELECT LicensePlate AS "License Plate",
       EntryDate AS "Entry Date"
FROM Stays
WHERE ExitDate IS NULL;

-- 15: List the make, model, and vehicle year for all vehicles, sorting them by year of manufacture (VehicleYear) from oldest to newest.
SELECT Brand AS "Brand", 
       Model AS "Model",
       TO_CHAR(VehicleYear, 'FM9999') AS "Vehicle Year"
FROM Vehicles
ORDER BY VehicleYear ASC;