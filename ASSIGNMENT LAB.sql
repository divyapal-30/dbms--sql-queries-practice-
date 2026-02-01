SQL> CREATE TABLE Studentsss(
  2  RollNo INT,
  3  Name VARCHAR(50),
  4  Dept VARCHAR(20),
  5  Age INT,
  6  Phone VARCHAR(15)
  7  );

Table created.

SQL> DESC Studentsss
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)

SQL> CREATE Course(
  2  CourseID INT,
  3  CourseName VARCHAR(50),
  4  Credits INT
  5  );
CREATE Course(
       *
ERROR at line 1:
ORA-00901: invalid CREATE command


SQL> CREATE TABLE Course(
  2  CourseID INT,
  3  CourseName VARCHAR(50),
  4  Credits INT
  5  );

Table created.

SQL> DESC Course
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSEID                                           NUMBER(38)
 COURSENAME                                         VARCHAR2(50)
 CREDITS                                            NUMBER(38)

SQL> ALTER TABLE Studentsss
  2  ADD City VARCHAR(35);

Table altered.

SQL> DESC Studentsss
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 PHONE                                              VARCHAR2(15)
 CITY                                               VARCHAR2(35)

SQL> ALTER TABLE Studentsss
  2  RENAME COLUMN Phone TO MobileNo;

Table altered.

SQL> DESC Studentsss
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(35)

SQL> DROP TABLE Course;

Table dropped.

SQL> INSERT INTO Studentsss VALUES
  2  (101,'Rahul','CSE',20,'9876543210','Delhi',3);
INSERT INTO Studentsss VALUES
            *
ERROR at line 1:
ORA-00913: too many values


SQL> ALTER TABLE Studentsss
  2  ADD Semester INT;

Table altered.

SQL> DESC Studentsss
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER(38)
 NAME                                               VARCHAR2(50)
 DEPT                                               VARCHAR2(20)
 AGE                                                NUMBER(38)
 MOBILENO                                           VARCHAR2(15)
 CITY                                               VARCHAR2(35)
 SEMESTER                                           NUMBER(38)

SQL> INSERT INTO Studentsss VALUES
  2  (101,'Rahul','CSE',20,'987654321','Delhi',3);

1 row created.

SQL> INSERT INTO Studentsss VALUES
  2  (102,'Anita','CSE',21,'9987654321','Bihar',4);

1 row created.

SQL> INSERT INTO Studentsss VALUES
  2  (103,'Rohit','EEE',22,'9887654321','Gaya',5);

1 row created.

SQL> INSERT INTO Studentsss VALUES
  2  (104,'Puja','CE',23,'9888765432','Chennai',6);

1 row created.

SQL> INSERT INTO Studentsss VALUES
  2  (105,'Amit','ME',24,'9877654321','Odisa',7);

1 row created.

SQL> SELECT * FORM Studentsss;
SELECT * FORM Studentsss
         *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> SELECT * FROM Studentsss;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
       101 Rahul
CSE                          20 987654321
Delhi                                        3

       102 Anita
CSE                          21 9987654321
Bihar                                        4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------

       103 Rohit
EEE                          22 9887654321
Gaya                                         5

       104 Puja
CE                           23 9888765432

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
Chennai                                      6

       105 Amit
ME                           24 9877654321
Odisa                                        7


SQL> SELECT RollNo, Name FROM Studentsss;

    ROLLNO NAME
---------- --------------------------------------------------
       101 Rahul
       102 Anita
       103 Rohit
       104 Puja
       105 Amit

SQL> SELECT * FROM Studentsss
  2  WHERE Dept = 'CSE';

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
       101 Rahul
CSE                          20 987654321
Delhi                                        3

       102 Anita
CSE                          21 9987654321
Bihar                                        4

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------


SQL> SELECT * FROM Studentsss
  2  WHERE Age > 20;

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
       102 Anita
CSE                          21 9987654321
Bihar                                        4

       103 Rohit
EEE                          22 9887654321
Gaya                                         5

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------

       104 Puja
CE                           23 9888765432
Chennai                                      6

       105 Amit
ME                           24 9877654321

    ROLLNO NAME
---------- --------------------------------------------------
DEPT                        AGE MOBILENO
-------------------- ---------- ---------------
CITY                                  SEMESTER
----------------------------------- ----------
Odisa                                        7


SQL> UPDATE Studentsss
  2  SET Dept = 'ECE'
  3  WHERE RollNo = 101;

1 row updated.

SQL> UPDATE Studentsss
  2  SET City = 'Patna'
  3  WHERE Name = 'Rahul';

1 row updated.

SQL> UPDATE Studentsss
  2  SET Age = Age + 1;

5 rows updated.

SQL> DELETE FROM Studentsss
  2  WHERE RollNo = 105;

1 row deleted.

SQL> DELETE FROM Studentsss;

4 rows deleted.

SQL>