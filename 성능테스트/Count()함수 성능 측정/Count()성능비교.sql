/*
개요: 테이블의 행의 개수를 세기 위해서는 그냥 간단히 SELECT* 을 하는방법과 COUNT()함수를 사용하는 방법이 있다.
목표: Count()함수와 그냥 SELECT 함수의 성능 비교, 행은 대략 2만개이다.
결과: 
	 used Count()	2ms
	 used SELECT*	317ms
*/

USE AdventureWorks;
GO
SELECT* FROM Sales.Customer WITH(NOLOCK);
GO
SELECT COUNT(*) FROM Sales.Customer WITH(NOLOCK);

