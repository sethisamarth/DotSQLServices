--JOINS

--inner join
SELECT Candidate_Bank_details.account_number, candidate_education_detail_check.field_name
FROM Candidate_Bank_details
INNER JOIN candidate_education_detail_check ON Candidate_Bank_details.candidateId = candidate_education_detail_check.candidateId;

--selecting queries
select * from Candidate_Bank_details;
select * from candidate_education_detail_check;

-- left outer join
SELECT Candidate_Bank_details.account_number, candidate_education_detail_check.field_name
FROM Candidate_Bank_details
LEFT JOIN candidate_education_detail_check ON Candidate_Bank_details.candidateId = candidate_education_detail_check.candidateId;

-- right outer join
SELECT Candidate_Bank_details.account_number, Candidate_Bank_details.IFSCCode, candidate_education_detail_check.field_name
FROM Candidate_Bank_details
RIGHT JOIN candidate_education_detail_check ON Candidate_Bank_details.candidateId = candidate_education_detail_check.candidateId;

--full outer join
SELECT Candidate_Bank_details.account_number, Candidate_Bank_details.IFSCCode, candidate_education_detail_check.field_name
FROM Candidate_Bank_details
FULL OUTER JOIN  candidate_education_detail_check ON Candidate_Bank_details.candidateId = candidate_education_detail_check.candidateId;