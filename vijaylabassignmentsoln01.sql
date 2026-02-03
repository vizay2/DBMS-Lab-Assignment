




CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR2(50),
    Dept VARCHAR2(20),
    Age INT,
    Phone VARCHAR2(15)
);

CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR2(50),
    Credits INT
);

ALTER TABLE Student ADD City VARCHAR2(30);
ALTER TABLE Student ADD Semester INT;
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

DROP TABLE Course;



INSERT INTO Student VALUES (101, 'vijay', 'AIML', 20, '9876543210', 'Aurangabad', 4);
INSERT INTO Student VALUES (102, 'nikhil', 'AIML', 21, '9876500000', 'bhagalpur', 5);
INSERT INTO Student VALUES (103, 'rahul', 'CSE', 22, '9123456789', 'Mumbai', 6);
INSERT INTO Student VALUES (104, 'rajnish', 'ME', 19, '9988776655', 'Pune', 3);
INSERT INTO Student VALUES (105, 'Rohit', 'CSE', 23, '9090909090', 'Kolkata', 7);



SELECT * FROM Student;
SELECT RollNo, Name FROM Student;
SELECT * FROM Student WHERE Dept = 'CSE';
SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;
UPDATE Student SET City = 'Patna' WHERE Name = 'vijay';
UPDATE Student SET Age = Age + 1;

DELETE FROM Student WHERE RollNo = 105;
DELETE FROM Student;




