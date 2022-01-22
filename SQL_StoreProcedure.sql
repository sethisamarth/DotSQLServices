-- Store Procedures
-- creating storeprocedure
CREATE PROCEDURE SelectAllHiredCandidates
AS
BEGIN TRY --BEGIN OF TRY
SELECT * FROM Hired_Candidates
END TRY -- END TRY
BEGIN CATCH --BEGIN OF CATCH
SELECT  
            ERROR_NUMBER() AS ErrorNumber  
            ,ERROR_SEVERITY() AS ErrorSeverity  
            ,ERROR_STATE() AS ErrorState  
            ,ERROR_PROCEDURE() AS ErrorProcedure  
            ,ERROR_LINE() AS ErrorLine  
            ,ERROR_MESSAGE() AS ErrorMessage; 
END CATCH --END OF CATCH
GO;

-- creating storeprocedure
CREATE PROCEDURE SelectAllCandidatesPersonalDetails
AS
BEGIN TRY --BEGIN OF TRY
SELECT * FROM Candidates_Personal_Details

END TRY -- END TRY
BEGIN CATCH --BEGIN OF CATCH
SELECT  
            ERROR_NUMBER() AS ErrorNumber  
            ,ERROR_SEVERITY() AS ErrorSeverity  
            ,ERROR_STATE() AS ErrorState  
            ,ERROR_PROCEDURE() AS ErrorProcedure  
            ,ERROR_LINE() AS ErrorLine  
            ,ERROR_MESSAGE() AS ErrorMessage; 
END CATCH --END OF CATCH
GO;

-- creating storeprocedure
CREATE PROCEDURE SelectAllFellowshipCandidates
AS
BEGIN TRY --BEGIN OF TRY
SELECT * FROM Fellowship_Candidates
END TRY -- END TRY
BEGIN CATCH --BEGIN OF CATCH
SELECT  
            ERROR_NUMBER() AS ErrorNumber  
            ,ERROR_SEVERITY() AS ErrorSeverity  
            ,ERROR_STATE() AS ErrorState  
            ,ERROR_PROCEDURE() AS ErrorProcedure  
            ,ERROR_LINE() AS ErrorLine  
            ,ERROR_MESSAGE() AS ErrorMessage; 
END CATCH --END OF CATCH
GO;

-- creating storeprocedure
CREATE PROCEDURE SelectAllCandidateBankdetails
AS
BEGIN TRY --BEGIN OF TRY
SELECT * FROM Candidate_Bank_details
END TRY -- END TRY
BEGIN CATCH  --BEGIN OF CATCH
SELECT  
            ERROR_NUMBER() AS ErrorNumber  
            ,ERROR_SEVERITY() AS ErrorSeverity  
            ,ERROR_STATE() AS ErrorState  
            ,ERROR_PROCEDURE() AS ErrorProcedure  
            ,ERROR_LINE() AS ErrorLine  
            ,ERROR_MESSAGE() AS ErrorMessage; 
END CATCH --END OF CATCH
GO;

-- creating storeprocedure
CREATE PROCEDURE SelectAllCandidateQualification
AS
BEGIN TRY --BEGIN OF TRY
SELECT * FROM Candidate_Qualification
END TRY -- END TRY
BEGIN CATCH --BEGIN OF CATCH
SELECT  
            ERROR_NUMBER() AS ErrorNumber  
            ,ERROR_SEVERITY() AS ErrorSeverity  
            ,ERROR_STATE() AS ErrorState  
            ,ERROR_PROCEDURE() AS ErrorProcedure  
            ,ERROR_LINE() AS ErrorLine  
            ,ERROR_MESSAGE() AS ErrorMessage; 
END CATCH --END OF CATCH
GO;

--executing storeprocedures
EXEC SelectAllHiredCandidates;
EXEC SelectAllCandidatesPersonalDetails;
EXEC SelectAllFellowshipCandidates;
EXEC SelectAllCandidateBankdetails;
EXEC SelectAllCandidateQualification;
