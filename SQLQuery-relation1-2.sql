CREATE TABLE Passports(
PassportID INT PRIMARY KEY,
PassportNumber CHAR(8) NOT NULL,
)
CREATE TABLE Persons(
PersonID INT PRIMARY KEY,
[FirstName] NVARCHAR (50) NOT NULL,
Salary DECIMAL(7, 2) NOT NULL,
PassportID INT NOT NULL FOREIGN KEY REFERENCES  Passports(PassportID)UNIQUE
)
SELECT * FROM Persons

CREATE TABLE Manufacturers (
ManufacturerI INT PRIMARY KEY,
[Name] NVARCHAR(10) NOT NULL,
EstablishedOn  DATE
)
CREATE TABLE Models(
ModelID INT PRIMARY KEY,
[Name] NVARCHAR(10) NOT NULL,
ManufacturerID INT NOT NULL FOREIGN KEY REFERENCES Manufacturers(ManufacturerI)
) 