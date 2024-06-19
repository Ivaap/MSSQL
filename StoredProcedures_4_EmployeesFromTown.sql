USE SoftUni

GO

CREATE PROCEDURE usp_GetEmployeesFromTown
@townName NVARCHAR(50)
AS 
BEGIN
SELECT e.FirstName, e.LastName
FROM Employees AS e INNER JOIN Addresses AS a
ON e.AddressID = a.AddressID 
INNER JOIN Towns AS t
ON a.TownID = t.TownID
WHERE t.[Name] = @townName
END;

EXEC usp_GetEmployeesFromTown  'Sofia';