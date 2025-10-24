CREATE TRIGGER checkDeptCount
ON Works
FOR INSERT, UPDATE
AS
BEGIN
	DECLARE @eid int
	DECLARE @deptCount int
	SELECT @eid = i.eid
	FROM inserted i
 
	SELECT @deptCount = COUNT(*)
	FROM Works 
	WHERE eid = @eid
 
	IF @deptCount > 2
	BEGIN
		PRINT 'cannot work more than 2 departments'
		ROLLBACK TRANSACTION --undo the DML stmt
	END
END
--TRIGGERING SQL STMT
INSERT INTO Works VALUES (1000, 'Academic', 20)--cannot insert
INSERT INTO Works VALUES (1001, 'Academic', 20)--can insert
INSERT INTO Works VALUES (1001, 'ITSD', 70)
SELECT * FROM Works
