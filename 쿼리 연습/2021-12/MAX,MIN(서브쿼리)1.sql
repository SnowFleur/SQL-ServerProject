/*
���������� ����ؼ� ���� ū Ű�� ���� ����� ���� ���� Ű�� ���� ����� ����
*/

USE sqlDB
SELECT Name 
FROM userTB1
WHERE height= (SELECT MAX(height) FROM userTB1 WITH(NOLOCK))
OR
height=(SELECT MIN(height) FROM userTB1 WITH(NOLOCK))



