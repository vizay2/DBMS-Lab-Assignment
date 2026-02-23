
CREATE TABLE Department (
    dept_id VARCHAR(11) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL,
    office_location VARCHAR(50)
);
CREATE TABLE Faculty (
    faculty_id VARCHAR(11) PRIMARY KEY,
    faculty_name VARCHAR(100) NOT NULL,
    designation VARCHAR(50),
    email VARCHAR(100),
    dept_id VARCHAR(10),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
CREATE TABLE Course (
    course_id VARCHAR(11) PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT,
    dept_id VARCHAR(11),
    faculty_id VARCHAR(11),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id),
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id)
);
CREATE TABLE Student (
    student_id VARCHAR(11) PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    dob DATE,
    gender CHAR(10),
    contact_no VARCHAR(10),
    dept_id VARCHAR(10),
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
CREATE TABLE Enrollment (
    student_id VARCHAR(11),
    course_id VARCHAR(11),
    semester INT,
    grade VARCHAR(5),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

DESC Department;
DESC Faculty;
DESC Course;
DESC Student;
DESC Enrollment;


