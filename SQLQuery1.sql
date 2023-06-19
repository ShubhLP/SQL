-- BEGINNER TUTORIAL --

--CREATE TABLE EmployeeDemographics
--(EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--CREATE TABLE EmployeeSalary
--(EmployeeID int,
--JobTitle varchar(50),
--Salary int)

--INSERT INTO EmployeeDemographics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--INSERT INTO EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

--SELECT FirstName, LastName
--FROM EmployeeDemographics

--SELECT TOP 5 *
--FROM EmployeeDemographics

--SELECT Distinct(EmployeeID)
--FROM EmployeeDemographics

--SELECT Distinct(Gender)
--FROM EmployeeDemographics

--SELECT COUNT(LastName) AS LastNameCount
--FROM EmployeeDemographics

--SELECT *
--FROM EmployeeDemographics


--SELECT MAX(Salary)
--FROM EmployeeSalary

--SELECT MIN(Salary)
--FROM EmployeeSalary

--SELECT AVG(Salary)
--FROM EmployeeSalary

--SELECT *
--FROM EmployeeSalary

---- if want to access using 'Master' ----
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeSalary


--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName = 'Jim' -- is equal to (Only Jim)
--WHERE FirstName <> 'Jim' -- is not equal to (All except Jim)
--WHERE Age >= 30
--WHERE Age <= 32
--WHERE Age <= 32 AND Gender = 'Male'
--WHERE Age <= 32 OR Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%'
--WHERE LastName LIKE '%S%'
--WHERE LastName LIKE 'S%o%'
--WHERE LastName LIKE 'S%ott%'
--WHERE LastName LIKE 'S%c%ott%'
--WHERE FirstName IS NULL
--WHERE FirstName IS NOT NULL
--WHERE FirstName IN ('Jim', 'Michael')

--SELECT *
--FROM EmployeeDemographics

--SELECT FirstName, Count(FirstName)
--FROM EmployeeDemographics
--GROUP BY FirstName

--SELECT Gender, COUNT(Gender) AS CountGender
--From EmployeeDemographics
--GROUP BY Gender

--SELECT Gender, Age, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--GROUP BY Gender, Age

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender -- By default Ascending

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY CountGender DESC

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE Age > 31
--GROUP BY Gender
--ORDER BY Gender -- Sorts by gender


--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age, Gender

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age, Gender DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC, Gender DESC

--SELECT *
--FROM EmployeeDemographics
--ORDER BY 4 DESC, 5 DESC

-- INTERMEDIATE TUTORIAL --

--INSERT INTO EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly','Flax', NULL, 'Male'),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--INSERT INTO EmployeeSalary VALUES
--(NULL, NULL, NULL),
--(NULL, NULL, NULL),
--(NULL, NULL, NULL),
--(1010, NULL, 47000),
--(NULL, 'Salesman', 43000)

SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

-- INNER/OUTER JOINS
SELECT *
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

----- Doesn't work as both the tables have EmployeeId and it cannot choose between the two. -----

--SELECT EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM EmployeeDemographics
--RIGHT OUTER JOIN EmployeeSalary
--ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
RIGHT OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON [SQL Tutorial].dbo.EmployeeDemographics.EmployeeID = [SQL Tutorial].dbo.EmployeeSalary.EmployeeID

SELECT EmployeeDemographics.EmployeeID, FirstName, LAstNAme, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON [SQL Tutorial].dbo.EmployeeDemographics.EmployeeID = [SQL Tutorial].dbo.EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

SELECT JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON [SQL Tutorial].dbo.EmployeeDemographics.EmployeeID = [SQL Tutorial].dbo.EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'

SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary
ON [SQL Tutorial].dbo.EmployeeDemographics.EmployeeID = [SQL Tutorial].dbo.EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle

--CREATE TABLE WareHouseEmployeeDemographics
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--INSERT INTO WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary

SELECT *
FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics

--UNION OPERATOR
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION
SELECT *
FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics
ON [SQL Tutorial].dbo.EmployeeDemographics.EmployeeID = [SQL Tutorial].dbo.WareHouseEmployeeDemographics.EmployeeID

SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial].dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial].dbo.EmployeeSalary

SELECT FirstName, LastName, Age
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

--CASE STATEMENT
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

-- If multile conditions satisfying the criteria, then only first one will be returned
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age = 38 THEN 'Stanley' -- should've returned 'Stanley' but instead returned 'Old'
	ELSE 'Baby'
END
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.1)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * 0.0001)
	ELSE Salary + (Salary * 0.03)
END AS SalaryAfterRaise
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	-- HAVING CLAUSE
SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)

-- UPDATING/DELETING DATA

SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics

UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET EmployeeID = 1012 -- SET: specifies what column and what value you wanna update --
WHERE FirstName = 'Holly' AND LastName = 'Flax'

UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female' -- SET: specifies what column and what value you wanna update --
WHERE FirstName = 'Holly' AND LastName = 'Flax'

DELETE FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1005

-- TRICK!!!--
-- USE SELECT STATEMENT BEFORE DELETE STATEMENT TO SEE IF YOU ARE DELETING THE CORRECT DATA --
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1004
-- -- --

-- ALIASING --
SELECT FirstName AS Fname
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT FirstName AS Fname, LastName AS Lname
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT FirstName + ' ' + LastName AS FullName
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT AVG(Age) AS AvgAge
FROM [SQL Tutorial].dbo.EmployeeDemographics

SELECT Demo.EmployeeID, Sal.Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics AS Demo
JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID


