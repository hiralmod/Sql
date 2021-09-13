--JSON PATH
	SELECT FirstName AS 'EmployeeName',
	LastName AS 'Employe LastName'
	FROM Employees FOR JSON PATH

--JSON QUERY
SELECT EmployeeID,
         JSON_QUERY(CONCAT('["',FirstName,'","',LastName,'"]')) AS FullName
FROM Employees 
FOR JSON PATH

--JSON MODIFY
DECLARE @info NVARCHAR(100)=
		'{"Name":"John","skills":["C#","SQL"]}'

PRINT @info

-- Update name  

SET @info=JSON_MODIFY(@info,'$.Name','Michel')

PRINT @info

-- Insert surname  

SET @info=JSON_MODIFY(@info,'$.Surname','Steve')

PRINT @info

-- Add skill  

SET @info=JSON_MODIFY(@info,'append $.skills','PHP')

PRINT @info

-- Multiple updates  

SET @info=JSON_MODIFY(JSON_MODIFY(JSON_MODIFY(@info,'$.Name','Mike'),'$.Surname','Smith'),'append $.skills','Azure')

PRINT @info

-- Update skills array  

SET @info=JSON_MODIFY(@info,'$.skills',JSON_QUERY('["C#","T-SQL","Azure"]'))

PRINT @info

--JSON AUTO
	SELECT E.Firstname,I.incentiveAmount 
	FROM employee1 E 
	INNER JOIN incentives I
	on E.empID= I.emp_ref_ID 
	AND incentiveAmount>3000
	FOR JSON AUTO

--INCLUDE NULL VALUES
SELECT ManagerID FROM Employees FOR JSON PATH,INCLUDE_NULL_VALUES
 
--WIHOUT ARRAY WRAPPER
SELECT TOP 2 Salary FROM Employees 
FOR JSON PATH, WITHOUT_ARRAY_WRAPPER 