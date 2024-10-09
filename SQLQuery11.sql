USE CSE_3B_383
CREATE TABLE Stu_Info (
    Rno INT ,
    Name VARCHAR(50),
    Branch VARCHAR(50)
);

INSERT INTO Stu_Info (Rno, Name, Branch)
VALUES 
    (101, 'Raju', 'CE'),
    (102, 'Amit', 'CE'),
    (103, 'Sanjay', 'ME'),
    (104, 'Neha', 'EC'),
    (105, 'Meera', 'EE'),
    (106, 'Mahesh', 'ME');

CREATE TABLE Result (
	RNO INT,
    SPI DECIMAL(4, 2),
	);

INSERT INTO Result (Rno, SPI)
VALUES 
    (101, 8.8),
    (102, 9.2),
    (103, 7.6),
    (104, 8.2),
    (105, 7.0),
    (107, 8.9);  

CREATE TABLE EMPLOYE_MASTER (
    EmployeeNo VARCHAR(50) ,
    Name VARCHAR(50),
    ManagerNo VARCHAR(50)
);

INSERT INTO EMPLOYE_MASTER(EmployeeNo, Name, ManagerNo)
VALUES 
    ('E01', 'Tarun', NULL),
    ('E02', 'Rohan', 'E02'),
    ('E03', 'Priya', 'E01'),
    ('E04', 'Milan', 'E03'),
    ('E05', 'Jay', 'E01'),
    ('E06', 'Anjana', 'E04');

--PART A
--1. Combine information from student and result table using cross join or Cartesian product.SELECT Stu_Info.Branch,Stu_Info.Name,Stu_Info.Rno FROM  STU_INFO CROSS JOIN RESULT 

--2. Perform inner join on Student and Result tables.
SELECT Stu_Info.Branch,Stu_Info.Name,Stu_Info.Rno FROM Stu_Info JOIN Result ON Stu_Info.Rno=Result.RNO

--3. Perform the left outer join on Student and Result tables.SELECT Stu_Info.Branch,Stu_Info.Name,Stu_Info.Rno FROM Stu_Info LEFT JOIN Result ON Stu_Info.Rno=Result.RNO--4. Perform the right outer join on Student and Result tables.select Stu_Info.Branch,Stu_Info.Name,Stu_Info.Rno from Stu_Info right join Result on Stu_Info.Rno = Result.RNO--5. Perform the full outer join on Student and Result tables. select Stu_Info.Branch,Stu_Info.Name,Stu_Info.Rno from Stu_Info full join Result on Stu_Info.Rno = Result.RNO--6. Display Rno, Name, Branch and SPI of all students.select Name, Branch, SPI from Stu_Info join Result on Stu_Info.Rno = Result.RNO--7. Display Rno, Name, Branch and SPI of CE branch’s student only.select Name, Branch, SPI from Stu_Info join Result on Stu_Info.Rno = Result.RNO where Branch = 'CE'--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.select Name, Branch, SPI from Stu_Info join Result on Stu_Info.Rno = Result.RNO where Branch <> 'CE'--9. Display average result of each branch.select Branch, AVG(SPI) as AVG_SPI from Stu_Info join Result on Stu_Info.Rno = Result.RNO group by Branch--10. Display average result of CE and ME branch.
select Name, Branch, SPI from Stu_Info join Result on Stu_Info.Rno = Result.RNO where Branch IN ('CE','ME')

--PART B

--1. Display average result of each branch and sort them in ascending order by SPI.--2. Display highest SPI from each branch and sort them in descending order.--PART C--1. Retrieve the names of employee along with their manager’s name from the Employee table.