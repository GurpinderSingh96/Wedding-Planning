INSERT INTO Project.Locations (LocationID, LocationName, Address, MaxCapacity, MinCapacity, MinChargesPerson, BookingCharges)
VALUES 
(FLOOR(RAND() * 1000), 'The Peninsula Hong Kong', 'Salisbury Road, Tsim Sha Tsui, Hong Kong', 200, 140, 550, 22000),
(FLOOR(RAND() * 1000), 'Four Seasons Hotel Hong Kong', '8 Finance Street, Central, Hong Kong', 250, 125, 700, 14000),
(FLOOR(RAND() * 1000), 'The Ritz-Carlton, Hong Kong', 'International Commerce Centre, 1 Austin Road West, Hong Kong', 220, 110, 590, 22800),
(FLOOR(RAND() * 1000), 'Island Shangri-La Hong Kong', 'Pacific Place, Supreme Court Road, Central, Hong Kong', 230, 115, 590, 2300),
(FLOOR(RAND() * 1000), 'Ocean View Hall', 'Ocean View Road, Hong Kong', 150, 110, 450, 24000),
(FLOOR(RAND() * 1000), 'Mountain Top Banquet', 'Mountain Top Lane, Hong Kong', 180, 110, 355, 33000),
(FLOOR(RAND() * 1000), 'City Central Venue', 'City Central Street, Hong Kong', 200, 150, 470, 39000),
(FLOOR(RAND() * 1000), 'Harbor Side Celebration', 'Harbor Side Avenue, Hong Kong', 220, 140, 505, 29000);