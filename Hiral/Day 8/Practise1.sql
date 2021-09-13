--Read Uncommitted
SET TRANSACTION ISOLATION LEVEL
	READ UNCOMMITTED

	SELECT LastName
	FROM Employees
	WHERE EmployeeID = 104

--Read committed
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL
	READ COMMITTED

	SELECT LastName
	FROM Employees
	WHERE EmployeeID = 103

--Non repeatable Read
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL
	READ COMMITTED

	SELECT LastName
	FROM Employees
	WHERE EmployeeID = 103

	SELECT LastName
	FROM Employees
	WHERE EmployeeID = 103


--SERIALIZABLE
BEGIN TRANSACTION

SET TRANSACTION ISOLATION LEVEL
	SERIALIZABLE

	SELECT LastName
	FROM Employees
	WHERE LastName = 'King'


	SELECT EmployeeID, LastName
	FROM Employees
	WHERE LastName = 'King'

ROLLBACK TRANSACTION