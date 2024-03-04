INSERT INTO Project.Invoices (
    InvoiceID,
    PlanID, 
    InvoiceDate, 
    TotalCost, 
    PaymentStatus
) 
SELECT 
    FLOOR(RAND() * 1000),
    PlanID, 
    CURDATE(), 
    TotalCost, 
    'Due'
FROM 
    Project.Cart
WHERE 
    PlanID = 988;