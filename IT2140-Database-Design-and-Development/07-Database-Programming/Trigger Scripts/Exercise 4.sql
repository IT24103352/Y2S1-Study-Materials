CREATE TABLE TTransaction(
tid INT PRIMARY KEY, 
accountNo INT, 
ttype VARCHAR(20),
amount FLOAT,
tdate DATE)
 
--Assuming that the bank’s maximum withdrawal limit per 
--day is 40000, write a trigger to ensure that 
--no customer withdraws more than the given limit.
CREATE TRIGGER checkWithdrawalLimit
ON TTransaction
FOR INSERT, UPDATE
AS
BEGIN
	DECLARE @accNo int
	DECLARE @tdate date
	DECLARE @total float
 
	SELECT @accNo = i.accountNo, @tdate = i.tdate
	FROM inserted i
 
	SELECT @total = SUM(amount)
	FROM TTransaction
	WHERE accountNo = @accNo AND  tdate = @tdate AND
	                    ttype = 'debit'
 
	IF @total > 40000
	BEGIN
		PRINT 'Cannot withdraw more than 40000 per day'
		ROLLBACK TRANSACTION
	END
END

-----------------------
INSERT INTO TTransaction VALUES(1,200,'debit',2000,'2025-10-01')--can insert
INSERT INTO TTransaction VALUES(2,200,'debit',2000,'2025-10-01')--can insert
INSERT INTO TTransaction VALUES(3,200,'debit',40000,'2025-10-01')--cannot insert
