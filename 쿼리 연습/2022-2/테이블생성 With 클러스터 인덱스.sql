USE tempdb

-- ���̺��� �����Ѵ�.
CREATE TABLE clusterTb1
(
	userID	char(8)	 NOT NULL,
	name	nvarchar(10) NOT NULL
);

GO

-- �ش� ���̺� �� INSERT
INSERT INTO clusterTb1 VALUES('LSG','�̽±�');
INSERT INTO clusterTb1 VALUES('KBS','�����');
INSERT INTO clusterTb1 VALUES('KKH','���ȣ');
INSERT INTO clusterTb1 VALUES('JYP','������');
INSERT INTO clusterTb1 VALUES('SSK','���ð�');
INSERT INTO clusterTb1 VALUES('LJB','�����');
INSERT INTO clusterTb1 VALUES('YJS','������');
INSERT INTO clusterTb1 VALUES('EJW','������');
INSERT INTO clusterTb1 VALUES('JKW','������');
INSERT INTO clusterTb1 VALUES('BBK','�ٺ�Ŵ');

-- ��ȸ
SELECT *  FROM clusterTb1 WITH(NOLOCK)

-- ���̺��� ������ �ٲ� �� ���
-- �����̸Ӹ� Ű�� �����ϸ� Ŭ������ �� �ε����� �����̵ȴ�.
ALTER TABLE clusterTb1
	ADD	CONSTRAINT PK_clusterTb1_userID PRIMARY KEY(userID)




