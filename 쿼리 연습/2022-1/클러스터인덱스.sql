/*
- 테이블에 클러스터 인덱스를 만들어보자
*/
USE tempdb

CREATE TABLE userTb5
(
	UserID	CHAR(8)	NOT NULL	PRIMARY KEY,
	Name	NVARCHAR(10)	NOT NULL,
	BirthYear	INT NOT NULL,
	Addr	NCHAR(2)	NOT NULL
)
GO

INSERT INTO userTb5 VALUES('LSG','이승기',1987,'서울')
INSERT INTO userTb5 VALUES('KBS','김범수',1979,'경남')
INSERT INTO userTb5 VALUES('KKH','김경호',1971,'전남')
INSERT INTO userTb5 VALUES('JYP','조용필',1950,'경기')
INSERT INTO userTb5 VALUES('SSK','성시경',1979,'서울')
GO

SELECT * FROM userTb5 WITH(NOLOCK)
EXEC sp_helpindex userTb5
