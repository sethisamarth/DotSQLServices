--SQL Script to create tblEmployee2 table:
CREATE TABLE tblEmployee2
(
  Id int Primary Key,
  Name nvarchar(30),
  Salary int,
  Gender nvarchar(10),
  DepartmentId int
)

--SQL Script to create tblDepartment table: 
CREATE TABLE tblDepartment
(
 DeptId int Primary Key,
 DeptName nvarchar(20)
)

-- inserting data into table
Insert into tblDepartment values (1,'IT')
Insert into tblDepartment values (2,'Payroll')
Insert into tblDepartment values (3,'HR')
Insert into tblDepartment values (4,'Admin')

-- inserting data into table
Insert into tblEmployee2 values (1,'John', 5000, 'Male', 3)
Insert into tblEmployee2 values (2,'Mike', 3400, 'Male', 2)
Insert into tblEmployee2 values (3,'Pam', 6000, 'Female', 1)
Insert into tblEmployee2 values (4,'Todd', 4800, 'Male', 4)
Insert into tblEmployee2 values (5,'Sara', 3200, 'Female', 1)
Insert into tblEmployee2 values (6,'Ben', 4800, 'Male', 3)

--creating view
Create View vWEmployeesByDepartment
as
Select Id, Name, Salary, Gender, DeptName
from tblEmployee2
join tblDepartment
on tblEmployee2.DepartmentId = tblDepartment.DeptId

SELECT * from vWEmployeesByDepartment