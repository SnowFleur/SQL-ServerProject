USE tempDB

--SELECT * INTO bigTbl1 FROM AdventureWorks.Sales.SalesOrderDetail;
--GO
--SELECT * INTO bigTbl2 FROM AdventureWorks.Sales.SalesOrderDetail;
--GO
--SELECT * INTO bigTbl3 FROM AdventureWorks.Sales.SalesOrderDetail;

/*
�Ʒ� 3���� ���� ��� ���̺��� ���� �����Ѵ�.(DROP�� ���̺� ��ü)
- DELETE �� ���� �����ɸ�(Ʈ����� �α׸� ����ϴ� �۾� ����)
- DROP�� Ʈ������� �߻���Ű�� �ʱ� ������ ������.
- TRUNCATE�� ȿ���� DELETE�� ���������� Ʈ����� �α׸� ������� �ʱ� ������ ������. 
*/

--DELETE FROM bigTbl1;		--�ุ ����(���̺��� ��������)
--GO
--DROP TABLE bigTbl2;		-- ���̺� ��ü�� �����
--GO
--TRUNCATE TABLE bigTbl3;	--�ุ ����(���̺��� ��������)

