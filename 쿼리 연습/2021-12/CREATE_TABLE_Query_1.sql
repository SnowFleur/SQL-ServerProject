--USE tempdb
--GO
--CREATE DATABASE sqlDB;
--GO

/*
CHAR, VARCHAR : 문자형 중에서 확실히 한글을 사용하지 않는다면 사용가능
NCHAR, NVARCHAR: 한글이 들어갈 수도 있다면 사용
DATE: SQL Server 2008부터 지원 그 이전 버전에서는 DATETIME을 사용해야함
*/

USE sqlDB
CREATE TABLE userTB1 --회원 테이블
(
userID		CHAR(8) NOT NULL PRIMARY KEY,	--사용자 아이디(기본키)
name		NVARCHAR(10) NOT NULL,			--이름
birthYear	INT NOT NULL,					--출생년도
addr		NCHAR(2) NOT NULL,				--지역(서울, 경기, 경북, 경남..)
mobile1		CHAR(3)	NOT NULL,				--휴대폰 국번(010,011)
mobile2		CHAR(8),						--나머지 뒷자리
height		SMALLINT,						--키
mData		DATE							--회원 가입일
);
go
CREATE TABLE buyTb1	--회원 구매 테이블
(
num	INT	IDENTITY NOT NULL PRIMARY KEY,		--순번(PK)		//기본키
userID CHAR(8) NOT NULL						--아이디(FK)	//외래키
FOREIGN KEY REFERENCES userTB1(userID),
prodName	NCHAR(6) NOT NULL,				--품질명
groupName	NCHAR(4),						--분류
price		INT NOT NULL,					--단가
amount		SMALLINT NOT NULL				--수량
);
go
