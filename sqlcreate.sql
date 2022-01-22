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

	-- creating felloship candidate table
create table Fellowship_Candidates_copy(
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

--creating candidate personal detail table
create table Candidates_Personal_Details(
    Id int identity(1,1) primary key,
	candidateId int foreign key references Fellowship_Candidates(Id) ,
	field_name varchar(120) not null,
	is_verified varchar(120) not null,
	lastupd_user varchar(120) not null,
	creator_stamp varchar(120),
	creator_user varchar(120)
);

--creating candidate bank details
create table Candidate_Bank_details(
	Id int identity(1,1) primary key,
	candidateId int foreign key references Fellowship_Candidates(Id),
	account_number int not null,
	is_account_number_verified int not null,
	IFSCCode varchar(100) not null,
	is_isfc_code_verified varchar(10) not null,
	pan_number int not null,
	is_pan_number_verified varchar(4) not null,
	addhaar_number int not null,
	is_aadhaar_number_verified varchar(4) not null,
	creator_stamp varchar(100),
	creator_user varchar(100)
);

--Creating table for candidates qualification table
create table Candidate_Qualification(
	Id int identity(1,1) primary key,
	candidateId int foreign key references Fellowship_Candidates(Id),
	diploma varchar(50),
	degree_name varchar(50),
	is_degree_name_verified varchar(10) not null,
	employee_decipline varchar(100) not null,
	is_employee_decipline_verified varchar(10) not null,
	passing_year int not null,
	is_passing_year_verified varchar(10) not null,
	final_year_per int not null,
	is_final_year_per_verified varchar(10) not null,
	training_institue varchar(50) not null,
	is_training_institue_verified varchar(10) not null,
	training_duration_month int not null,
	is_training_duration_month_verified varchar(10) not null,
	other_training varchar(50),
	is_other_training_verified varchar(10),
	creator_stamp varchar(50),
	creator_user varchar(500),
	);

--creating table for candidate education detailed check
create table candidate_education_detail_check(
	Id int identity(1,1) primary key,
	candidateId int foreign key references Fellowship_Candidates(Id),
	field_name varchar(120) not null,
	is_field_name_verified varchar(10) not null,
	lastupd_stamp varchar(120) not null,
	lastupd_stamp_user varchar(120) not null,
	creator_stamp varchar(120),
	creator_user varchar(120)
	);

--Creating candidates documents table
create table candidate_documents(
	Id int identity(1,1) primary key,
	candidateId int foreign key references Fellowship_Candidates(Id),
	doc_type varchar(10) not null,
	doc_path varchar(10) not null,
	status varchar(10),
	creator_stamp varchar(120),
	creator_user varchar(120)
	);

--Creating  user details table 
create table user_details(
	Id int identity(1,1) primary key,
	email varchar(120) not null unique,
	first_name varchar(120) not null,
	last_name varchar(120) not null,
	password_user varchar(50) not null,
	contact_number int not null unique,
	verified varchar(10) not null
	);

--creating  user roles table 
create table user_roles(
	user_id int identity(1,1) primary key,
	role_name varchar(100) not null
	);

--creating  company table 
create table company(
	Id int identity(1,1) primary key,
	company_name varchar(120) not null,
	company_address varchar(500) not null,
	company_location varchar(120) not null,
	company_status varchar(120) not null,
	creator_stamp varchar(120),
	creator_user varchar(120)
	);

	--Creating  tech type table
create table teck_type(
	Id int identity(1,1) primary key,
	type_name varchar(120) not null,
	cur_status varchar(120) not null,
	creator_stamp varchar(120),
	creator_user varchar(120),
	);

--Creating  maker program table 
create table maker_program(
	Id int identity(1,1) primary key,
	program_name varchar(120) not null,
	program_type varchar(120) not null,
	program_link varchar(120) not null,
	tech_stack_id int not null,
	tech_type_id int not null,
	is_program_approved varchar(120),
	description varchar(500),
	status varchar(50),
	creator_stamp varchar(100),
	creator_user varchar(100)
	);

--Creating lab table 
create table lab(
	Id int identity(1,1) primary key,
    name varchar(120) not null,
	location varchar(120) not null,
	address varchar(120) not null,
	status varchar(120) not null,
	creator_stamp varchar(120),
	creator_user varchar(120) 
	);

--Creating  app parameters table 
create table app_parameters(
	Id int identity(1,1) primary key,
	key_type varchar(20) not null,
	key_value varchar(120) not null,
	key_text varchar(120) not null,
	cur_status varchar(120) not null,
	lastupd_user varchar(120) not null,
	lastupd_stamp varchar(120) not null,
	creator_stamp varchar(120),
	creator_user varchar(120) ,
	seq_num int not null
	);

--Creating mentor table
create table mentor(
	Id int identity(1,1) primary key,
	name varchar(100) not null,
	mentor_type varchar(20) not null,
	lab_id int not null,
	status varchar(20) not null,
	creator_stamp varchar(100),
	creator_user varchar(100)
	);

--Creating  Mentor Ideation Map table
create table mentor_ideation_map(
	Id int identity(1,1) primary key,
	mentor_id int foreign key references mentor(Id),
	status varchar(120) not null,
	creator_stamp varchar(120) not null,
	creator_user varchar(120) not null
	);

--Creating mentor tech stack table
create table mentor_tech_stack(
	Id int identity(1,1) primary key,
	mentor_id int foreign key references mentor(Id),
	teck_stack_id int not null,
	status varchar(120) not null,
	creator_stamp varchar(120),
	creator_user varchar(120),
	);

--Creating tech stack table
create table teck_stack(
	Id int identity(1,1) primary key,
	tech_name varchar(120) not null,
	image_path varchar(120) not null,
	framework varchar(120) not null,
	status varchar(120) not null,
	creator_stamp varchar(120) not null,
	creator_user varchar(120) not null,
	);

--Creating  lab threshold table
create table lab_threshold(
	Id int identity(1,1) primary key,
	lab_id int foreign key references lab(Id),
	lab_capacity varchar(120) not null,
	lead_threshold varchar(120) not null,
	ideation_engg_threshold varchar(120) not null,
	buddy_engg_threshold varchar(120) not null,
	status varchar(120) not null,
	creator_stamp varchar(120),
	creator_user varchar(120)
	);

