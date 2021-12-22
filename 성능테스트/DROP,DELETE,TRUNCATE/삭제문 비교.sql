USE tempDB

--SELECT * INTO bigTbl1 FROM AdventureWorks.Sales.SalesOrderDetail;
--GO
--SELECT * INTO bigTbl2 FROM AdventureWorks.Sales.SalesOrderDetail;
--GO
--SELECT * INTO bigTbl3 FROM AdventureWorks.Sales.SalesOrderDetail;

/*
아래 3개의 구문 모두 테이블의 행을 삭제한다.(DROP은 테이블 자체)
- DELETE 가 가장 오래걸림(트랜잭션 로그를 기록하는 작업 때문)
- DROP은 트랜잭션을 발생시키지 않기 때문에 빠르다.
- TRUNCATE의 효과는 DELETE와 동일하지만 트랜잭션 로그를 기록하지 않기 때문에 빠르다. 
*/

--DELETE FROM bigTbl1;		--행만 지움(테이블은 남아있음)
--GO
--DROP TABLE bigTbl2;		-- 테이블 자체가 사라짐
--GO
--TRUNCATE TABLE bigTbl3;	--행만 지움(테이블은 남아있음)

