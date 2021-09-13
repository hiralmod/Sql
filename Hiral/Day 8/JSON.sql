--Assignment
DECLARE @data NVARCHAR(MAX)
SET @data =N'
  
   [
        {
            "Name": "Raj",
            "Address":"dhfjhfj",
            "City" : "Rajkot",
            "DOB": "2008/08/13",
            "Standard" : 11
        },
        {
            "Name": "Shital",
            "Address":"behdjsxnk",
            "City" : "Ahmedabad",
            "DOB": "2009/06/15",
            "Standard" : 10
        },
        {
            "Name": "Pratik",
            "Address":"bcbnerbjhchj",
            "City" : "Baroda",
            "DOB": "2011/05/05",
            "Standard" : 8
        },
        {
            "Name": "Mital",
            "Address":"nverjfheh",
            "City" : "Surat",
            "DOB": "2012/03/09",
            "Standard" : 7
        },
        {
            "Name": "Dhruv",
            "Address":"hdhsjkjdc",
            "City" : "Jamnagar",
            "DOB": "2012/04/22",
            "Standard" : 7
      }
]'

SELECT *
FROM OPENJSON(@data)
WITH 
(
        Name VARCHAR(50) '$.Name',
       Address VARCHAR(60) '$.Address',
       City VARCHAR(30)  '$.City',
       DOB DATE '$.DOB',
       Standard INT '$.Standard'
)

SELECT *
FROM Students
