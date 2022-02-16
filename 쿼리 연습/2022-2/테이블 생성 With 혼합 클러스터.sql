USE tempdb;

CREATE TABLE mixedTb1
(
	userID	CHAR(8) NOT NULL,
	name	NCHAR(10) NOT NULL,
	addr	NCHAR(2)
);

GO
INSERT INTO mixedTb1 VALUES('LSG','�̽±�','����');
INSERT INTO mixedTb1 VALUES('KBS','�����','�泲');
INSERT INTO mixedTb1 VALUES('KKH','���ȣ','����');
INSERT INTO mixedTb1 VALUES('JYP','������','���');
INSERT INTO mixedTb1 VALUES('SSK','���ð�','����');
INSERT INTO mixedTb1 VALUES('LJB','�����','����');
INSERT INTO mixedTb1 VALUES('YJS','������','�泲');
INSERT INTO mixedTb1 VALUES('EJW','������','���');
INSERT INTO mixedTb1 VALUES('JKW','������','���');
INSERT INTO mixedTb1 VALUES('BBK','�ٺ�Ŵ','����');

--Ŭ����Ʈ �ε���
ALTER TABLE mixedTb1
	ADD CONSTRAINT pk_mixedTb1_userID
	PRIMARY KEY (userID)

--���÷����� �ε���
ALTER TABLE mixedTb1
	ADD CONSTRAINT uk_mixedTb1_name
	UNIQUE(name)

--Ȯ��
EXEC sp_helpindex mixedTb1

SELECT * 
FROM mixedTb1 WITH(NOLOCK)
