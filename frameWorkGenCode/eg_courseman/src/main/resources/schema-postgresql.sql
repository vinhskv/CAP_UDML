-- This file will be automatically executed on startup if tables don't exist

-- Drop tables if they exist (uncomment if needed)
/*
DROP TABLE IF EXISTS sclass_registration;
DROP TABLE IF EXISTS enrolment;
DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS course_module;
DROP TABLE IF EXISTS s_class;
*/

-- Create tables only if they don't exist
CREATE TABLE IF NOT EXISTS s_class (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    total_credits DOUBLE PRECISION DEFAULT 0.0,
    sum_product DOUBLE PRECISION DEFAULT 0.0
);

CREATE TABLE IF NOT EXISTS course_module (
    id SERIAL PRIMARY KEY,
    code VARCHAR(10),
    name VARCHAR(255),
    semester INTEGER,
    credits DOUBLE PRECISION
);

CREATE TABLE IF NOT EXISTS enrolment (
    id SERIAL PRIMARY KEY,
    internal_mark DOUBLE PRECISION,
    exam_mark DOUBLE PRECISION,
    final_grade DOUBLE PRECISION,
    student_id BIGINT REFERENCES student(id),
    course_module_id BIGINT REFERENCES course_module(id)
);

CREATE TABLE IF NOT EXISTS sclass_registration (
    id SERIAL PRIMARY KEY,
    student_id BIGINT REFERENCES student(id),
    sclass_id BIGINT REFERENCES s_class(id)
);