/*
CUBE: ��Ǯ�� ���հ� �� ���� ���հ踦 ��� �� �� �ִ�. ROLLUP()�� ����� ����������
������ ������ �����͸� ����ϴ� �� �� �����ϴ�.
*/
USE sqlDB;
GO
CREATE TABLE cubeTb1(prodName NCHAR(3), color NCHAR(2), amount INT);
GO
INSERT INTO cubeTb1 VALUES('��ǻ��','����',11);
INSERT INTO cubeTb1 VALUES('��ǻ��','�Ķ�',22);
INSERT INTO cubeTb1 VALUES('�����','����',33);
INSERT INTO cubeTb1 VALUES('�����','�Ķ�',44);
GO
SELECT prodName, color, SUM(amount) as [�����հ�] FROM cubeTb1 WITH(NOLOCK)
GROUP BY CUBE (color,prodName);