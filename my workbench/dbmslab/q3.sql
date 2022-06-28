/* Whole Tables view */
use emp_dept;
SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENT;

/* Q1 */
SELECT Eno,Ename,Job_type,Hire_date
FROM EMPLOYEE;

/* Q2 */
SELECT DISTINCT Job_type 
FROM EMPLOYEE;

/* Q3 */
SELECT CONCAT(Ename,',',Job_type) AS Name_job
FROM EMPLOYEE;

/*This will not work in mysql, it is interpreted as logical OR */
SELECT Ename || ',' || Job_type AS Name_job
FROM EMPLOYEE;

/* Q4 */
SELECT CONCAT(Eno,',',Ename,',',Job_type,',',SupervisonEno,',',Hire_date,',',Dno,',',Commission,',',Salary) AS THE_OUTPUT
FROM EMPLOYEE;

/* Q5 */
SELECT Ename,Salary 
FROM EMPLOYEE
WHERE (Salary + Commission) > 2850;

/* Q6 */
SELECT Ename,Dno 
FROM EMPLOYEE
WHERE Eno = '79';

/* Q7 */
SELECT Ename,Salary 
FROM EMPLOYEE
WHERE Salary < 1500 OR Salary >2850;
/* NOT BETWEEN can also be used */

/* Q8 */
SELECT Ename,Dno
FROM EMPLOYEE
WHERE Dno = 10 OR Dno = 30
ORDER BY Ename;

/* Q9 */
SELECT Ename,Hire_date
FROM EMPLOYEE
WHERE Hire_date LIKE '1981%';

/* Q10 */
SELECT Ename,Job_type 
FROM EMPLOYEE
WHERE SupervisonEno IS NULL;

/* Q11 */
SELECT Ename,Salary,Commission
FROM EMPLOYEE
WHERE Commission > 0.0
ORDER BY Salary DESC,Commission DESC;

/* Q12 is misunderstood it is a part of Q11 */

/* Q13 */
SELECT Ename
FROM EMPLOYEE
WHERE Ename LIKE '__a%';

/* Q14 */
SELECT Ename 
FROM EMPLOYEE
WHERE (Ename LIKE '%R%R%' OR Ename LIKE '%A%A%')
AND (Dno = 30 OR SupervisonEno = '778');

/* Q15 */
SELECT Ename,Salary,Commission
FROM EMPLOYEE
WHERE Commission > 1.05 * Salary;

/* Q16 */
SELECT curdate(), dayname(curdate());

/* Q17 */
SELECT Ename,Hire_date, 
date_add(date_add(Hire_date, INTERVAL 6 MONTH), INTERVAL (7-weekday(date_add(Hire_date, INTERVAL 6 MONTH))) DAY) 
AS Salary_Review_Date
FROM EMPLOYEE;

/* Q18 */
SELECT Ename, 
(12*(year(curdate()) - year(Hire_date)) + (month(curdate()) - month(Hire_date))
 - (day(curdate()) < day(Hire_date))) AS No_of_Month
FROM EMPLOYEE AS E,DEPARTMENT AS D
WHERE E.Dno = D.Dno AND D.Dname = 'Purchase';

/* Q19 */
SELECT concat(Ename,' earns ',Salary,' monthly but wants ', 3*Salary) AS Dream_Salary
FROM EMPLOYEE;

/* Q20 */
SELECT Ename, length(Ename) AS Length_Of_Name
FROM EMPLOYEE
WHERE Ename LIKE 'J%' OR Ename LIKE 'A%' OR Ename LIKE 'M%';

/* Q21 */

SELECT Ename, Hire_date, dayname(Hire_date) AS Day_of_week
FROM EMPLOYEE;

/* Q22 */
SELECT E.Ename,D.Dname,D.Dno
FROM EMPLOYEE AS E, DEPARTMENT AS D
WHERE E.Dno = D.Dno;

/* Q23 */
SELECT DISTINCT Job_type
FROM EMPLOYEE
WHERE Dno = 30;

/* Q24 */
SELECT E.Ename, D.Dname
FROM EMPLOYEE AS E, DEPARTMENT AS D
WHERE E.Ename LIKE '%A%' AND E.Dno = D.Dno;

