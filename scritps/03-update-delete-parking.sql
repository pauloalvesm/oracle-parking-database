-- ********** Add records for testing **********
INSERT INTO Addresses (Street, BuildingNumber, Complement, Neighborhood, FederativeUnit, City, ZipCode) 
VALUES
('Avenida Teste', '10000', 'Conj. 10', 'Bairro Teste', 'SP', 'São Paulo', '00000-000');

INSERT INTO Vehicles (VehicleType, Brand, Model, Color, VehicleYear, Notes) 
VALUES
('Teste', 'Teste', 'ABC-R3', 'Azul', 2024, NULL);

INSERT INTO Customers (Name, BirthDate, Cpf, Phone, Email, AddressId) 
VALUES
('Cliente Teste', TO_DATE('1992-11-22', 'YYYY-MM-DD'), '56789012345', '11955555598', 'teste@email.com', 6);

INSERT INTO CustomerVehicles (CustomerId, VehicleId) 
VALUES
(6, 6);

INSERT INTO Stays (CustomerVehicleId, LicensePlate, EntryDate, ExitDate, HourlyRate, TotalAmount, StayStatus) 
VALUES
(6, 'ABCD123', TO_TIMESTAMP('2025-08-14 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-08-14 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 50.00, 55.00, 'Finalizado');


-- ********** Update customer records **********
UPDATE Addresses SET BuildingNumber = '101' WHERE Id = 1;

UPDATE Customers SET Cpf = '93638440052' WHERE Id = 1;

UPDATE Customers SET Cpf = '52072301076' WHERE Id = 2;

UPDATE Customers SET Cpf = '46312009017' WHERE Id = 3;

UPDATE Customers SET Cpf = '53774474095' WHERE Id = 4;

UPDATE Customers SET Cpf = '81011771080' WHERE Id = 5;


-- ********** Delete records **********
DELETE FROM Stays WHERE Id = 6;

DELETE FROM CustomerVehicles WHERE Id = 6;

DELETE FROM Vehicles WHERE Id = 6;

DELETE FROM Customers WHERE Id = 6;

DELETE FROM Addresses WHERE Id = 6;

