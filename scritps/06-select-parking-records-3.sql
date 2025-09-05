-- 1: Select the customer's name, vehicle model, and license plate for all customers who have a registered vehicle. 
-- Order the result by the customer's name in alphabetical order.
SELECT C.Name AS "Client Name", 
	   V.Model AS "Vehicle Model", 
	   S.LicensePlate AS "Vehicle License Plate"
FROM Customers C
INNER JOIN CustomerVehicles CV 
		ON C.Id = CV.CustomerId
INNER JOIN Vehicles V 
		ON CV.VehicleId = V.Id
INNER JOIN Stays S 
		ON cv.Id = S.CustomerVehicleId
ORDER BY C.Name;

-- 2: For each completed stay, list the vehicle's license plate, the customer's name, and the entry date and time. Also, 
-- calculate the duration of the stay in hours, rounded to two decimal places. Display only the stays that lasted longer than 2 hours.
SELECT S.LicensePlate AS "Vehicle License Plate",
       C.Name AS "Client Name",
       S.EntryDate AS "Entry Date and Time",
	   ROUND(
	        (EXTRACT(DAY FROM (S.ExitDate - S.EntryDate)) * 24) +
	         EXTRACT(HOUR FROM (S.EXITDATE  - S.EntryDate)) +
	        (EXTRACT(MINUTE FROM (S.ExitDate - S.EntryDate)) / 60), 2
	    ) AS "Duration in Hours"
FROM Stays S
INNER JOIN CustomerVehicles CV 
		ON S.CustomerVehicleId = CV.Id
INNER JOIN Customers C 
		ON CV.CustomerId = C.Id
WHERE S.StayStatus = 'Finalizado' 
AND (S.ExitDate - S.EntryDate) > INTERVAL '2' HOUR;

-- 3: Count how many vehicles of each Brand are registered in each City. Present the result showing the city, the brand,  
-- and the count of vehicles, but only for cities that have vehicles of the 'Toyota' brand.
SELECT A.City AS "Vehicle city",
       V.Brand AS "Vehicle brand",
       COUNT(V.Id) AS "Number of Vehicles"
FROM Addresses A
INNER JOIN Customers C 
		ON A.Id = C.AddressId
INNER JOIN CustomerVehicles CV 
  		ON C.Id = CV.CustomerId
INNER JOIN Vehicles V 
		ON CV.VEHICLEID  = V.Id
WHERE V.Brand = 'Toyota'
GROUP BY A.CITY, V.Brand
ORDER BY A.CITY, V.Brand;

-- 4: List the name and email of all customers who do not yet have any vehicle associated in the CustomerVehicles table.
SELECT C.Name AS "Client Name",
       C.Email AS "E-mail"
FROM Customers C
LEFT JOIN CustomerVehicles CV 
	   ON C.Id = CV.CustomerId
WHERE CV.CustomerId IS NULL;

-- 5: Create a report that shows the VehicleType, the total number of stays for each type, and the average of the TotalAmount values 
-- for their stays. Order the result by the average total amount, from highest to lowest.
SELECT V.VehicleType AS "Vehicle Type",
       COUNT(S.Id) AS "Total Stays",
       AVG(S.TotalAmount) AS "Average Value"
FROM Vehicles V
INNER JOIN CustomerVehicles CV 
        ON V.Id = CV.VehicleId
INNER JOIN Stays S 
        ON CV.Id = S.CustomerVehicleId
GROUP BY V.VehicleType
ORDER BY "Average Value" DESC;