USE ColonialJourney

CREATE TABLE Planets(
ID INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR (30) NOT NULL
)

CREATE TABLE Spaceports(
ID INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR (50) NOT NULL,
PLANETID INT NOT NULL FOREIGN KEY REFERENCES Planets(ID) UNIQUE
)

CREATE TABLE Spaceships(
ID INT PRIMARY KEY NOT NULL,
[Name] NVARCHAR (50) NOT NULL,
Manufacturer NVARCHAR (30) NOT NULL,
LightSpeedRate INT 
)

CREATE TABLE Colonists(
ID INT PRIMARY KEY NOT NULL,
FirstName NVARCHAR (20) NOT NULL,
LastName NVARCHAR (20) NOT NULL,
UCN NVARCHAR(20) NOT NULL UNIQUE,
BirtDate DATE NOT NULL
) 

CREATE TABLE Journeys(
ID INT PRIMARY KEY NOT NULL,
JourneyStart DATETIME NOT NULL,
JourneyEnd  DATETIME NOT NULL,
Purpose NVARCHAR (50),
CHECK (Purpose IN('Medical', 'Technical', 'Educational', 'Military') OR Purpose IS NULL),
DestinationSpaceportId INT NOT NULL FOREIGN KEY REFERENCES Spaceports(ID),
SpaceshipId INT NOT NULL FOREIGN KEY REFERENCES Spaceships(ID)
)

CREATE TABLE TravelCards(
ID INT PRIMARY KEY NOT NULL,
CardNumber NVARCHAR (10) NOT NULL UNIQUE,
JobDuringJourney NVARCHAR (8),
CHECK (JobDuringJourney IN('Pilot', 'Engineer', 'Trooper', 'Cleaner', 'Cook') OR JobDuringJourney IS NULL),
ColonistId INT NOT NULL FOREIGN KEY REFERENCES Colonists(ID),
JourneyId INT NOT NULL FOREIGN KEY REFERENCES Journeys(ID)
)

INSERT INTO Planets(ID, [Name])
VALUES
(1,'Mercury'),
(2, 'Venus'),
(3,'Earth'),
(4,'Mars'),
(5,'Jupiter'),
(6,'Saturn'),
(7, 'Uranus'),
(8,'Neptune')

INSERT INTO Spaceships(ID,[Name], Manufacturer, LightSpeedRate)
VALUES
(1, 'Golf', 'VW', 3),
(2, 'WakaWaka', 'Wakanda', 4),
(3, 'Falcon9', 'SpaceX', 1 ),
(4, 'Bed', 'Vidolov', 6)

SELECT * FROM Spaceships
SELECT * FROM Planets





