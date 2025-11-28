-- Insert Sample Data (Will only insert if not already present)

-- Insert Classes
INSERT INTO s_class (name) 
SELECT 'Class A' 
WHERE NOT EXISTS (SELECT 1 FROM s_class WHERE name = 'Class A');

INSERT INTO s_class (name) 
SELECT 'Class B' 
WHERE NOT EXISTS (SELECT 1 FROM s_class WHERE name = 'Class B');

INSERT INTO s_class (name) 
SELECT 'Class C' 
WHERE NOT EXISTS (SELECT 1 FROM s_class WHERE name = 'Class C');

-- Insert Students
INSERT INTO student (name, total_credits, sum_product) 
SELECT 'John Doe', 0.0, 0.0 
WHERE NOT EXISTS (SELECT 1 FROM student WHERE name = 'John Doe');

INSERT INTO student (name, total_credits, sum_product) 
SELECT 'Jane Smith', 0.0, 0.0 
WHERE NOT EXISTS (SELECT 1 FROM student WHERE name = 'Jane Smith');

INSERT INTO student (name, total_credits, sum_product) 
SELECT 'Robert Johnson', 0.0, 0.0 
WHERE NOT EXISTS (SELECT 1 FROM student WHERE name = 'Robert Johnson');

INSERT INTO student (name, total_credits, sum_product) 
SELECT 'Emily Davis', 0.0, 0.0 
WHERE NOT EXISTS (SELECT 1 FROM student WHERE name = 'Emily Davis');

-- Insert Course Modules
INSERT INTO course_module (code, name, semester, credits) 
SELECT 'CS101', 'Introduction to Programming', 1, 3.0 
WHERE NOT EXISTS (SELECT 1 FROM course_module WHERE code = 'CS101');

INSERT INTO course_module (code, name, semester, credits) 
SELECT 'CS102', 'Data Structures', 2, 4.0 
WHERE NOT EXISTS (SELECT 1 FROM course_module WHERE code = 'CS102');

INSERT INTO course_module (code, name, semester, credits) 
SELECT 'MTH101', 'Calculus I', 1, 3.0 
WHERE NOT EXISTS (SELECT 1 FROM course_module WHERE code = 'MTH101');

INSERT INTO course_module (code, name, semester, credits) 
SELECT 'ENG101', 'Technical Writing', 1, 2.0 
WHERE NOT EXISTS (SELECT 1 FROM course_module WHERE code = 'ENG101');

-- Note: The following inserts depend on the IDs from the previous inserts
-- In a production system, you would need to look up the IDs or use a more robust approach
-- For the sample data, we'll insert only if the tables are empty

-- Insert Class Registrations if none exist
INSERT INTO sclass_registration (student_id, sclass_id)
SELECT s.id, c.id
FROM student s, s_class c
WHERE s.name = 'John Doe' AND c.name = 'Class A'
AND NOT EXISTS (SELECT 1 FROM sclass_registration);

-- Insert Enrolments if none exist
INSERT INTO enrolment (internal_mark, exam_mark, final_grade, student_id, course_module_id)
SELECT 8.5, 7.8, 8.0, s.id, cm.id
FROM student s, course_module cm
WHERE s.name = 'John Doe' AND cm.code = 'CS101'
AND NOT EXISTS (SELECT 1 FROM enrolment);