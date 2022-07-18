CREATE TABLE member_tbl_02(
	custno number(6) primary key,
	custname varchar2(20),
	phone varchar2(13),
	address varchar2 (60),
	joindate date,
	grade char(1),
	city char (2)
	);
CREATE TABLE money_tbl_02(
	custno number(6),
	salenol number(8),
	pcost number(8) ,			
	amount number(4),
	price number(8),
	pcode varchar2(4),
	sdate date,
	PRIMARY KEY(custno,salenol),
	FOREIGN KEY(custno) REFERENCES member_tbl_02(custno)
	);

CREATE SEQUENCE member_seq START WITH 100001;
INSERT INTO member_tbl_02 VALUES(member_seq.nextval,'���ູ','010-1111-2222','���� ���빮�� �ְ�1��','2015-12-02','A','01');
INSERT INTO member_tbl_02 VALUES(member_seq.nextval,'���ູ','010-1111-3333','���� ���빮�� �ְ�2��','2015-12-06','B','01');
INSERT INTO member_tbl_02 VALUES(member_seq.nextval,'�����','010-1111-4444','�︪�� �︪�� ����1��','2015-10-01','B','30');
INSERT INTO member_tbl_02 VALUES(member_seq.nextval,'�ֻ��','010-1111-5555','�︪�� �︪�� ����2��','2015-11-13','A','30');
INSERT INTO member_tbl_02 VALUES(member_seq.nextval,'����ȭ','010-1111-6666','���ֵ� ���ֽ� �ܳ�����','2015-12-25','B','60');
INSERT INTO member_tbl_02 VALUES(member_seq.nextval,'������','010-1111-7777','���ֵ� ���ֽ� ��������','2015-12-11','C','60');

INSERT INTO money_tbl_02 VALUES(100001,20160001,500,5,2500,'A001','2016-01-01');
INSERT INTO money_tbl_02 VALUES(100001,20160002,1000,4,4000,'A002','2016-01-01');
INSERT INTO money_tbl_02 VALUES(100001,20160003,500,3,1500,'A008',"2016-01-01');
INSERT INTO money_tbl_02 VALUES(100002,20160004,2000,1,2000,'A004','2016-01-03');
INSERT INTO money_tbl_02 VALUES(100002,20160005,500,1,500,'A001','2016-01-03');
INSERT INTO money_tbl_02 VALUES(100003,20160006,1500,2,3000,'A003','2016-01-03');
INSERT INTO money_tbl_02 VALUES(100004,20160007,500,2,1000,'A001','2016-01-04');
INSERT INTO money_tbl_02 VALUES(100004,20160008,300,1,300,'A005','2016-01-04');
INSERT INTO money_tbl_02 VALUES(100004,20160009,600,1,600,'A006','2016-01-04');
INSERT INTO money_tbl_02 VALUES(100004,20160010,3000,1,3000,'A007','2016-01-06');

SELECT * FROM MONEY_TBL_02;
SLEECT * FROM MEMBER_TBL_02; 

