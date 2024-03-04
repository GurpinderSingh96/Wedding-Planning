INSERT INTO Project.WeddingCars (CarID, CarBrand, CarModel, CarYear, CarType, Capacity, RentCost)
VALUES 
(FLOOR(RAND() * 1000), 'Rolls-Royce', 'Phantom', 2023, 'Luxury', 4, 65000 + (RAND() * 80000)),
(FLOOR(RAND() * 1000), 'Bentley', 'Continental GT', 2022, 'Luxury', 4, 25000 + (RAND() * 65000)),
(FLOOR(RAND() * 1000), 'Mercedes-Benz', 'S-Class', 2023, 'Luxury', 4, 28000 + (RAND() * 59000)),
(FLOOR(RAND() * 1000), 'Audi', 'A8', 2022, 'Luxury', 4, 22000 + (RAND() * 55000)),
(FLOOR(RAND() * 1000), 'BMW', '7 Series', 2023, 'Luxury', 4, 18000 + (RAND() * 42000)),
(FLOOR(RAND() * 1000), 'Jaguar', 'XJ', 2022, 'Luxury', 4, 12000 + (RAND() * 30000)),
(FLOOR(RAND() * 1000), 'Porsche', 'Panamera', 2023, 'Sport', 4, 24000 + (RAND() * 44000)),
(FLOOR(RAND() * 1000), 'Lexus', 'LS', 2022, 'Luxury', 4, 20000 + (RAND() * 39000)),
(FLOOR(RAND() * 1000), 'Aston Martin', 'Rapide', 2023, 'Luxury', 4, 19000 + (RAND() * 30000)),
(FLOOR(RAND() * 1000), 'Maserati', 'Quattroporte', 2022, 'Sport', 4, 19000 + (RAND() * 28000));