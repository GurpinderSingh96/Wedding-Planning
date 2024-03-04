-- Ensure the timezone is set correctly for your database
-- SET @@session.time_zone = '+00:00';

INSERT INTO Project.EventDates (EventID,EventType, EventDate)
VALUES 
(FLOOR(RAND() * 1000),'Photoshoot', DATE_ADD(CURDATE(), INTERVAL FLOOR(1 + RAND() * 13) DAY)),
(FLOOR(RAND() * 1000),'Wedding', DATE_ADD(CURDATE(), INTERVAL FLOOR(1 + RAND() * 19) DAY)),
(FLOOR(RAND() * 1000),'Reception', DATE_ADD(CURDATE(), INTERVAL FLOOR(1 + RAND() * 20) DAY)),
(FLOOR(RAND() * 1000),'Engagement', DATE_ADD(CURDATE(), INTERVAL FLOOR(1 + RAND() * 13) DAY));