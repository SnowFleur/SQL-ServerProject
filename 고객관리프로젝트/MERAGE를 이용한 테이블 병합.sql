/*
MERGE ������ Ȱ��
*/

USE sqlDB

/*
ȸ���� ������ ������ ����� �� ���� ����� ���̺�
*/
CREATE TABLE ChangeTBL
(
	changeType NCHAR(4),	--���� ����
	userID CHAR(8),
	name NVARCHAR(10),
	addr NCHAR(2)
);
GO
INSERT INTO ChangeTBL VALUES
	('�ű԰���','CHO','�ʾ�','�̱�'),
	('�ּҺ���','LSG',null,'����'),
	('�ּҺ���','LJB',null,'����'),
	('ȸ��Ż��','BBK',null,null),
	('ȸ��Ż��','SSK',null,null);

GO


/*
������׿� ���� ���� ���̺�� ����(MERGE)
*/

MERGE memberTBL AS M	-- ����� ���̺�(target)
USING changeTBL AS C	-- ������ ������ �Ǵ� ���̺�(source)
ON M.userID = C.userID	-- userID�� �������� �� ���̺��� ���Ѵ�.

-- target ���̺� source ���̺��� ���� ���� ������ '�ű԰���' �̶�� ���� �߰��Ѵ�.
WHEN NOT MATCHED AND changeType='�ű԰���' THEN
	INSERT VALUES(C.userID,C.name,C.addr)

-- target ���̺� source ���̺��� ���� �ְ�, ������ '�ּҺ���'�̶�� �ּҸ� �����Ѵ�.
WHEN MATCHED AND changeType='�ּҺ���' THEN
	UPDATE SET M.addr=C.addr

-- target ���̺� source ���̺��� ���� �ְ� ������ 'ȸ��Ż��' ��� ���� �����Ѵ�.
WHEN MATCHED AND ChangeType='ȸ��Ż��' THEN
	DELETE;






