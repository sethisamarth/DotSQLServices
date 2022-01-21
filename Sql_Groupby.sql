use SqlDatabase;

SELECT COUNT(Id), communication_remark
FROM Hired_Candidates
GROUP BY communication_remark;

SELECT COUNT(Id), communication_remark
FROM Fellowship_Candidates
GROUP BY communication_remark;


select communication_remark from Hired_Candidates
where attitude_remark ='v.good'
GROUP BY communication_remark;

SELECT COUNT(Id), communication_remark
FROM Hired_Candidates
GROUP BY communication_remark
HAVING COUNT(Id) > 2;

SELECT COUNT(Id), communication_remark
FROM Fellowship_Candidates
GROUP BY communication_remark
HAVING COUNT(Id) > 2;