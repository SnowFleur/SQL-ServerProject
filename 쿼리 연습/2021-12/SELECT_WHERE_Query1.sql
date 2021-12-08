USE sqlDB

/*
지역이 경남 사람의 키보다 키가 크거나 같은 사람 추출
*/
SELECT*
FROM DBO.userTB1
WHERE height >= ANY
(
SELECT height FROM dbo.userTB1 WHERE addr='경남'
)