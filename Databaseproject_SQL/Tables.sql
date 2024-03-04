CREATE TABLE IF NOT EXISTS Project.Couples (
    CoupleID INT PRIMARY KEY,
    BrideName VARCHAR(50),
    GroomName VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS Project.Lawyers (
    LawyerID INT PRIMARY KEY,
    LawyerName VARCHAR(50),
    Cost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.Photographers (
    PhotographerID INT PRIMARY KEY,
    PhotographerName VARCHAR(50),
    YearsOfExperience INT,
    Cost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.Stylists (
    StylistID INT PRIMARY KEY,
    StylistName VARCHAR(50),
    StylistType VARCHAR(20),
    YearsOfExperience INT,
    Cost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.Locations (
    LocationID INT PRIMARY KEY,
    LocationName VARCHAR(50),
    Address TEXT,
    MaxCapacity INT,
    MinCapacity INT,
    MinChargesPerson DECIMAL(10,0),
    BookingCharges DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.Catering (
    CateringID INT PRIMARY KEY,
    CateringName VARCHAR(50),
    MealType VARCHAR(30),
    CostPerPerson DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.Decoration (
    DecorationID INT PRIMARY KEY,
    DecorationType VARCHAR(50),
    Cost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.Dancers (
    DancerID INT PRIMARY KEY,
    DancerGroupName VARCHAR(50),
    DancerType VARCHAR(20),
    PerformanceDuration INT,
    Cost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.Music (
    MusicID INT PRIMARY KEY,
    BandName VARCHAR(50),
    MinPerformanceDuration INT,
    MaxPerformanceDuration INT,
    MinCost DECIMAL(10,0),
    MaxCost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.Transportation (
    TransportID INT PRIMARY KEY,
    VehicleType VARCHAR(20),
    Capacity INT,
    Cost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.WeddingCars (
    CarID INT PRIMARY KEY,
    CarBrand VARCHAR(30),
    CarModel VARCHAR(50),
    CarYear INT,
    CarType VARCHAR(30),
    Capacity INT,
    RentCost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.GroomSuitRental (
    SuitID INT PRIMARY KEY,
    SuitName VARCHAR(255),
    SuitCost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.BrideDressRental (
    DressID INT PRIMARY KEY,
    DressName VARCHAR(255),
    DressCost DECIMAL(10,0)
);
CREATE TABLE IF NOT EXISTS Project.OverseasPhotoshootDetails (
    PhotoshootID INT AUTO_INCREMENT PRIMARY KEY,
    Location VARCHAR(50),
    AirTicketDetails VARCHAR(255),
    HotelDetails VARCHAR(255),
    LocalTransportDetails VARCHAR(255),
    PhotoshootCost DECIMAL(10,0)
);

CREATE TABLE IF NOT EXISTS Project.EventDates (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    EventType VARCHAR(50),
    EventDate DATE
);

CREATE TABLE IF NOT EXISTS Project.SpecialRequests (
    RequestID INT AUTO_INCREMENT PRIMARY KEY,
    RequestText TEXT
);
CREATE TABLE Project.WeddingPlans
(
    PlanID INT PRIMARY KEY,
    CoupleID INT,
    BrideName VARCHAR(255),
    GroomName VARCHAR(255),
    LawyerName VARCHAR(50),
    PhotographerName VARCHAR(50),
    StylistName VARCHAR(50),
    LocationName VARCHAR(50),
    CateringName1 VARCHAR(50),
    CateringName2 VARCHAR(50),
    DecorationType VARCHAR(50),
    DancerGroupName VARCHAR(50),
    BandName VARCHAR(50),
    PerformanceDuration INT,
    VehicleType VARCHAR(30),
    NumberOfVehicles INT,
    CarBrand VARCHAR(30),
    CarModel VARCHAR(50),
    SuitName VARCHAR(255),
    DressName VARCHAR(255),
    NumberOfPeople INT,
    Location VARCHAR(50),
    WeddingDate DATE,
    ReceptionDate DATE,
    PhotoshootDate DATE,
    EngagementDate DATE,
    RequestText TEXT
);

CREATE TABLE Project.Cart
(
    CartID INT PRIMARY KEY,
    PlanID INT,
    LawyerCost DECIMAL(10,0),
    PhotographerCost DECIMAL(10,0),
    StylistCost DECIMAL(10,0),
    LocationCost DECIMAL(10,0),
    Catering1Cost DECIMAL(10,0),
    Catering2Cost DECIMAL(10,0),
    DecorationCost DECIMAL(10,0),
    DancerCost DECIMAL(10,0),
    MusicCost DECIMAL(10,0),
    TransportationNumber INT,
    TransportCost DECIMAL(10,0),
    CarCost DECIMAL(10,0),
    SuitCost DECIMAL(10,0),
    DressCost DECIMAL(10,0),
    PhotoshootCost DECIMAL(10,0),
    TotalCost DECIMAL(10,0),
    FOREIGN KEY (PlanID) REFERENCES Project.WeddingPlans(PlanID)
);
    CREATE TABLE IF NOT EXISTS Project.Invoices (
    InvoiceID INT AUTO_INCREMENT PRIMARY KEY,
    PlanID INT,
    InvoiceDate DATE,
    TotalCost INT,
    PaymentStatus VARCHAR(10),
    FOREIGN KEY (PlanID) REFERENCES Project.WeddingPlans(PlanID)
);
    
    