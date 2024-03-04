INSERT INTO Project.Music (MusicID, BandName, MinPerformanceDuration, MaxPerformanceDuration, MinCost, MaxCost)
VALUES 
(FLOOR(RAND() * 1000), 'Melodic Masters', 60, 180, 2000 + (RAND() * 4000), 6000 + (RAND() * 8000)),
(FLOOR(RAND() * 1000), 'Harmonic Heroes', 45, 180, 1500 + (RAND() * 3000), 6000 + (RAND() * 8000)),
(FLOOR(RAND() * 1000), 'Rhythmic Rebels', 60, 180, 2000 + (RAND() * 4000), 6000 + (RAND() * 8000)),
(FLOOR(RAND() * 1000), 'Tonal Titans', 50, 180, 2500 + (RAND() * 3000), 6000 + (RAND() * 8000)),
(FLOOR(RAND() * 1000), 'Pitch Perfect', 60, 180, 2200 + (RAND() * 3000), 6000 + (RAND() * 8000));