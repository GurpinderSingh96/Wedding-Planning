INSERT INTO Project.Stylists (StylistID, StylistName, StylistType, YearsOfExperience, Cost)
VALUES 
(FLOOR(RAND() * 1000), 'Karen Lewis', 'Hair', 5, 7000 + (RAND() * 8000)),
(FLOOR(RAND() * 1000), 'Larry Miller', 'Makeup', 3, 4000 + (RAND() * 5000)),
(FLOOR(RAND() * 1000), 'Mandy Nelson', 'Hair', 7, 9000 + (RAND() * 10000)),
(FLOOR(RAND() * 1000), 'Nigel Edwards', 'Makeup', 10, 12000 + (RAND() * 13000)),
(FLOOR(RAND() * 1000), 'Olivia Garcia', 'Hair', 2, 3000 + (RAND() * 4000)),
(FLOOR(RAND() * 1000), 'Peter Robinson', 'Makeup', 6, 8000 + (RAND() * 9000)),
(FLOOR(RAND() * 1000), 'Quincy Hall', 'Hair', 8, 10000 + (RAND() * 11000)),
(FLOOR(RAND() * 1000), 'Rita Young', 'Makeup', 9, 11000 + (RAND() * 12000)),
(FLOOR(RAND() * 1000), 'Steve King', 'Hair', 4, 6000 + (RAND() * 7000)),
(FLOOR(RAND() * 1000), 'Tara Wright', 'Makeup', 7, 9000 + (RAND() * 10000));