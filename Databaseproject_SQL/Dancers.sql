INSERT INTO Project.Dancers (DancerID, DancerGroupName, DancerType, PerformanceDuration, Cost)
VALUES 
(FLOOR(RAND() * 1000), 'Groovy Moves', 'Contemporary', 30, 1200 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Rhythmic Rockers', 'Hip-Hop', 45, 1700 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Classical Charm', 'Ballet', 40, 1800 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Urban Unison', 'Street Dance', 50, 1500 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Elegant Emotions', 'Contemporary',60, 1600 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Hip-Hop Harmony', 'Hip-Hop', 45, 1200 + (RAND() * 3000)),
(FLOOR(RAND() * 1000), 'Ballet Brilliance', 'Ballet', 40, 1700 + (RAND() * 3000));