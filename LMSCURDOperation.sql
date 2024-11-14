-- create
INSERT INTO UserDetails (email, first_name, last_name, password, contact_number, creator_user) VALUES ('john@example.com', 'John', 'Doe', 'password123', '1234567890', 'admin');
INSERT INTO UserDetails (email, first_name, last_name, password, contact_number, creator_user) VALUES ('jane@example.com', 'Jane', 'Smith', 'password456', '0987654321', 'admin');
INSERT INTO UserDetails (email, first_name, last_name, password, contact_number, creator_user) VALUES ('alice@example.com', 'Alice', 'Johnson', 'securepassword', '5551234567', 'admin');
INSERT INTO UserDetails (email, first_name, last_name, password, contact_number, creator_user) VALUES ('bob@example.com', 'Bob', 'Brown', 'mypassword', '4441234567', 'admin');
-- Read
SELECT * FROM UserDetails;
-- Update
UPDATE UserDetails SET verified = TRUE WHERE Id = 1;
UPDATE UserDetails SET email = 'john.doe@example.com' WHERE Id = 1;
-- Delete
DELETE FROM UserDetails WHERE Id = 1;
DELETE FROM UserDetails WHERE email = 'john@example.com';
-- HiredCandidate
-- Create
INSERT INTO HiredCandidate (first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, permanent_pincode, hired_lab, attitude, creator_user) VALUES ('Alice', 'B', 'Smith', 'alice@example.com', 'New York', 'B.Sc', '2023-01-15', '0987654321', '10001', 'Lab A', 'Positive', 1);
INSERT INTO HiredCandidate (first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, permanent_pincode, hired_lab, attitude, creator_user) VALUES ('Bob', 'C', 'Johnson', 'bob@example.com', 'Los Angeles', 'M.Sc', '2023-02-20', '1234567890', '90001', 'Lab B', 'Neutral', 1);
INSERT INTO HiredCandidate (first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, permanent_pincode, hired_lab, attitude, creator_user) VALUES ('Carol', 'D', 'Williams', 'carol@example.com', 'Chicago', 'B.A', '2023-03-10', '3216549870', '60001', 'Lab C', 'Negative', 1);
INSERT INTO HiredCandidate (first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, permanent_pincode, hired_lab, attitude, creator_user) VALUES ('David', 'E', 'Jones', 'david@example.com', 'Houston', 'B.Tech', '2023-04-05', '4567890123', '77001', 'Lab D', 'Positive', 1);
-- Read
SELECT * FROM HiredCandidate;
-- Update
UPDATE HiredCandidate SET status = 'Hired' WHERE Id = 1;
UPDATE HiredCandidate SET email_id = 'bob.new@example.com' WHERE Id = 2;
-- Delete
DELETE FROM HiredCandidate WHERE Id = 1;
DELETE FROM HiredCandidate WHERE email_id = 'alice@example.com';
-- HiredCandidate
-- Create
INSERT INTO HiredCandidate (first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, permanent_pincode, hired_lab, attitude, creator_user) VALUES ('Alice', 'B', 'Smith', 'alice@example.com', 'New York', 'B.Sc', '2023-01-15', '0987654321', '10001', 'Lab A', 'Positive', 1);
INSERT INTO HiredCandidate (first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, permanent_pincode, hired_lab, attitude, creator_user) VALUES ('Bob', 'C', 'Johnson', 'bob@example.com', 'Los Angeles', 'M.Sc', '2023-02-20', '1234567890', '90001', 'Lab B', 'Neutral', 1);
INSERT INTO HiredCandidate (first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, permanent_pincode, hired_lab, attitude, creator_user) VALUES ('Carol', 'D', 'Williams', 'carol@example.com', 'Chicago', 'B.A', '2023-03-10', '3216549870', '60001', 'Lab C', 'Negative', 1);
INSERT INTO HiredCandidate (first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, permanent_pincode, hired_lab, attitude, creator_user) VALUES ('David', 'E', 'Jones', 'david@example.com', 'Houston', 'B.Tech', '2023-04-05', '4567890123', '77001', 'Lab D', 'Positive', 1);
-- Read
SELECT * FROM HiredCandidate;
-- Update
UPDATE HiredCandidate SET status = 'Hired' WHERE Id = 1;
UPDATE HiredCandidate SET email_id = 'bob.new@example.com' WHERE Id = 2;
-- Delete
DELETE FROM HiredCandidate WHERE Id = 1;
DELETE FROM HiredCandidate WHERE email_id = 'alice@example.com';
-- FellowshipCandidate
-- Create
INSERT INTO FellowshipCandidate (CIC_ID, first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, creator_user) VALUES ('CIC123', 'Bob', 'C', 'Johnson', 'bob@example.com', 'San Francisco', 'M.Sc', '2023-05-01', '1231231234', 1);
INSERT INTO FellowshipCandidate (CIC_ID, first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, creator_user) VALUES ('CIC124', 'Eve', 'F', 'Davis', 'eve@example.com', 'Seattle', 'B.Sc', '2023-06-01', '2342342345', 1);
INSERT INTO FellowshipCandidate (CIC_ID, first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, creator_user) VALUES ('CIC125', 'Charlie', 'G', 'Miller', 'charlie@example.com', 'Boston', 'B.A', '2023-07-01', '3453453456', 1);
INSERT INTO FellowshipCandidate (CIC_ID, first_name, middle_name, last_name, email_id, hired_city, degree, hired_date, mobile_number, creator_user) VALUES ('CIC126', 'Grace', 'H', 'Wilson', 'grace@example.com', 'Denver', 'B.Tech', '2023-08-01', '4564564567', 1);
-- Read
SELECT * FROM FellowshipCandidate;
-- Update
UPDATE FellowshipCandidate SET candidate_status = 'Selected' WHERE Id = 1;
UPDATE FellowshipCandidate SET email_id = 'bob.updated@example.com' WHERE Id = 2;
-- Delete
DELETE FROM FellowshipCandidate WHERE Id = 1;
DELETE FROM FellowshipCandidate WHERE CIC_ID = 'CIC123';
-- CandidateBankDetails
-- Create
INSERT INTO CandidateBankDetails (candidate_id, name, account_number, is_account_num_verified, ifsc_code, creator_user) VALUES (1, 'Bob Johnson', '123456789012', TRUE, 'IFSC0001', 'admin');
INSERT INTO CandidateBankDetails (candidate_id, name, account_number, is_account_num_verified, ifsc_code, creator_user) VALUES (2, 'Eve Davis', '987654321098', TRUE, 'IFSC0002', 'admin');
INSERT INTO CandidateBankDetails (candidate_id, name, account_number, is_account_num_verified, ifsc_code, creator_user) VALUES (3, 'Charlie Miller', '123789456012', TRUE, 'IFSC0003', 'admin');
INSERT INTO CandidateBankDetails (candidate_id, name, account_number, is_account_num_verified, ifsc_code, creator_user) VALUES (4, 'Grace Wilson', '456123789654', TRUE, 'IFSC0004', 'admin');
-- Read
SELECT * FROM CandidateBankDetails;
-- Update
UPDATE CandidateBankDetails SET is_ifsc_code_verified = TRUE WHERE Id = 1;
UPDATE CandidateBankDetails SET account_number = '111111111111' WHERE Id = 2;
-- Delete
DELETE FROM CandidateBankDetails WHERE Id = 1;
DELETE FROM CandidateBankDetails WHERE candidate_id = 2;
-- CandidateQualification
-- Create
INSERT INTO CandidateQualification (candidate_id, diploma, degree_name, is_degree_name_verified, employee_discipline, is_employee_discipline_verified, passing_year, is_passing_year_verified, aggr_per, is_aggr_per_verified) VALUES (1, 'Diploma in Computer Science', 'B.Sc', TRUE, 'Software Engineering', TRUE, 2020, TRUE, 75.50, TRUE);
INSERT INTO CandidateQualification (candidate_id, diploma, degree_name, is_degree_name_verified, employee_discipline, is_employee_discipline_verified, passing_year, is_passing_year_verified, aggr_per, is_aggr_per_verified) VALUES (2, 'Diploma in Electronics', 'B.Sc', TRUE, 'Electronics', TRUE, 2021, TRUE, 68.00, TRUE);
INSERT INTO CandidateQualification (candidate_id, diploma, degree_name, is_degree_name_verified, employee_discipline, is_employee_discipline_verified, passing_year, is_passing_year_verified, aggr_per, is_aggr_per_verified) VALUES (3, 'Diploma in Civil Engineering', 'B.A', TRUE, 'Civil Engineering', TRUE, 2022, TRUE, 80.00, TRUE);
INSERT INTO CandidateQualification (candidate_id, diploma, degree_name, is_degree_name_verified, employee_discipline, is_employee_discipline_verified, passing_year, is_passing_year_verified, aggr_per, is_aggr_per_verified) VALUES (4, 'Diploma in Mechanical Engineering', 'B.Tech', TRUE, 'Mechanical Engineering', TRUE, 2023, TRUE, 90.00, TRUE);
-- Read
SELECT * FROM CandidateQualification;
-- Update
UPDATE CandidateQualification SET is_aggr_per_verified = FALSE WHERE Id = 1;
UPDATE CandidateQualification SET degree_name = 'M.Sc' WHERE Id = 2;
-- Delete
DELETE FROM CandidateQualification WHERE Id = 1;
DELETE FROM CandidateQualification WHERE candidate_id = 2;
-- CandidateDocuments
-- Create
INSERT INTO CandidateDocuments (candidate_id, doc_type, doc_path, status) VALUES (1, 'Resume', '/path/to/resume1.pdf', 'Submitted');
INSERT INTO CandidateDocuments (candidate_id, doc_type, doc_path, status) VALUES (2, 'Cover Letter', '/path/to/coverletter2.pdf', 'Approved');
INSERT INTO CandidateDocuments (candidate_id, doc_type, doc_path, status) VALUES (3, 'Transcripts', '/path/to/transcripts3.pdf', 'Pending');
INSERT INTO CandidateDocuments (candidate_id, doc_type, doc_path, status) VALUES (4, 'Certificates', '/path/to/certificates4.pdf', 'Rejected');
-- Read
SELECT * FROM CandidateDocuments;
-- Update
UPDATE CandidateDocuments SET status = 'Approved' WHERE Id = 1;
UPDATE CandidateDocuments SET doc_path = '/new/path/to/documents.pdf' WHERE Id = 2;
-- Delete
DELETE FROM CandidateDocuments WHERE Id = 1;
DELETE FROM CandidateDocuments WHERE candidate_id = 2;
 
 
 -- Company
