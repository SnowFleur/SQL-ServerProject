USE sqlDB

/*
������ �泲 ����� Ű���� Ű�� ũ�ų� ���� ��� ����
*/
SELECT*
FROM DBO.userTB1
WHERE height >= ANY
(
SELECT height FROM dbo.userTB1 WHERE addr='�泲'
)