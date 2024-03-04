INSERT INTO Project.Cart (
    CartID, 
    PlanID, 
    LawyerCost, 
    PhotographerCost, 
    StylistCost, 
    LocationCost, 
    Catering1Cost, 
    Catering2Cost, 
    DecorationCost, 
    DancerCost, 
    MusicCost, 
    TransportationNumber, 
    TransportCost, 
    CarCost, 
    SuitCost, 
    DressCost, 
    PhotoshootCost, 
    TotalCost
) 
SELECT 
    FLOOR(RAND() * 1000), 
    WP.PlanID, 
    L.Cost, 
    P.Cost, 
    S.Cost, 
    (LO.MinChargesPerson * WP.NumberOfPeople) + LO.BookingCharges, 
    CA1.CostPerPerson * 40,  
    CA2.CostPerPerson * (WP.NumberOfPeople - 40),   
    D.Cost, 
    DA.Cost, 
    M.MinCost, 
    CEIL(WP.NumberOfPeople / T.Capacity), 
    CEIL(WP.NumberOfPeople / T.Capacity) * T.Cost, 
    WC.RentCost, 
    GS.SuitCost, 
    BD.DressCost, 
    PC.PhotoshootCost,
    L.Cost + P.Cost + S.Cost + (LO.MinChargesPerson * WP.NumberOfPeople) + LO.BookingCharges + CA1.CostPerPerson * 40 
    + CA2.CostPerPerson * (WP.NumberOfPeople - 40) + D.Cost + DA.Cost + M.MinCost 
    + CEIL(WP.NumberOfPeople / T.Capacity) * T.Cost + WC.RentCost + GS.SuitCost 
    + BD.DressCost + PC.PhotoshootCost
FROM 
    Project.WeddingPlans WP
    JOIN Project.Lawyers L ON L.LawyerName = WP.LawyerName 
    JOIN Project.Photographers P ON P.PhotographerName = WP.PhotographerName 
    JOIN Project.Stylists S ON S.StylistName = WP.StylistName 
    JOIN Project.Locations LO ON LO.LocationName = WP.LocationName 
    JOIN Project.Catering CA1 ON CA1.CateringName = WP.CateringName1   
    JOIN Project.Catering CA2 ON CA2.CateringName = WP.CateringName2   
    JOIN Project.Decoration D ON D.DecorationType = WP.DecorationType 
    JOIN Project.Dancers DA ON DA.DancerGroupName = WP.DancerGroupName 
    JOIN Project.Music M ON M.BandName = WP.BandName 
    JOIN Project.Transportation T ON T.VehicleType = WP.VehicleType 
    JOIN Project.WeddingCars WC ON WC.CarBrand = WP.CarBrand 
    JOIN Project.GroomSuitRental GS ON GS.SuitName = WP.SuitName 
    JOIN Project.BrideDressRental BD ON BD.DressName = WP.DressName 
    JOIN Project.OverseasPhotoshootDetails PC ON PC.Location = WP.Location
WHERE WP.PlanID = 988;