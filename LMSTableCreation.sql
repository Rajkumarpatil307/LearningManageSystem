show databases;

create database LMS;
use LMS;
CREATE TABLE UserDetails (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    password VARCHAR(255) NOT NULL,
    contact_number VARCHAR(20),
    verified BOOLEAN DEFAULT FALSE,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100)
);
desc UserDetails;
CREATE TABLE HiredCandidate (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),
    email_id VARCHAR(255),
    hired_city VARCHAR(100),
    degree VARCHAR(50),
    hired_date DATE,
    mobile_number VARCHAR(20),
    permanent_pincode VARCHAR(20),
    hired_lab VARCHAR(100),
    attitude VARCHAR(100),
    communication_remark VARCHAR(255),
    knowledge_remark VARCHAR(255),
    aggregate_remark VARCHAR(255),
    status varchar(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user INT,
    FOREIGN KEY (creator_user) REFERENCES UserDetails(Id)
);
desc HiredCandidate;
CREATE TABLE FellowshipCandidate (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    CIC_ID VARCHAR(20) UNIQUE,
    first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),
    email_id VARCHAR(255),
    hired_city VARCHAR(100),
    degree VARCHAR(50),
    hired_date DATE,
    mobile_number VARCHAR(20),
    permanent_pincode VARCHAR(20),
    hired_lab VARCHAR(100),
    attitude VARCHAR(100),
    communication_remark VARCHAR(255),
    knowledge_remark VARCHAR(255),
    aggregate_remark VARCHAR(255),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user INT,
    birth_date DATE,
    is_birth_date_verified BOOLEAN,
    parent_name VARCHAR(100),
    parent_occupation VARCHAR(100),
    parents_mobile_number VARCHAR(20),
    parents_annual_salary DECIMAL(10, 2),
    local_address TEXT,
    permanent_address TEXT,
    photo_path VARCHAR(255),
    joining_date DATE,
    candidate_status VARCHAR(50),
    personal_information TEXT,
    bank_information TEXT,
    educational_information TEXT,
    document_status TEXT,
    remark TEXT,
    FOREIGN KEY (creator_user) REFERENCES UserDetails(Id)
);
desc FellowshipCandidate;
CREATE TABLE CandidateBankDetails (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    candidate_id INT,
    name VARCHAR(100),
    account_number VARCHAR(20),
    is_account_num_verified BOOLEAN,
    ifsc_code VARCHAR(11),
    is_ifsc_code_verified BOOLEAN,
    pan_number VARCHAR(10),
    is_pan_number_verified BOOLEAN,
    aadhaar_num VARCHAR(12),
    is_aadhaar_num_verified BOOLEAN,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    FOREIGN KEY (candidate_id) REFERENCES FellowshipCandidate(Id)
);
desc CandidateBankDetails;
CREATE TABLE CandidateQualification (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    candidate_id INT,
    diploma VARCHAR(100),
    degree_name VARCHAR(100),
    is_degree_name_verified BOOLEAN,
    employee_discipline VARCHAR(100),
    is_employee_discipline_verified BOOLEAN,
    passing_year INT,
    is_passing_year_verified BOOLEAN,
    aggr_per DECIMAL(5, 2),
    is_aggr_per_verified BOOLEAN,
    final_year_per DECIMAL(5, 2),
    is_final_year_per_verified BOOLEAN,
    training_institute VARCHAR(100),
    is_training_institute_verified BOOLEAN,
    training_duration_month INT,
    is_training_duration_month_verified BOOLEAN,
    other_training VARCHAR(255),
    is_other_training_verified BOOLEAN,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    FOREIGN KEY (candidate_id) REFERENCES FellowshipCandidate(Id)
);
desc CandidateQualification;
CREATE TABLE CandidateDocuments (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    candidate_id INT,
    doc_type VARCHAR(50),
    doc_path VARCHAR(255),
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    FOREIGN KEY (candidate_id) REFERENCES FellowshipCandidate(Id)
);
desc CandidateDocuments;
CREATE TABLE Company (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address VARCHAR(255),
    location VARCHAR(100),
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100)
);
desc Company;
CREATE TABLE AppParameters (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    key_type VARCHAR(100),
    key_value VARCHAR(100),
    key_text VARCHAR(255),
    cur_status VARCHAR(50),
    lastupd_user VARCHAR(100),
    lastupd_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    seq_num INT
);
desc AppParameters;
CREATE TABLE TechStack (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    tech_name VARCHAR(100),
    image_path VARCHAR(255),
    framework VARCHAR(100),
    cur_status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100)
);
desc TechStack;
CREATE TABLE TechType (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(100),
    cur_status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100)
);
desc TechType;
CREATE TABLE Lab (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    location VARCHAR(100),
    address VARCHAR(255),
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100)
);
desc Lab;
CREATE TABLE LabThreshold (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    lab_id INT,
    lab_capacity INT,
    lead_threshold INT,
    ideation_engg_threshold INT,
    buddy_engg_threshold INT,
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    FOREIGN KEY (lab_id) REFERENCES Lab(Id)
);
desc LabThreshold;
CREATE TABLE MakerProgram (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    program_name VARCHAR(100),
    program_type VARCHAR(100),
    program_link VARCHAR(255),
    tech_stack_id INT,
    tech_type_id INT,
    is_program_approved BOOLEAN,
    description TEXT,
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    FOREIGN KEY (tech_stack_id) REFERENCES TechStack(Id),
    FOREIGN KEY (tech_type_id) REFERENCES TechType(Id)
);
desc MakerProgram;
CREATE TABLE Mentor (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    mentor_type VARCHAR(100),
    lab_id INT,
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    FOREIGN KEY (lab_id) REFERENCES Lab(Id)
);
desc Mentor;
CREATE TABLE MentorIdeationMap (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    parent_mentor_id INT,
    mentor_id INT,
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    FOREIGN KEY (parent_mentor_id) REFERENCES Mentor(Id),
    FOREIGN KEY (mentor_id) REFERENCES Mentor(Id)
);
desc  MentorIdeationMap;
CREATE TABLE CompanyRequirement (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    company_id INT,
    requested_month VARCHAR(20),
    city VARCHAR(100),
    is_doc_verification BOOLEAN,
    requirement_doc_path VARCHAR(255),
    no_of_engg INT,
    tech_stack_id INT,
    tech_type_id INT,
    maker_program_id INT,
    lead_id INT,
    ideation_engg_id INT,
    buddy_engg_id INT,
    special_remark TEXT,
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    FOREIGN KEY (company_id) REFERENCES Company(Id),
    FOREIGN KEY (tech_stack_id) REFERENCES TechStack(Id),
    FOREIGN KEY (tech_type_id) REFERENCES TechType(Id),
    FOREIGN KEY (maker_program_id) REFERENCES MakerProgram(Id)
);
desc CompanyRequirement;
CREATE TABLE CandidateStackAssignment (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    requirement_id INT,
    candidate_id INT,
    assign_date DATE,
    complete_date DATE,
    status VARCHAR(50),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    FOREIGN KEY (requirement_id) REFERENCES CompanyRequirement(Id),
    FOREIGN KEY (candidate_id) REFERENCES FellowshipCandidate(Id)
);
desc CandidateStackAssignment;
show tables;