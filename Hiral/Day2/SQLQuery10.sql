UPDATE Employees SET Email='Not available' WHERE  DepartmentID=(select DepartmentID from Department WHERE DepartmentName='Accounting')

select * from Employees