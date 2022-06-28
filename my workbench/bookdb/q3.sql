select * from employee;
select * from department;
select * from dependent;
select * from dept_locations;
select * from project;
select * from works_on;

/* Not working */
Insert Into Department Values
('Sample', 9, '188765565', '1988-05-22');
Insert Into Employee Values
('Ravi','M','Mahto','188765565','1937-11-10','450-Stone-Houston-TX','M', 55000,'888665555', 9);

SELECT E.Fname, E.Lname
FROM EMPLOYEE AS E
WHERE EXISTS ( SELECT *
FROM DEPENDENT AS D
WHERE E.Ssn = D.Essn AND E.Sex = D.Sex
AND E.Fname = D.Dependent_name);

SELECT Fname, Lname
FROM EMPLOYEE
WHERE NOT EXISTS ( SELECT *
FROM DEPENDENT
WHERE Ssn = Essn );

SELECT Fname, Lname
FROM EMPLOYEE
WHERE Ssn Not IN ( SELECT distinct Essn
FROM DEPENDENT);
