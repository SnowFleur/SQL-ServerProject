USE tempdb
CREATE TABLE noClusterTb1
(
	userID	char(8) NOT NULL,
	name	nvarchar(10) NOT NULL
);

GO
-- 해당 테이블에 값 INSERT
INSERT INTO noClusterTb1 VALUES('LSG','이승기');
INSERT INTO noClusterTb1 VALUES('KBS','김범수');
INSERT INTO noClusterTb1 VALUES('KKH','김경호');
INSERT INTO noClusterTb1 VALUES('JYP','조용필');
INSERT INTO noClusterTb1 VALUES('SSK','성시경');
INSERT INTO noClusterTb1 VALUES('LJB','임재범');
INSERT INTO noClusterTb1 VALUES('YJS','윤종신');
INSERT INTO noClusterTb1 VALUES('EJW','은지원');
INSERT INTO noClusterTb1 VALUES('JKW','조관우');
INSERT INTO noClusterTb1 VALUES('BBK','바비킴');


SELECT * FROM noClusterTb1 WITH(NOLOCK)


--유니크 제약 조건을 넣으면 비클러스터 인덱스가 생긴다.
ALTER TABLE noClusterTb1
	ADD CONSTRAINT UK_nonClusterTb1_userID UNIQUE(userID)