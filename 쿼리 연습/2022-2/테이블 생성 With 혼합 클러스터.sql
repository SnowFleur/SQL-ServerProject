USE tempdb;

CREATE TABLE mixedTb1
(
	userID	CHAR(8) NOT NULL,
	name	NCHAR(10) NOT NULL,
	addr	NCHAR(2)
);

GO
INSERT INTO mixedTb1 VALUES('LSG','이승기','서울');
INSERT INTO mixedTb1 VALUES('KBS','김범수','경남');
INSERT INTO mixedTb1 VALUES('KKH','김경호','전남');
INSERT INTO mixedTb1 VALUES('JYP','조용필','경기');
INSERT INTO mixedTb1 VALUES('SSK','성시경','서울');
INSERT INTO mixedTb1 VALUES('LJB','임재범','서울');
INSERT INTO mixedTb1 VALUES('YJS','윤종신','경남');
INSERT INTO mixedTb1 VALUES('EJW','은지원','경북');
INSERT INTO mixedTb1 VALUES('JKW','조관우','경기');
INSERT INTO mixedTb1 VALUES('BBK','바비킴','서울');

--클러스트 인덱스
ALTER TABLE mixedTb1
	ADD CONSTRAINT pk_mixedTb1_userID
	PRIMARY KEY (userID)

--넌컬러스터 인덱스
ALTER TABLE mixedTb1
	ADD CONSTRAINT uk_mixedTb1_name
	UNIQUE(name)

--확인
EXEC sp_helpindex mixedTb1

SELECT * 
FROM mixedTb1 WITH(NOLOCK)
