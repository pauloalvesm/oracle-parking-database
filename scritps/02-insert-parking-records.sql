-- ********** 1: Addresses **********
INSERT INTO Addresses (Street, BuildingNumber, Complement, Neighborhood, FederativeUnit, City, ZipCode) 
VALUES
('Rua das Flores', '100', NULL, 'Centro', 'SP', 'São Paulo', '01000-000');

INSERT INTO Addresses (Street, BuildingNumber, Complement, Neighborhood, FederativeUnit, City, ZipCode) 
VALUES
('Avenida Brasil', '200', 'Apto 301', 'Jardins', 'RJ', 'Rio de Janeiro', '20000-000');

INSERT INTO Addresses (Street, BuildingNumber, Complement, Neighborhood, FederativeUnit, City, ZipCode) 
VALUES
('Rua das Palmeiras', '350', NULL, 'Copacabana', 'RJ', 'Rio de Janeiro', '22000-000');

INSERT INTO Addresses (Street, BuildingNumber, Complement, Neighborhood, FederativeUnit, City, ZipCode) 
VALUES
('Rua do Comércio', '50', 'Loja 5', 'Bela Vista', 'SP', 'São Paulo', '01300-000');

INSERT INTO Addresses (Street, BuildingNumber, Complement, Neighborhood, FederativeUnit, City, ZipCode) 
VALUES
('Avenida Paulista', '1500', 'Conj. 10', 'Bela Vista', 'SP', 'São Paulo', '01310-000');


-- ********** 2: Vehicles **********
INSERT INTO Vehicles (VehicleType, Brand, Model, Color, VehicleYear, Notes) 
VALUES
('Carro', 'Toyota', 'Corolla', 'Preto', 2019, NULL);

INSERT INTO Vehicles (VehicleType, Brand, Model, Color, VehicleYear, Notes) 
VALUES
('Moto', 'Honda', 'CG 160', 'Vermelho', 2021, 'Usado para trabalho');

INSERT INTO Vehicles (VehicleType, Brand, Model, Color, VehicleYear, Notes) 
VALUES
('Carro', 'Ford', 'Focus', 'Branco', 2018, NULL);

INSERT INTO Vehicles (VehicleType, Brand, Model, Color, VehicleYear, Notes) 
VALUES
('Carro', 'Chevrolet', 'Onix', 'Prata', 2020, 'Compra nova');

INSERT INTO Vehicles (VehicleType, Brand, Model, Color, VehicleYear, Notes) 
VALUES
('Moto', 'Yamaha', 'YZF-R3', 'Azul', 2022, NULL);


-- ********** 3: Customers **********
INSERT INTO Customers (Name, BirthDate, Cpf, Phone, Email, AddressId) 
VALUES
('Carlos Silva', TO_DATE('1980-05-15', 'YYYY-MM-DD'), '12345678901', '11999999999', 'carlos@email.com', 1);

INSERT INTO Customers (Name, BirthDate, Cpf, Phone, Email, AddressId) 
VALUES
('Ana Paula', TO_DATE('1990-08-20', 'YYYY-MM-DD'), '23456789012', '21988888888', 'ana@email.com', 2);

INSERT INTO Customers (Name, BirthDate, Cpf, Phone, Email, AddressId) 
VALUES
('João Souza', TO_DATE('1975-12-05', 'YYYY-MM-DD'), '34567890123', '21977777777', 'joao@email.com', 3);

INSERT INTO Customers (Name, BirthDate, Cpf, Phone, Email, AddressId) 
VALUES
('Maria Oliveira', TO_DATE('1985-03-10', 'YYYY-MM-DD'), '45678901234', '11966666666', 'maria@email.com', 4);

INSERT INTO Customers (Name, BirthDate, Cpf, Phone, Email, AddressId) 
VALUES
('Pedro Santos', TO_DATE('1992-11-22', 'YYYY-MM-DD'), '56789012345', '11955555555', 'pedro@email.com', 5);


-- 4: CustomerVehicles
INSERT INTO CustomerVehicles (CustomerId, VehicleId) 
VALUES
(1, 1);

INSERT INTO CustomerVehicles (CustomerId, VehicleId) 
VALUES
(2, 2);

INSERT INTO CustomerVehicles (CustomerId, VehicleId) 
VALUES
(3, 3);

INSERT INTO CustomerVehicles (CustomerId, VehicleId) 
VALUES
(4, 4);

INSERT INTO CustomerVehicles (CustomerId, VehicleId) 
VALUES
(5, 5);


-- ********** 5: Stays **********
INSERT INTO Stays (CustomerVehicleId, LicensePlate, EntryDate, ExitDate, HourlyRate, TotalAmount, StayStatus) 
VALUES
(1, 'ABC1234', TO_TIMESTAMP('2025-08-10 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-08-10 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 10.00, 45.00, 'Finalizado');

INSERT INTO Stays (CustomerVehicleId, LicensePlate, EntryDate, ExitDate, HourlyRate, TotalAmount, StayStatus) 
VALUES
(2, 'XYZ5678', TO_TIMESTAMP('2025-08-11 09:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-08-11 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 12.00, 105.00, 'Finalizado');

INSERT INTO Stays (CustomerVehicleId, LicensePlate, EntryDate, ExitDate, HourlyRate, TotalAmount, StayStatus) 
VALUES
(3, 'DEF2345', TO_TIMESTAMP('2025-08-12 07:45:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-08-12 10:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8.00, 18.00, 'Finalizado');

INSERT INTO Stays (CustomerVehicleId, LicensePlate, EntryDate, ExitDate, HourlyRate, TotalAmount, StayStatus) 
VALUES
(4, 'GHI7890', TO_TIMESTAMP('2025-08-13 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-08-13 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), 15.00, 52.50, 'Finalizado');

INSERT INTO Stays (CustomerVehicleId, LicensePlate, EntryDate, ExitDate, HourlyRate, TotalAmount, StayStatus) 
VALUES
(5, 'JKL3456', TO_TIMESTAMP('2025-08-14 10:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2025-08-14 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 10.00, 25.00, 'Finalizado');