SELECT a.EmployeeID, a.FirstName, b.JobTitle, c.Age
FROM [SQL Tutorial].dbo.EmployeeDemographics AS a
LEFT JOIN [SQL Tutorial].dbo.EmployeeSalary AS b
	ON a.EmployeeID = b.EmployeeID
LEFT JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics AS c
	ON a.EmployeeID = c.EmployeeID

-- PARTITION BY: Divides --

SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM [SQL Tutorial]..EmployeeDemographics Dem
JOIN [SQL Tutorial]..EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID

-- Difference between PARTITION BY and GROUP BY
SELECT Gender, COUNT(Gender)
FROM [SQL Tutorial]..EmployeeDemographics as Demo
JOIN [SQL Tutorial]..EmployeeSalary as Sal
	ON Demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender

SELECT FirstName, LastName, Gender, Salary, COUNT(Gender)
FROM [SQL Tutorial]..EmployeeDemographics Dem
JOIN [SQL Tutorial]..EmployeeSalary Sal
	ON Dem.EmployeeID = Sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary

--SELECT *
--FROM [SQL Tutorial]..EmployeeDemographics

---- ADVANCED TUTORIAL ----
-- COMMON TABLE EXPRESSION (CTE) --

WITH CTE_Employee AS
(
SELECT FirstName, LastName, Gender, Salary,
COUNT(GENDER) OVER (PARTITION BY Gender) AS GenderCount,
AVG(Salary) OVER (PARTITION BY Gender) AS AvgSal
FROM [SQL Tutorial]..EmployeeDemographics AS Demo
JOIN [SQL Tutorial]..EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
WHERE Salary > '45000'
)
--SELECT *
SELECT FirstName, AvgSal
FROM CTE_Employee

-- TEMP TABLES --

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_Employee

--INSERT INTO #temp_Employee VALUES
--(
--'1001', 'HR', '45000'
--)

INSERT INTO #temp_Employee
SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary

DROP TABLE IF EXISTS #temp_Employee2 --#temp_table is stored somewhere so it can't be recreated. To run it multiple times, use DROP
CREATE TABLE #temp_Employee2
(JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics Emp
JOIN [SQL Tutorial].dbo.EmployeeSalary Sal
	ON Emp.EmployeeID = Sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_Employee2

-- STRING FUNCTIONS --

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

-- Using Replace

SELECT LastName, REPLACE(LastName, ' - Fired', '') AS LastNameFixed
FROM EmployeeErrors


----Using String----
-- GENDER, AGE, LastName, DOB

SELECT SUBSTRING(FirstName, 1, 3)
FROM EmployeeErrors

SELECT SUBSTRING(FirstName, 3, 3)
FROM EmployeeErrors

-- FUZZY MATCHING --

--INSERT INTO [SQL Tutorial]..EmployeeDemographics VALUES
--(1005, 'Toby', 'Flenderson', 31, 'Male')

SELECT Err.FirstName, Demo.FirstName
FROM EmployeeErrors Err
JOIN [SQL Tutorial].dbo.EmployeeDemographics Demo
	ON Demo.FirstName = Err.FirstName

SELECT FirstName
FROM [SQL Tutorial]..EmployeeDemographics

SELECT FirstName
FROM EmployeeErrors

SELECT SUBSTRING(Err.FirstName, 1, 3), SUBSTRING(Demo.FirstName, 1, 3)
FROM [SQL Tutorial]..EmployeeDemographics Demo
JOIN EmployeeErrors Err
	ON SUBSTRING(Err.FirstName, 1, 3) = SUBSTRING(Demo.FirstName, 1, 3)

SELECT Err.FirstName, SUBSTRING(Err.FirstName, 1, 3), Demo.FirstName, SUBSTRING(Demo.FirstName, 1, 3)
FROM [SQL Tutorial]..EmployeeDemographics Demo
JOIN EmployeeErrors Err
	ON SUBSTRING(Err.FirstName, 1, 3) = SUBSTRING(Demo.FirstName, 1, 3)

-- UPPER AND LOWER

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors

--STORED PROCEDURES--

CREATE PROCEDURE TEST
AS
SELECT *
FROM EmployeeDemographics

EXEC TEST

CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_Employee1
(JobTitle varchar(100),
EmployeesPerJob int,
AvgAge int,
Salary int
)

Insert into #temp_Employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(Salary)
FROM [SQL Tutorial]..EmployeeDemographics emp
JOIN [SQL Tutorial]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

Select * 
From #temp_employee

EXEC Temp_Employee


-- SUBQUERIES

SELECT *
FROM EmployeeDemographics

SELECT EmployeeID, Salary, (SELECT AVG(Salary) FROM EmployeeSalary) AS AllAvgSalary
FROM EmployeeSalary

-- USING PARTITION BY
SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
FROM EmployeeSalary

-- WHY GROUP BY DOESN'T WORK

SELECT EmployeeID, Salary, AVG(Salary) AS AllAvgSalary
FROM EmployeeSalary
GROUP BY EmployeeID, Salary
ORDER BY EmployeeID

--SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
--FROM EmployeeSalary
--GROUP BY EmployeeID, Salary
--ORDER BY EmployeeID

-- USING FROM
SELECT a.EmployeeID, AllAvgSalary
FROM (SELECT EmployeeID, Salary, AVG(Salary) OVER () AS AllAvgSalary
	  FROM EmployeeSalary) a

-- USING WHERE
SELECT EmployeeID, JobTitle, Salary
FROM EmployeeSalary
WHERE EmployeeID IN (
		SELECT EmployeeID
		FROM EmployeeDemographics
		WHERE Age > 30)

SELECT FirstName, Age
FROM EmployeeDemographics
WHERE EmployeeID IN (
SELECT EmployeeID
FROM EmployeeSalary)