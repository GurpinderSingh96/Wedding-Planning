INSERT INTO Project.WeddingPlans ( 
    PlanID,
    CoupleID, 
    BrideName, 
    GroomName, 
    LawyerName, 
    PhotographerName, 
    StylistName, 
    LocationName, 
    CateringName1,  
    CateringName2,  
    DecorationType, 
    DancerGroupName, 
    BandName, 
    PerformanceDuration,
    VehicleType, 
    NumberOfVehicles, 
    CarBrand,
    CarModel, 
    SuitName, 
    DressName, 
    NumberOfPeople, 
    Location,
    WeddingDate,
    ReceptionDate,
    PhotoshootDate,
    EngagementDate,
    RequestText) 
SELECT 
    FLOOR(RAND() * 1000),
    C.CoupleID, 
    C.BrideName, 
    C.GroomName, 
    L.LawyerName, 
    P.PhotographerName, 
    S.StylistName, 
    LO.LocationName, 
    CA1.CateringName, 
    CA2.CateringName,  
    D.DecorationType, 
    DA.DancerGroupName, 
    M.BandName, 
    60,
    T.VehicleType,
    CEIL(200/T.Capacity),  -- assuming T.Capacity holds the capacity of the vehicle
    WC.CarBrand, 
    WC.CarModel, 
    GS.SuitName, 
    BD.DressName,
    200, 
    PL.Location ,
    EV1.EventDate ,
    EV2.EventDate ,
    EV3.EventDate ,
    EV4.EventDate, 
    RQ.RequestText
FROM 
    Project.Couples C
JOIN Project.Lawyers L ON L.LawyerID = 172
JOIN Project.Photographers P ON P.PhotographerID = 60
JOIN Project.Stylists S ON S.StylistID = 233
JOIN Project.Locations LO ON LO.LocationID = 78
JOIN Project.Catering CA1 ON CA1.CateringID = 109
JOIN Project.Catering CA2 ON CA2.CateringID = 37
JOIN Project.Decoration D ON D.DecorationID = 31
JOIN Project.Dancers DA ON DA.DancerID = 13
JOIN Project.Music M ON M.MusicID = 334
JOIN Project.Transportation T ON T.TransportID = 186
JOIN Project.WeddingCars WC ON WC.CarID = 8
JOIN Project.GroomSuitRental GS ON GS.SuitID = 37
JOIN Project.BrideDressRental BD ON BD.DressID = 55
JOIN Project.OverseasPhotoshootDetails PL ON PL.PhotoshootID = 107
JOIN Project.EventDates EV1 ON EV1.EventID = 604 AND EV1.EventType = 'wedding'
JOIN Project.EventDates EV2 ON EV2.EventID = 803  AND EV2.EventType = 'reception'
JOIN Project.EventDates EV3 ON EV3.EventID = 298  AND EV3.EventType = 'photoshoot'
JOIN Project.EventDates EV4 ON EV4.EventID = 830 AND EV4.EventType = 'engagement'
JOIN Project.SpecialRequests RQ ON RQ.RequestID = 23
WHERE C.CoupleID = 261;