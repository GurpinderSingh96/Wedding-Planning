INSERT INTO Project.Catering (CateringID, CateringName, MealType, CostPerPerson)
VALUES 
(FLOOR(RAND() * 1000), 'Gourmet Delights', 'Vegetarian', 25 + (RAND() * 55)),
(FLOOR(RAND() * 1000), 'Seafood Express', 'Seafood', 40 + (RAND() * 70)),
(FLOOR(RAND() * 1000), 'Meat Lovers', 'Non-Vegetarian', 25 + (RAND() * 60)),
(FLOOR(RAND() * 1000), 'Vegetarian Vibes', 'Vegetarian', 25 + (RAND() * 68)),
(FLOOR(RAND() * 1000), 'Ocean Bounty', 'Seafood', 40 + (RAND() * 80)),
(FLOOR(RAND() * 1000), 'Barbecue Boss', 'Non-Vegetarian', 40 + (RAND() * 60)),
(FLOOR(RAND() * 1000), 'Green Planet', 'Vegetarian', 40 + (RAND() * 50)),
(FLOOR(RAND() * 1000), 'Marine Morsels', 'Seafood', 45 + (RAND() * 75)),
(FLOOR(RAND() * 1000), 'Carnivore King', 'Non-Vegetarian', 26 + (RAND() * 60)),
(FLOOR(RAND() * 1000), 'Veggie Valley', 'Vegetarian', 26 + (RAND() * 70)),
(FLOOR(RAND() * 1000), 'Fisherman', 'Seafood', 50 + (RAND() * 85)),
(FLOOR(RAND() * 1000), 'Beef Baron', 'Non-Vegetarian', 35 + (RAND() * 65)),
(FLOOR(RAND() * 1000), 'Plant Power', 'Vegetarian', 30 + (RAND() * 60)),
(FLOOR(RAND() * 1000), 'Ocean Odyssey', 'Seafood', 60 + (RAND() * 200)),
(FLOOR(RAND() * 1000), 'Meat Mountain', 'Non-Vegetarian', 33 + (RAND() * 77));