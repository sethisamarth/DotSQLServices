
select * from tblEmployee

Create Clustered Index IX_tblEmployee_Gender_Salary
ON tblEmployee(Gender DESC, Salary ASC)

Create NonClustered Index IX_tblEmployee_Name
ON tblEmployee(Name)