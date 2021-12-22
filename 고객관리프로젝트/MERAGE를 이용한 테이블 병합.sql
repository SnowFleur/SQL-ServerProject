/*
MERGE 구문의 활용
*/

USE sqlDB

/*
회원의 정보에 변경이 생기면 그 값이 저장될 테이블
*/
CREATE TABLE ChangeTBL
(
	changeType NCHAR(4),	--변경 사유
	userID CHAR(8),
	name NVARCHAR(10),
	addr NCHAR(2)
);
GO
INSERT INTO ChangeTBL VALUES
	('신규가입','CHO','초아','미국'),
	('주소변경','LSG',null,'제주'),
	('주소변경','LJB',null,'영국'),
	('회원탈퇴','BBK',null,null),
	('회원탈퇴','SSK',null,null);

GO


/*
변경사항에 의해 기존 테이블과 병합(MERGE)
*/

MERGE memberTBL AS M	-- 변경될 테이블(target)
USING changeTBL AS C	-- 변경할 기준이 되는 테이블(source)
ON M.userID = C.userID	-- userID를 기준으로 두 테이블을 비교한다.

-- target 테이블에 source 테이블의 행이 없고 사유가 '신규가입' 이라면 행을 추가한다.
WHEN NOT MATCHED AND changeType='신규가입' THEN
	INSERT VALUES(C.userID,C.name,C.addr)

-- target 테이블에 source 테이블의 행이 있고, 사유가 '주소변경'이라면 주소를 변경한다.
WHEN MATCHED AND changeType='주소변경' THEN
	UPDATE SET M.addr=C.addr

-- target 테이블에 source 테이블의 행이 있고 사유가 '회원탈퇴' 라면 행을 삭제한다.
WHEN MATCHED AND ChangeType='회원탈퇴' THEN
	DELETE;






