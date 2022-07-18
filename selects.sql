select * from member_tbl_02;
select * from money_tbl_02;

-- ȸ������ ���ΰ� group by
step 1) ȸ���� �����հ�
SELECT custno, sum(price) FROM MONEY_TBL_02 mt
GROUP BY CUSTNO;

step 2) ���� ���� Ȯ���ϱ�
SELECT custno, sum(price) asum FROM MONEY_TBL_02 mt
GROUP BY CUSTNO
ORDER BY asum desc;

step 3) custno �÷����� ����2) �� �����̺� �����Ͽ� ������ ��ü �������� 
SELECT * FROM MEMBER_TBL_02 mt ,
		(SELECT custno, sum(price) AS asum FROM MONEY_TBL_02 mt
		GROUP BY CUSTNO
		ORDER BY asum desc) sale
WHERE mt.custno = sale.custno;
--�Ǵ�
SELECT * FROM MEMBER_TBL_02 mt JOIN
		(SELECT custno, sum(price) AS asum FROM MONEY_TBL_02 mt
		GROUP BY CUSTNO
		ORDER BY asum desc) sale
ON mt.custno = sale.custno ; 

decode(grade,'A','VIP','B','�Ϲ�','C','����')

step4) �䱸���׿� ���� �ʿ��� �÷��� ��ȸ�ϱ� 
SELECT mt.CUSNO , CUSTNAME,
		decode(mt.grade,'A','VIP','B','�Ϲ�','C','����') AS agrade,
		sale.asum FROM MEMBER_TBL_02 mt,
		(SELECT custno, sum(price) AS asum FROM MONEY_TBL_02
		GROUP BY CUSTNO
		ORDER BY asum desc) sale
WHERE mt.CUSTNO = sale.CUSTNO ;

