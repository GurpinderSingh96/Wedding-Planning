INSERT INTO Project.Lawyers (LawyerID, LawyerName, Cost)
VALUES 
(FLOOR(RAND() * 1000), 'John Doe', 1500 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Jane Smith', 1500 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Robert Johnson', 1500 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Emily Davis', 1500 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Michael Brown', 1500 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Sarah Martinez', 1500 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'David Wilson', 1500 + (RAND() * 3000));