/*
����: ���̺��� ���� ������ ���� ���ؼ��� �׳� ������ SELECT* �� �ϴ¹���� COUNT()�Լ��� ����ϴ� ����� �ִ�.
��ǥ: Count()�Լ��� �׳� SELECT �Լ��� ���� ��, ���� �뷫 2�����̴�.
���: 
	 used Count()	2ms
	 used SELECT*	317ms
*/

USE AdventureWorks;
GO
SELECT* FROM Sales.Customer WITH(NOLOCK);
GO
SELECT COUNT(*) FROM Sales.Customer WITH(NOLOCK);