/* Q25 */
SELECT E.Ename, E.Job_type, D.Dname, D.Dno
FROM EMPLOYEE AS E, DEPARTMENT AS D
WHERE E.Dno = D.Dno AND D.Location = 'New Delhi';

/* Q26 */
SELECT E.Ename, E.Eno, S.Eno AS S_Eno, S.Ename AS S_Ename
FROM EMPLOYEE AS E LEFT OUTER JOIN EMPLOYEE AS S ON E.SupervisonEno = S.Eno;

/* Q27 */
SELECT Ename, Dno, Salary
FROM EMPLOYEE
WHERE (Dno,Salary) IN (SELECT Dno,Salary FROM EMPLOYEE WHERE Commission > 0.0);

/* Q28 */
SELECT Ename, repeat('*',Salary/100) AS Salary_in_star
FROM EMPLOYEE;

/* Q29 */
SELECT max(Salary) AS Highest_Salary, min(Salary) AS Lowest_Salary, sum(Salary) AS Sum_Salary, avg(Salary) AS Avg_Salary
FROM EMPLOYEE;

/* Q30 */
SELECT Job_type, count(*)
FROM EMPLOYEE
group by Job_type;

/* Q31 */
SELECT count(DISTINCT SupervisonEno) AS Total_No_of_Supervisors
FROM EMPLOYEE;

/* Q32 */
SELECT D.Dname, D.Location, count(*) AS No_of_emp, avg(E.Salary) AS Avg_Salary
FROM EMPLOYEE AS E, DEPARTMENT AS D
WHERE E.Dno = D.Dno
GROUP BY E.Dno;

/* Q33 */
SELECT Ename, Hire_date
FROM EMPLOYEE
WHERE Dno = (SELECT Dno FROM EMPLOYEE WHERE Ename = 'Ravi');

/* Q34 */
SELECT Eno, Ename
FROM EMPLOYEE
WHERE Salary > (SELECT avg(Salary) FROM EMPLOYEE);

/* Q35 */
SELECT Eno, Ename
FROM EMPLOYEE
WHERE Dno IN 
(SELECT DISTINCT Dno FROM EMPLOYEE
WHERE Ename LIKE '%T%');

/* Q36 */
SELECT Ename, Salary
From Employee
WHERE SupervisonEno = (SELECT Eno  FROM EMPLOYEE WHERE Ename = 'Ravi');

/* Q37 */
SELECT E.Dno, E.Ename, E.Job_type
FROM EMPLOYEE AS E, DEPARTMENT AS D
WHERE E.Dno = D.Dno AND Dname = 'Sales';

/* Q38 */
SELECT Ename, Dname
From Employee AS E, Department AS D
WHERE E.Dno = D.Dno AND (year(curdate())-year(Hire_date)) >= 20;

/* Q39 */
SELECT Location, count(*)
FROM DEPARTMENT
GROUP BY Location;

/* Q40 */
SELECT Dname
FROM (EMPLOYEE E JOIN DEPARTMENT D ON E.Dno = D.Dno)
GROUP BY E.Dno
HAVING count(*) > 20;


/* Q41 */
SELECT Ename
From EMPLOYEE
WHERE Eno NOT IN (SELECT DISTINCT SupervisonEno FROM EMPLOYEE)
UNION
(
SELECT S.Ename
FROM (EMPLOYEE AS E JOIN EMPLOYEE AS S ON E.SupervisonEno = S.Eno)
GROUP BY E.SupervisonEno
Having count(*) > 4
);

/* Q42 */
SELECT E.Job_type AS Job_type_min_emp
FROM (SELECT Job_type,count(*) as f FROM EMPLOYEE GROUP BY Job_type) AS E
WHERE E.f = 1;
SELECT Job_type 
FROM EMPLOYEE
GROUP BY Job_type
HAVING COUNT(*) = (SELECT max(E.f) FROM (SELECT Job_type,count(*) as f FROM EMPLOYEE GROUP BY Job_type) AS E);




(SELECT Job_type as Job_type_min_max_emp
FROM EMPLOYEE
GROUP BY Job_type
HAVING count(*) = 1)
UNION 
(SELECT Job_type as Job_type_max_emp
FROM EMPLOYEE
GROUP BY Job_type
HAVING count(*) = (SELECT max(E.F) FROM (SELECT count(*) AS F FROM EMPLOYEE GROUP BY Job_type) AS E));
