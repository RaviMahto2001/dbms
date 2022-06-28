/* Company DB */

Create Database Company;
Use Company;

Create Table Employee
(
Fname Varchar(15) Not Null,
Minit Char,
Lname Varchar(15) Not Null,
Ssn Char(9) Not Null,
Bdate Date,
Address Varchar(30),
Sex Char,
Salary Decimal(10,2),
Super_ssn Char(9),
Dno Int Not Null,
Primary Key (Ssn),
Foreign Key (Super_ssn) References Employee(Ssn)
);

/*Foreign Key (Dno) References Department(Dnumber)*/
Alter Table Employee
Add Constraint 
Foreign Key (Dno) References Department(Dnumber);

Create Table Department
(
Dname Varchar(15) Not Null,
Dnumber Int,
Mgr_ssn Char(9) Not Null,
Mgr_start_date Date,
Primary Key (Dnumber),
Unique (Dname),
Foreign Key (Mgr_ssn) references Employee(Ssn)
);

Create Table Dept_locations
(
Dnumber Int Not Null,
Dlocation Varchar(15) Not Null,
Primary Key (Dnumber,Dlocation),
Foreign Key (Dnumber) References Department(Dnumber)
);

Create Table Project
(
Pname Varchar(15) Not Null,
Pnumber Int Not Null,
Plocation Varchar(15),
Dnum Int Not Null,
Primary Key (Pnumber),
Unique(Pname),
Foreign Key (Dnum) References Department(Dnumber)
);

Create Table Works_on
(
Essn Char(9) Not Null,
Pno Int Not Null,
Hours Decimal(3,1) Not Null,
Primary Key(Essn,Pno),
Foreign Key (Essn) References Employee(Ssn),
Foreign Key (Pno) References Project(Pnumber)
);

Create Table Dependent
(
Essn Char(9) Not Null,
Dependent_name Varchar(15) Not Null,
Sex Char,
Bdate Date,
Relationship Varchar(8),
Primary Key (Essn,Dependent_name),
Foreign Key (Essn) References Employee(Ssn)
);