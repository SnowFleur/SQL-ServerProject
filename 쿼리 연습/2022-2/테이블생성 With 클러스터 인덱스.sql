USE tempdb

-- 테이블을 생성한다.
CREATE TABLE clusterTb1
(
	userID	char(8)	 NOT NULL,
	name	nvarchar(10) NOT NULL
);

GO

-- 해당 테이블에 값 INSERT
INSERT INTO clusterTb1 VALUES('LSG','이승기');
INSERT INTO clusterTb1 VALUES('KBS','김범수');
INSERT INTO clusterTb1 VALUES('KKH','김경호');
INSERT INTO clusterTb1 VALUES('JYP','조용필');
INSERT INTO clusterTb1 VALUES('SSK','성시경');
INSERT INTO clusterTb1 VALUES('LJB','임재범');
INSERT INTO clusterTb1 VALUES('YJS','윤종신');
INSERT INTO clusterTb1 VALUES('EJW','은지원');
INSERT INTO clusterTb1 VALUES('JKW','조관우');
INSERT INTO clusterTb1 VALUES('BBK','바비킴');

-- 조회
SELECT *  FROM clusterTb1 WITH(NOLOCK)

-- 테이블의 구조를 바꿀 때 사용
-- 프라이머리 키를 지정하면 클러스터 형 인덱스로 구성이된다.
ALTER TABLE clusterTb1
	ADD	CONSTRAINT PK_clusterTb1_userID PRIMARY KEY(userID)




