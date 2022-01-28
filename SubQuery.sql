-- sub queries 

--writing a query to retrieve products that are not at all sold
Select Id, Name, Description
from tblProducts
where Id not in (Select Distinct ProductId from tblProductSales)

--a query to retrieve the NAME and TOTALQUANTITY sold
Select [Name],
(Select SUM(QuantitySold) from tblProductSales where ProductId = tblProducts.Id) as TotalQuantity
from tblProducts
order by Name