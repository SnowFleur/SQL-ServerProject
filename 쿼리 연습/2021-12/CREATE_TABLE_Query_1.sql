--USE tempdb
--GO
--CREATE DATABASE sqlDB;
--GO

/*
CHAR, VARCHAR : ������ �߿��� Ȯ���� �ѱ��� ������� �ʴ´ٸ� ��밡��
NCHAR, NVARCHAR: �ѱ��� �� ���� �ִٸ� ���
DATE: SQL Server 2008���� ���� �� ���� ���������� DATETIME�� ����ؾ���
*/

USE sqlDB
CREATE TABLE userTB1 --ȸ�� ���̺�
(
userID		CHAR(8) NOT NULL PRIMARY KEY,	--����� ���̵�(�⺻Ű)
name		NVARCHAR(10) NOT NULL,			--�̸�
birthYear	INT NOT NULL,					--����⵵
addr		NCHAR(2) NOT NULL,				--����(����, ���, ���, �泲..)
mobile1		CHAR(3)	NOT NULL,				--�޴��� ����(010,011)
mobile2		CHAR(8),						--������ ���ڸ�
height		SMALLINT,						--Ű
mData		DATE							--ȸ�� ������
);
go
CREATE TABLE buyTb1	--ȸ�� ���� ���̺�
(
num	INT	IDENTITY NOT NULL PRIMARY KEY,		--����(PK)		//�⺻Ű
userID CHAR(8) NOT NULL						--���̵�(FK)	//�ܷ�Ű
FOREIGN KEY REFERENCES userTB1(userID),
prodName	NCHAR(6) NOT NULL,				--ǰ����
groupName	NCHAR(4),						--�з�
price		INT NOT NULL,					--�ܰ�
amount		SMALLINT NOT NULL				--����
);
go
