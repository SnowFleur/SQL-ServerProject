/*
- ���̺� Ŭ������ �ε����� ������
*/
USE tempdb

CREATE TABLE userTb5
(
	UserID	CHAR(8)	NOT NULL	PRIMARY KEY,
	Name	NVARCHAR(10)	NOT NULL,
	BirthYear	INT NOT NULL,
	Addr	NCHAR(2)	NOT NULL
)
GO

INSERT INTO userTb5 VALUES('LSG','�̽±�',1987,'����')
INSERT INTO userTb5 VALUES('KBS','�����',1979,'�泲')
INSERT INTO userTb5 VALUES('KKH','���ȣ',1971,'����')
INSERT INTO userTb5 VALUES('JYP','������',1950,'���')
INSERT INTO userTb5 VALUES('SSK','���ð�',1979,'����')
GO

SELECT * FROM userTb5 WITH(NOLOCK)
EXEC sp_helpindex userTb5
