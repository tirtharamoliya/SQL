-- 1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE() AS TODAY_DATE
-- 2. Write a query to find new date after 365 day with reference to today.
SELECT DATEADD(DAY,365,GETDATE())
-- 3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT FORMAT(GETDATE(),'MMM d yyyy hh:mmtt ')
-- 4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(GETDATE(),'dd MMM yyyy')
-- 5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(), 'MMM dd, yy')
-- 6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH,'20081231','20090331')
-- 7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR,'20120125 7:00','20120126 10:30')
-- 8. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY('12-MAY-16') AS DAY
SELECT MONTH('12-MAY-16') AS MONTH
SELECT YEAR('12-MAY-16') AS YEAR
-- 9. Write a query that adds 5 years to current date.
SELECT DATEADD(yy,5,'2026-07-15') AS ADDED_DATE
-- 10. Write a query to subtract 2 months from current date.
SELECT DATEADD(mm,-2,GETDATE())
-- 11. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH,GETDATE()) AS 'MONTH'
-- 12. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE()) 
-- 13. Calculate your age in years and months.
SELECT DATEDIFF(YEAR,'2007-05-03','2026-07-15')
SELECT DATEDIFF(MONTH,'2007-05-03','2026-07-15')

CREATE TABLE DEPOSIT(
    ACTNO INT,
    CNAME VARCHAR(50),
    BNAME VARCHAR(50),
    AMOUNT DECIMAL(8,2),
    ADATE DATETIME
);

INSERT INTO DEPOSIT VALUES
(101 , 'MEET', 'MAVDI' , 10000 , '2025-03-01'),
(102 , 'JAY' , 'MADHAPAR' , 5000 , '2026-01-04'),
(103 , 'RAHUL' , 'BEDI' , 3500 , '2026-01-07'),
(104 , 'RIYA' , 'MAVDI' , 1200 , '2025-06-07'),
(105 , 'MANSI' , 'KKV HALL' , 3000 , '2024-03-02'),
(106 , 'DIYA' , 'MADHAPAR' , 2000 , '2025-03-01'),
(107 , 'MIRAL' , 'BEDI' , 1000 , '2025-09-05'),
(108 , 'UDAY' , 'UMIYA CHOWK' , 5000 , '2025-07-02'),
(109 , 'CHARMI' , 'SHITAL PARK' , 7000 , '2026-08-02'),
(110 , 'BHAVIN' , 'RING ROAD' , 8000 , '2025-02-02'),
(111 , 'BANSI', NULL, 9000 ,'2025-01-01');

SELECT * FROM DEPOSIT
-- 14. Display all records where account date is in the year 2025.
SELECT * FROM DEPOSIT WHERE YEAR(ADATE)=2025
-- 15. Display all records where account date is in the month of March.
SELECT * FROM DEPOSIT WHERE MONTH(ADATE)='3'
-- 16. Display records where account date is after ‘01-Jan-2025’.
SELECT * FROM DEPOSIT WHERE ADATE>'01-JAN-2025'
-- 17. Display records where account date is before ‘01-Jan-2025’.
SELECT * FROM DEPOSIT WHERE ADATE<'01-JAN-2025'

-- 18. Display records where day of account date is 1.
SELECT * FROM DEPOSIT WHERE DAY(ADATE)='1'
-- 19. Display records where month of account date is greater than 6.
SELECT * FROM DEPOSIT WHERE DAY(ADATE)>'6'

-- 20. Display records where year of account date is 2026.
SELECT * FROM DEPOSIT WHERE YEAR(ADATE)='2026'

-- 21. Display number of accounts opened in each year.
SELECT COUNT(ACTNO) FROM DEPOSIT GROUP BY YEAR(ADATE)

-- 22. Display number of accounts opened in each month.
SELECT COUNT(ACTNO) FROM DEPOSIT GROUP BY MONTH(ADATE)

-- 23. Display maximum amount deposited in each year.
SELECT MAX(AMOUNT) FROM DEPOSIT GROUP BY YEAR(ADATE)
-- 24. Display minimum amount deposited in each month.
SELECT MIN(AMOUNT) FROM DEPOSIT GROUP BY MONTH(ADATE)

-- 25. Display total amount deposited in each year.
SELECT SUM(AMOUNT) FROM DEPOSIT GROUP BY YEAR(ADATE)

-- 26. Display records where account date is between ‘01-Mar-2025’ and ‘31-Dec-2025’.
SELECT * FROM DEPOSIT WHERE ADATE BETWEEN '01-Mar-2025' and '31-Dec-2025'
-- 27. Display records where account date is in the current year.
SELECT * FROM DEPOSIT WHERE YEAR(ADATE)=YEAR(GETDATE())
-- 28. Display difference in days between today’s date and account date.
SELECT DATEDIFF(DAY,ADATE,GETDATE()) FROM DEPOSIT 