-- Create
INSERT INTO Company (name, address, location, status) VALUES ('Tech Solutions', '123 Tech Road', 'New York', 'Active');
INSERT INTO Company (name, address, location, status) VALUES ('Innovate LLC', '456 Innovate Ave', 'San Francisco', 'Active');
INSERT INTO Company (name, address, location, status) VALUES ('DevCorp', '789 Dev St', 'Austin', 'Inactive');
INSERT INTO Company (name, address, location, status) VALUES ('Design Co.', '159 Design Blvd', 'Seattle', 'Active');
-- Read
SELECT * FROM Company;
-- Update
UPDATE Company SET status = 'Inactive' WHERE Id = 1;
UPDATE Company SET address = '321 New Address' WHERE Id = 2;
-- Delete
DELETE FROM Company WHERE Id = 1;
DELETE FROM Company WHERE name = 'Design Co.';
-- AppParameters
-- Create
INSERT INTO AppParameters (key_type, key_value, key_text, cur_status, lastupd_user, creator_user) VALUES ('Parameter1', 'Value1', 'Description for Parameter1', 'Active', 'admin', 'admin');
INSERT INTO AppParameters (key_type, key_value, key_text, cur_status, lastupd_user, creator_user) VALUES ('Parameter2', 'Value2', 'Description for Parameter2', 'Active', 'admin', 'admin');
INSERT INTO AppParameters (key_type, key_value, key_text, cur_status, lastupd_user, creator_user) VALUES ('Parameter3', 'Value3', 'Description for Parameter3', 'Inactive', 'admin', 'admin');
INSERT INTO AppParameters (key_type, key_value, key_text, cur_status, lastupd_user, creator_user) VALUES ('Parameter4', 'Value4', 'Description for Parameter4', 'Active', 'admin', 'admin');
-- Read
SELECT * FROM AppParameters;
-- Update
UPDATE AppParameters SET cur_status = 'Inactive' WHERE Id = 1;
UPDATE AppParameters SET key_value = 'UpdatedValue' WHERE Id = 2;
-- Delete
DELETE FROM AppParameters WHERE Id = 1;
DELETE FROM AppParameters WHERE key_type = 'Parameter3';
-- TechStack
-- Create
INSERT INTO TechType (type_name, cur_status) VALUES ('Frontend', 'Active');
INSERT INTO TechType (type_name, cur_status) VALUES ('Backend', 'Active');
INSERT INTO TechType (type_name, cur_status) VALUES ('Database', 'Inactive');
INSERT INTO TechType (type_name, cur_status) VALUES ('DevOps', 'Active');
-- Read
SELECT * FROM TechType;
-- Update
UPDATE TechType SET cur_status = 'Inactive' WHERE Id = 1;
UPDATE TechType SET type_name = 'Data Science' WHERE Id = 2;
-- Delete
DELETE FROM TechType WHERE Id = 1;
DELETE FROM TechType WHERE type_name = 'Database';
-- Lab
-- Create
INSERT INTO Lab (name, location, address, status) VALUES ('AI Lab', 'Building A', '123 AI St', 'Active');
INSERT INTO Lab (name, location, address, status) VALUES ('ML Lab', 'Building B', '456 ML St', 'Active');
INSERT INTO Lab (name, location, address, status) VALUES ('Data Lab', 'Building C', '789 Data St', 'Inactive');
INSERT INTO Lab (name, location, address, status) VALUES ('Web Dev Lab', 'Building D', '159 Web St', 'Active');
-- Read
SELECT * FROM Lab;
-- Update
UPDATE Lab SET status = 'Inactive' WHERE Id = 1;
UPDATE Lab SET address = '321 New Lab St' WHERE Id = 2;
-- Delete
DELETE FROM Lab WHERE Id = 1;
DELETE FROM Lab WHERE name = 'Data Lab';
-- LabThreshold
-- Create
INSERT INTO LabThreshold (lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, status) VALUES (1, 50, 20, 15, 10, 'Active');
INSERT INTO LabThreshold (lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, status) VALUES (2, 60, 25, 20, 15, 'Active');
INSERT INTO LabThreshold (lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, status) VALUES (3, 40, 15, 10, 5, 'Inactive');
INSERT INTO LabThreshold (lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, status) VALUES (4, 70, 30, 25, 20, 'Active');
-- Read
SELECT * FROM LabThreshold;
-- Update
UPDATE LabThreshold SET status = 'Inactive' WHERE Id = 1;
UPDATE LabThreshold SET lab_capacity = 75 WHERE Id = 2;
-- Delete
DELETE FROM LabThreshold WHERE Id = 1;
DELETE FROM LabThreshold WHERE lab_id = 2;
-- MakerProgram
-- Create
INSERT INTO MakerProgram (program_name, program_type, program_link, tech_stack_id, tech_type_id, is_program_approved, description, status) VALUES ('AI Program', 'Online', 'http://example.com/ai', 1, 1, TRUE, 'An AI program for beginners.', 'Active');
INSERT INTO MakerProgram (program_name, program_type, program_link, tech_stack_id, tech_type_id, is_program_approved, description, status) VALUES ('ML Program', 'Online', 'http://example.com/ml', 2, 1, TRUE, 'A ML program for intermediate learners.', 'Active');
INSERT INTO MakerProgram (program_name, program_type, program_link, tech_stack_id, tech_type_id, is_program_approved, description, status) VALUES ('Web Development', 'Offline', 'http://example.com/web', 3, 1, FALSE, 'A web development course.', 'Inactive');
-- Read
SELECT * FROM MakerProgram;
-- Update
UPDATE MakerProgram SET status = 'Inactive' WHERE Id = 1;
UPDATE MakerProgram SET program_name = 'Updated AI Program' WHERE Id = 2;
-- Delete
DELETE FROM MakerProgram WHERE Id = 1;
DELETE FROM MakerProgram WHERE program_name = 'Web Development';
-- Mentor
-- Create
INSERT INTO Mentor (name, mentor_type, lab_id, status, creator_user) VALUES 
('Dr. Alice', 'Technical', 1, 'Active', 'admin'),
('Mr. Bob', 'Guidance', 2, 'Active', 'admin'),
('Ms. Clara', 'Technical', 2, 'Inactive', 'admin'),
('Mr. David', 'Advisory', 1, 'Active', 'admin');
-- Read
SELECT * FROM Mentor;
-- Update
UPDATE Mentor SET status = 'Inactive' WHERE Id = 3;
UPDATE Mentor SET mentor_type = 'Senior Technical' WHERE Id = 1;
-- Delete
DELETE FROM Mentor WHERE Id = 2;
DELETE FROM Mentor WHERE name = 'Mr. David';
-- MentorIdeationMap
-- Create
INSERT INTO MentorIdeationMap (parent_mentor_id, mentor_id, status, creator_user) VALUES 
(1, 2, 'Active', 'admin'),
(1, 3, 'Inactive', 'admin'),
(2, 3, 'Active', 'admin'),
(1, 4, 'Active', 'admin');
-- Read
SELECT * FROM MentorIdeationMap;
-- Update
UPDATE MentorIdeationMap SET status = 'Inactive' WHERE Id = 2;
UPDATE MentorIdeationMap SET mentor_id = 1 WHERE Id = 1;
-- Delete
DELETE FROM MentorIdeationMap WHERE Id = 3;
DELETE FROM MentorIdeationMap WHERE parent_mentor_id = 1 AND mentor_id = 4;
-- CompanyRequirement
-- Create
INSERT INTO CompanyRequirement (company_id, requested_month, city, is_doc_verification, requirement_doc_path, no_of_engg, tech_stack_id, tech_type_id, maker_program_id, lead_id, ideation_engg_id, buddy_engg_id, special_remark, status, creator_user) VALUES 
(1, 'November', 'New York', TRUE, '/path/to/doc1.pdf', 5, 1, 1, 1, 1, 1, 1, 'Urgent requirement', 'Open', 'admin'),
(2, 'November', 'San Francisco', FALSE, '/path/to/doc2.pdf', 3, 2, 2, 2, 2, 2, 2, 'Looking for candidates', 'Open', 'admin'),
(1, 'November', 'Los Angeles', TRUE, '/path/to/doc3.pdf', 10, 3, 3, 3, 3, 3, 3, 'Critical need', 'Open', 'admin');
-- Read
SELECT * FROM CompanyRequirement;
-- Update
UPDATE CompanyRequirement SET no_of_engg = 6 WHERE Id = 1;
UPDATE CompanyRequirement SET status = 'Closed' WHERE Id = 2;
-- Delete
DELETE FROM CompanyRequirement WHERE Id = 3;
DELETE FROM CompanyRequirement WHERE company_id = 2 AND requested_month = 'November';
-- CandidateStackAssignment
-- Create
INSERT INTO CandidateStackAssignment (requirement_id, candidate_id, assign_date, complete_date, status, creator_user) VALUES 
(1, 1, '2024-11-01', NULL, 'Assigned', 'admin'),
(1, 2, '2024-11-02', NULL, 'Assigned', 'admin');
-- Read
SELECT * FROM CandidateStackAssignment;
-- Update
UPDATE CandidateStackAssignment SET complete_date = '2024-11-10', status = 'Completed' WHERE Id = 1;
UPDATE CandidateStackAssignment SET status = 'Pending' WHERE Id = 1;
-- Delete
DELETE FROM CandidateStackAssignment WHERE Id = 2;
DELETE FROM CandidateStackAssignment WHERE requirement_id = 1 AND candidate_id = 2;

