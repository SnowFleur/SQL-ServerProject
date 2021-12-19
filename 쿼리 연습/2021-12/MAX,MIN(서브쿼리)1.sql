/*
서브쿼리를 사용해서 가장 큰 키를 가진 사람과 가장 작은 키를 가진 사람을 추출
*/

USE sqlDB
SELECT Name 
FROM userTB1
WHERE height= (SELECT MAX(height) FROM userTB1 WITH(NOLOCK))
OR
height=(SELECT MIN(height) FROM userTB1 WITH(NOLOCK))



