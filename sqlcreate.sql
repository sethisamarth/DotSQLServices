-- creating database
Create database SqlDatabase;

--using database
use SqlDatabase;

--creating hiring table
create table Hired_Candidates(
    Id int identity(1,1) primary key,
	first_name varchar(120) not null,
	last_name varchar(120) not null,
	emailID varchar(120) unique,
	hired_date datetime not null,
	hired_lab varchar(70) not null,
	mobile_number int not null unique,
	permanent_pincode int,
	communication_remark varchar(120) not null,
	attitude_remark varchar(120) not null,
	knowledge_remark varchar(120) not null,
	aggregate_remark varchar(120),
	creator_stamp varchar(120),
	creator_user varchar(120) not null,
);

-- creating felloship candidate table
create table Fellowship_Candidates(
	Id int identity(1,1) primary key,
	first_name varchar(120) not null,
	last_name varchar(120) not null,
	emailID varchar(120) unique,
	hired_date datetime not null,
	mobile_number int not null unique,
	permanent_pincode int,
	hired_lab varchar(50) not null,
	attitude varchar(120) not null,
	communication_remark varchar(120) not null,
	knowledge_remark varchar(120) not null,
	aggregate_remark varchar(120),
	creator_stamp varchar(120),
	creator_user varchar(120) not null,
	birth_date date not null,
	birth_date_verified varchar(4) not null,
	parent_name varchar(120) not null,
	parent_occupation varchar(120) not null,
	parents_mobile_number int not null,
	parents_annual_salery int not null,
	local_address varchar(500) not null,
	permanent_address varchar(500) not null,
	photo_path varchar(120) not null,
	joining_date datetime not null,
	candidate_status varchar(20) not null,
	personal_information varchar(120),
	bank_information varchar(120) not null,
	educational_information varchar(120) not null,
	document_status varchar(100) not null,
	remark varchar(500) not null
	);