USE tempdb
CREATE TABLE noClusterTb1
(
	userID	char(8) NOT NULL,
	name	nvarchar(10) NOT NULL
);

GO
-- �ش� ���̺� �� INSERT
INSERT INTO noClusterTb1 VALUES('LSG','�̽±�');
INSERT INTO noClusterTb1 VALUES('KBS','�����');
INSERT INTO noClusterTb1 VALUES('KKH','���ȣ');
INSERT INTO noClusterTb1 VALUES('JYP','������');
INSERT INTO noClusterTb1 VALUES('SSK','���ð�');
INSERT INTO noClusterTb1 VALUES('LJB','�����');
INSERT INTO noClusterTb1 VALUES('YJS','������');
INSERT INTO noClusterTb1 VALUES('EJW','������');
INSERT INTO noClusterTb1 VALUES('JKW','������');
INSERT INTO noClusterTb1 VALUES('BBK','�ٺ�Ŵ');


SELECT * FROM noClusterTb1 WITH(NOLOCK)


--����ũ ���� ������ ������ ��Ŭ������ �ε����� �����.
ALTER TABLE noClusterTb1
	ADD CONSTRAINT UK_nonClusterTb1_userID UNIQUE(userID)