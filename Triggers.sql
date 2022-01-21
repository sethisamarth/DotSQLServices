--TRIGGERS IN SQL SERVER 

--creatind table tblEmployee
CREATE TABLE tblEmployee
(
  Id int Primary Key,
  Name nvarchar(30),
  Salary int,
  Gender nvarchar(10),
  DepartmentId int
);

-- inserting into tblEmployee
Insert into tblEmployee values (1,'John', 5000, 'Male', 3),
                               (2,'Mike', 3400, 'Male', 2),
							   (3,'tina', 6000, 'Female', 1),
							   (4,'ram', 7000, 'Male', 4),
							   (5,'sid', 8000, 'Male', 1),
							   (6,'sam', 9000, 'Male', 3);

-- creating tblEmployeeAudit table
CREATE TABLE tblEmployeeAudit
(
  Id int identity(1,1) primary key,
  AuditData nvarchar(1000)
);

--creating insert trigger
CREATE TRIGGER tr_tblEMployee_ForInsert
ON tblEmployee
FOR INSERT
AS
BEGIN
 Declare @Id int
 Select @Id = Id from inserted
 
 insert into tblEmployeeAudit 
 values('New employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is added at ' + cast(Getdate() as nvarchar(20)))
END;

--insert query
Insert into tblEmployee values (7,'Tan', 2300, 'Female', 3);

--select  queries
select * from tblEmployeeAudit;
select * from tblEmployee;

--creater trigger for delete
CREATE TRIGGER tr_tblEMployee_ForDelete
ON tblEmployee
FOR DELETE
AS
BEGIN
 Declare @Id int
 Select @Id = Id from deleted
 
 insert into tblEmployeeAudit 
 values('An existing employee with Id  = ' + Cast(@Id as nvarchar(5)) + ' is deleted at ' + Cast(Getdate() as nvarchar(20)))
END;

--delete query
Delete from tblEmployee where Id = 7;