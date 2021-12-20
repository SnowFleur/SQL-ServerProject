/*
CUBE: 물풀별 소합계 및 색상별 소합계를 모두 볼 수 있다. ROLLUP()과 비슷한 개념이지만
다차원 정보의 데이터를 요약하는 데 더 적당하다.
*/
USE sqlDB;
GO
CREATE TABLE cubeTb1(prodName NCHAR(3), color NCHAR(2), amount INT);
GO
INSERT INTO cubeTb1 VALUES('컴퓨터','검정',11);
INSERT INTO cubeTb1 VALUES('컴퓨터','파랑',22);
INSERT INTO cubeTb1 VALUES('모니터','검정',33);
INSERT INTO cubeTb1 VALUES('모니터','파랑',44);
GO
SELECT prodName, color, SUM(amount) as [수량합계] FROM cubeTb1 WITH(NOLOCK)
GROUP BY CUBE (color,prodName);