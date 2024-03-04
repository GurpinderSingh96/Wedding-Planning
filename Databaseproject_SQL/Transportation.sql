INSERT INTO Project.Transportation (TransportID, VehicleType, Capacity, Cost)
VALUES 
(FLOOR(RAND() * 1000), 'Coach Bus', 40, 4000 + (RAND() * 5000)),
(FLOOR(RAND() * 1000), 'Mini Bus', 20, 3000 + (RAND() * 5000)),
(FLOOR(RAND() * 1000), 'Double Decker Bus', 80, 6000 + (RAND() * 7000)),
(FLOOR(RAND() * 1000), 'Luxury Coach', 40, 4200 + (RAND() * 5200)),
(FLOOR(RAND() * 1000), 'Shuttle Bus', 30, 3000 + (RAND() * 5000)),
(FLOOR(RAND() * 1000), 'Party Bus', 20, 4000 + (RAND() * 5000)),
(FLOOR(RAND() * 1000), 'Wedding Bus', 30, 6000 + (RAND() * 8000));