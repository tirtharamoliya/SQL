CREATE TABLE EMPLOYE(
   EID INT,
   FIRSTNAME VARCHAR(50),
   LASTNAME VARCHAR(50),
   DEPARTMENT VARCHAR(50),
   SALARY DECIMAL(7,2),
   CITY VARCHAR(50),
   GENDER VARCHAR(10),
   JOININGYEAR INT
);

INSERT INTO EMPLOYE VALUES
(101, 'HETVI', 'PATEL', 'ADMIN', 12000.00, 'RAJKOT', 'FEMALE', 2026),
(102, 'RAJ', 'MEHTA', 'IT', 14000.00, 'AHMEDABAD', 'MALE', 2022),
(103, 'VISHAL', 'SHARMA', 'HR', 15000.00, 'BARODA', 'MALE', 2020),
(104, 'DEEP', 'PATEL', 'ADMIN', 12500.00, 'RAJKOT', 'MALE', 2026),
(105, 'DHAVAL', 'SHAH', 'IT', 14000.00, 'JAMNAGAR', 'MALE', 2024),
(106, 'RIYA', 'KAUR', 'IT', 5000.00, 'AHMEDABAD', 'FEMALE', 2024),
(107, 'PARAG','PANDYA', 'HR', 7000.00, 'RAJKOT','MALE',2025),
(108, 'VRUNDA','VYAS', 'SERVER',10000.00, 'BARODA','FEMALE',2022),
(109, 'MEHUL', 'SINGH',  'HR',  12000.00, 'MORBI', 'MALE',2020),
(110, 'MUBIN', 'PARMAR', 'TRANSPORT', 12000.00,'SURAT','MALE',2021),
(111,'MAYANK', 'PUROHIT', 'ACCOUNT', 13000.00, NULL, 'MALE', 2020 );

SELECT * FROM EMPLOYE

-- Part – A:
-- 1.Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAXIMUM, MIN(SALARY) AS MINIMUM FROM EMPLOYE
-- 2.Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
-- respectively.
SELECT SUM(SALARY) AS TOTAL_SAL, AVG(SALARY) AS AVERAGE_SAL FROM EMPLOYE 
-- 3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(*) AS TOTAL FROM EMPLOYE 
-- 4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS MAXIMUMM FROM EMPLOYE WHERE CITY='RAJKOT'
-- 5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS MAXIMUMM FROM EMPLOYE WHERE DEPARTMENT='IT'
-- 6. Count employee department is HR.
SELECT COUNT(EID) AS COUNT FROM EMPLOYE WHERE DEPARTMENT='HR'
-- 7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVG FROM EMPLOYE WHERE DEPARTMENT='ADMIN'
-- 8. Display total salary of HR department.
SELECT SUM(SALARY) AS TOTAL_SAL FROM EMPLOYE WHERE DEPARTMENT='HR'
-- 9. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) AS TOTAL_CITY FROM EMPLOYE
-- 10. Count unique departments.
SELECT COUNT(DISTINCT DEPARTMENT) AS UNIQUE_DEPARTMENT FROM EMPLOYE
-- 11. Display minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) FROM EMPLOYE WHERE CITY='AHMEDABAD'
-- 12. Find city wise highest salary.
SELECT CITY, MAX(SALARY) FROM EMPLOYE GROUP BY CITY
-- 13. Find department wise lowest salary.
SELECT DEPARTMENT, MIN(SALARY) FROM EMPLOYE GROUP BY DEPARTMENT
-- 14. Display minimum salary in each city.
SELECT CITY, MIN(SALARY) FROM EMPLOYE GROUP BY CITY
-- 15. Display average salary of employees from Surat.
SELECT AVG(SALARY) FROM EMPLOYE WHERE CITY='SURAT'
-- 16. Display total salary of female employees.
SELECT SUM(SALARY) FROM EMPLOYE WHERE GENDER='FEMALE'
-- 17. Count number of male employees.
SELECT COUNT(EID) FROM EMPLOYE WHERE GENDER='MALE'
-- 18. Display city with the total number of employees belonging to each city.
SELECT CITY, COUNT(EID) FROM EMPLOYE GROUP BY CITY
-- 19. Count number of employees in each city where gender is MALE.
SELECT CITY, COUNT(EID) FROM EMPLOYE WHERE GENDER='MALE' GROUP BY CITY
-- 20. Display maximum salary in each department where city is not Ahmedabad.
SELECT CITY, MAX(SALARY) FROM EMPLOYE WHERE CITY <> 'AHMEDABAD' GROUP BY CITY

-- Part – B:
-- 21. Display minimum salary in each city where gender is FEMALE.
SELECT CITY, MIN(SALARY) FROM EMPLOYE WHERE GENDER='FEMALE' GROUP BY CITY 
-- 22. Give total salary of each department of EMPLOYEE table.
SELECT DEPARTMENT, SUM(SALARY) FROM EMPLOYE GROUP BY DEPARTMENT
-- 23. Give average salary of each department of EMPLOYEE table without displaying the respective
-- department name.
SELECT AVG(SALARY) FROM EMPLOYE GROUP BY DEPARTMENT 
-- 24. Count the number of employees for each department in every city.
SELECT DEPARTMENT,CITY, COUNT(EID) FROM EMPLOYE GROUP BY DEPARTMENT, CITY
-- 25. Calculate the total salary distributed to male and female employees.
SELECT GENDER, SUM(SALARY) FROM EMPLOYE GROUP BY GENDER

-- Part – C:
-- 26. Give city wise maximum and minimum salary of female employees.
SELECT CITY, MAX(SALARY), MIN(SALARY) FROM EMPLOYE WHERE GENDER='FEMALE' GROUP BY CITY
-- 27. Calculate department, city, and gender wise average salary.
SELECT DEPARTMENT,CITY,GENDER, AVG(SALARY) FROM EMPLOYE GROUP BY DEPARTMENT,CITY,GENDER
-- 28. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
SELECT MAX(SALARY)-MIN(SALARY) FROM EMPLOYE
-- 29. Display sum of salaries of department wise where department name consist 5 letter.
SELECT DEPARTMENT, SUM(SALARY) FROM EMPLOYE WHERE DEPARTMENT LIKE '-----' GROUP BY DEPARTMENT
-- 30. Find the Maximum salary department & city wise in which city name starts with ‘R’.
SELECT DEPARTMENT,CITY, MAX(SALARY) FROM EMPLOYE WHERE CITY LIKE 'R%' GROUP BY DEPARTMENT,CITY
