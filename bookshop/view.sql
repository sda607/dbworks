-- ��(VIEW)
-- �ϳ� �̻��� ���̺��� ���Ͽ� ���� ������ ���̺�ν� ����
-- ���̺�ó�� ����� �� �ִ� �����ͺ��̽� ��ü
-- ������� - �ʿ��� ����ڿ��� ������ �����͸� ����(����)

-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ���弼��
CREATE VIEW VW_Customer
AS SELECT *
    FROM    customer
    WHERE address LIKE '%���ѹα�%';
    
-- ���̸����� �˻�
SELECT * 
FROM    VW_Customer;

--���� �̸��� �ֹ� ������ �̸��� ������ �˻��Ͻÿ�
CREATE VIEW vw_Orders AS
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE coustomer.custid = ordres.custid
AND book.bookid = orders.bookid;


-�� �˻�
SELECT * FROM   vw_Oredrs;
