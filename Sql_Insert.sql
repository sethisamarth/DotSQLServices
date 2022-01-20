use SqlDatabase;

select * from Hired_Candidates; 

--inserting data in hired table
insert into Hired_Candidates
values( 'sam', 'sethi', 'sam@gmil.com', '20120618 10:34:09 AM', 'hiredlab1', '123456781', '482001', 'good', 'v.good', 'good', 'good', 'creatorstamp1', 'createruser1'),
 ( 'shivam', 'jar', 'shivam@gmil.com', '20120618 10:34:09 AM', 'hiredlab2', '123456782', '482002', 'v.good', 'v.good', 'good', 'good', 'creatorstamp2', 'createruser2'),
 ( 'sahil', 'mehta', 'sahil@gmil.com', '20120618 10:34:09 AM', 'hiredlab3', '123456783', '482003', 'keep it up', 'v.good', 'good', 'good', 'creatorstamp3', 'createruser3'),
 ( 'astha', 'gupta', 'astha@gmil.com', '20120618 10:34:09 AM', 'hiredlab4', '123456784', '482004', 'execellent', 'v.good', 'good', 'good', 'creatorstamp4', 'createruser4'),
 ( 'ankit', 'kharya', 'ankit@gmil.com', '20120618 10:34:09 AM', 'hiredlab5', '123456785', '482005', 'good', 'v.good', 'good', 'good', 'creatorstamp5', 'createruser5');


 --selecting fellowship data
 select * from Fellowship_Candidates;

 --inserting fellowship data
 insert into Fellowship_Candidates
 values('rajul', 'malhotra', 'rajul@gmail.com', '20220118 10:00:05 AM', '123456719', '482006', 'hiredlab6', 'good' ,'v.good', 'execellent', 'good' ,'creatorstamp6', 'creatoruser6', '1997-08-22', 'yes', 'Deepak', 'farmer','123456189', '400000', 'sihora', 'jablapur', 'photo1', '20200618 10:34:09 AM', 'fellow1', 'PI1', 'BI1', 'EI1', 'documentation done', 'good'),
       ('rahul', 'jain', 'rahul@gmail.com', '20220117 10:00:05 AM', '123456729', '482007', 'hiredlab7', 'good' ,'v.good', 'execellent', 'good' ,'creatorstamp7', 'creatoruser7', '1998-08-26', 'yes', 'Ram', 'Doctor','123456289', '400001', 'talad', 'mirzapur', 'photo2', '20200619 10:34:09 AM', 'fellow2', 'PI2', 'BI2', 'EI2', 'documentation done', 'good'),
	   ('gazal', 'jain', 'gazal@gmail.com', '20220116 10:00:05 AM', '123456739', '482008', 'hiredlab7', 'good' ,'v.good', 'execellent', 'good' ,'creatorstamp8', 'creatoruser8', '1997-08-23', 'yes', 'sourab', 'vloger','123456189', '400002', 'sihor', 'delhi', 'photo3', '20200618 10:34:09 AM', 'fellow3', 'PI3', 'BI3', 'EI3', 'documentation done', 'good'),
	   ('pihu', 'rajput', 'pihu@gmail.com', '20220115  10:00:05 AM', '123456749', '482009', 'hiredlab8', 'good' ,'v.good', 'execellent', 'good' ,'creatorstamp9', 'creatoruser9', '1997-08-21', 'yes', 'pyush', 'builder','123456189', '400003', 'pushkar', 'jaipur', 'photo4', '20200618 10:34:09 AM', 'fellow4', 'PI4', 'BI3', 'EI4', 'documentation done', 'good');

--selcting Candidates_Personal_Details
select * from Candidates_Personal_Details;

select * from Fellowship_Candidates;

-- inserting Candidates_Personal_Details
 insert into Candidates_Personal_Details
 values('5', 'frontend developer', 'yes', 'done', 'creatorstamp6', 'creatoruser6'),
       ('6', 'Backend developer', 'yes', 'not done', 'creatorstamp7', 'creatoruser7'),
	   ('7', 'fullstack developer', 'yes', 'done', 'creatorstamp8', 'creatoruser8'),
	   ('5', 'frontend developer', 'yes', 'not done', 'creatorstamp9', 'creatoruser9');

-- selecting candidate bank details
select * from Candidate_Bank_details;

--inserting Candidates_Personal_Details
insert into Candidate_Bank_details
values('5', '110005555', '1', 'BKID5555', 'no', '5555', 'yes', '15555', 'yes', 'creatorstamp6', 'creatoruser6'),
      ('6', '110006666', '0', 'BKID6666', 'yes', '6666', 'yes', '16666', 'yes', 'creatorstamp7', 'creatoruser7'),
      ('7', '110008888', '1', 'BKID7777', 'no', '7777', 'yes', '17777', 'yes', 'creatorstamp8', 'creatoruser8'),
      ('8', '110008888', '1', 'BKID58888', 'yes', '8888', 'yes', '18888', 'yes', 'creatorstamp9', 'creatoruser9');

-- selecting Candidate_Qualification
select * from Candidate_Qualification;

--inserting Candidate_Qualification
insert into Candidate_Qualification
values ()

