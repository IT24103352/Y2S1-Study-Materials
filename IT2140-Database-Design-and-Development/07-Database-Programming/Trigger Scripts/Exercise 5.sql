CREATE TABLE Employee(
nic CHAR(10) PRIMARY KEY, 
ename VARCHAR(20), 
salary FLOAT, 
dno INT)
 
CREATE TABLE Deptartment (
dno INT PRIMARY KEY, 
dname VARCHAR(20), 
mgrNic CHAR(10) REFERENCES Employee)
 
ALTER TABLE Employee
ADD CONSTRAINT emp_fk FOREIGN KEY(dno) REFERENCES Deptartment(dno)

--ENTER DUMMY DATE TO BOTH TABLES
INSERT INTO Deptartment VALUES(1,'IT',null)
INSERT INTO Employee VALUES ('993333333V','John',34000,1)
UPDATE Deptartment
SET mgrNic = '993333333V'
WHERE dno = 1
 
SELECT *FROM Deptartment
SELECT *FROM Employee


CREATE TRIGGER checkSal
ON Employee
FOR INSERT,UPDATE
AS
BEGIN
	DECLARE @empSal float
	DECLARE @mgrSal float
	DECLARE @dno int
 
	SELECT @empSal = i.salary, @dno = i.dno
	FROM inserted i
 
	SELECT @mgrSal = e.salary
	FROM Employee e, Deptartment d
	WHERE e.nic = d.mgrNic AND d.dno = @dno
 
	IF @empSal > @mgrSal 
	BEGIN
		PRINT 'emp salary cannot exceed the manager salary'
		ROLLBACK TRANSACTION
	END
END

---TRIGGERING SQL STMT
INSERT INTO Employee VALUES('995555555V','Ann',50000,1)--CANNOT INSERT
INSERT INTO Employee VALUES('995555555V','Ann',20000,1)--CAN INSERT
