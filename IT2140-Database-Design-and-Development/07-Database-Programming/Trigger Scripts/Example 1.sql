CREATE TABLE Account 
(accountNo INT PRIMARY KEY, 
custId INT, 
branch VARCHAR(20), 
balance FLOAT)
 
CREATE TABLE AccountAudit (
aid INT IDENTITY(1,1),--AUTO INCEMENT
accountNo INT, 
balance FLOAT, 
adate DATE)
 
CREATE TRIGGER checkInsertUpdate
ON Account
FOR INSERT, UPDATE
AS
BEGIN
	DECLARE @accNo int
	DECLARE @bal float
	SELECT @accNo = i.accountNo, @bal = i.balance
	FROM inserted i
	INSERT INTO AccountAudit(accountNo,balance,adate) 
	         VALUES (@accNo,@bal,GETDATE())
END
--TRIGERING SQL STMT
INSERT INTO Account VALUES (1000,500,'Malabe',5000)
INSERT INTO Account VALUES (1001,501,'Kaduwela',2000)
UPDATE Account
SET balance = 3000
WHERE accountNo  = 1001
 
SELECT * FROM Account
SELECT * FROM AccountAudit
