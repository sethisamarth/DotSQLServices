--  functions

SELECT Abs(-243.5) AS AbsNum;

SELECT CEILING(25.75) AS CeilValue;

SELECT FLOOR(25.75) AS FloorValue;

SELECT COUNT(ID) AS NumberOfProducts FROM tblProducts;

SELECT DEGREES(1.5);

SELECT REVERSE('Samarth');


--User defined functions
CREATE FUNCTION GetProduct(@Id INT)  
 RETURNS VARCHAR(50)  
 AS  
BEGIN  
    RETURN (SELECT Name FROM tblProducts WHERE Id=@Id)  
END 

PRINT dbo.GetProduct(1) ;

-- get all productucts user defined functions
CREATE FUNCTION GetAllProductss(@Id INT)  
RETURNS TABLE  
AS  
RETURN  
    SELECT *FROM tblProducts WHERE Id<=@Id 

SELECT *FROM GetAllProductss(10) 