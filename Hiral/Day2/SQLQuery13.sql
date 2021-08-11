UPDATE Employees  SET salary= CASE DepartmentID WHEN 40 THEN salary+(salary*.25) 
												  WHEN 90 THEN salary+(salary*.15)
												  WHEN 110 THEN salary+(salary*.10)
												  ELSE salary
												  END
                                                 WHERE DepartmentID IN (40,90,110)
SELECT * FROM Employees