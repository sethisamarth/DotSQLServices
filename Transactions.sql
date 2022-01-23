-- Transaction in sql server 

--inseting queries
Insert into tblMailingAddress values (1, 101, '#10', 'King Street', 'Londoon', 'CR27DW')
Insert into tblPhysicalAddress values (1, 101, '#10', 'King Street', 'Londoon', 'CR27DW')

-- creating procedure with transaction
alter Procedure spUpdateAddress
as
Begin
 Begin Try -- begin try
  Begin Transaction --beigin transcation
   Update tblMailingAddress set City = 'LONDON' 
   where AddressId = 1 and EmployeeNumber = 101
   
   Update tblPhysicalAddress set City = 'LONDON' 
   where AddressId = 1 and EmployeeNumber = 101
  Commit Transaction -- commit transcation
  Print 'Transaction Commited'
 End Try -- end try
 Begin Catch --begin catch
  Rollback Transaction
 End Catch -- end catch
End

--selecting statements
 select * from tblMailingAddress;
 select * from tblPhysicalAddress;

