-- Store Procedures
-- creating storeprocedures
CREATE PROCEDURE SelectAllHiredCandidates
AS
SELECT * FROM Hired_Candidates
GO;

CREATE PROCEDURE SelectAllCandidatesPersonalDetails
AS
SELECT * FROM Candidates_Personal_Details
GO;

CREATE PROCEDURE SelectAllFellowshipCandidates
AS
SELECT * FROM Fellowship_Candidates
GO;

CREATE PROCEDURE SelectAllCandidateBankdetails
AS
SELECT * FROM Candidate_Bank_details
GO;

CREATE PROCEDURE SelectAllCandidateQualification
AS
SELECT * FROM Candidate_Qualification
GO;


--executing storeprocedures
EXEC SelectAllHiredCandidates;
EXEC SelectAllCandidatesPersonalDetails;
EXEC SelectAllFellowshipCandidates;
EXEC SelectAllCandidateBankdetails;
EXEC SelectAllCandidateQualification;
