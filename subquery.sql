-- ��������(�μ� ����)

SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price)FROM book);

--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);
--������ �ֹ�����
SELECT *
FROM orders
WHERE custid = (SELECT custid FROM customer WHERE name='������');

--�̻� �̵��� ������ ������ ������ ���� �̸��� �˻��Ͻÿ�
SELECT name
FROM customer
WHERE custid IN (SELECT custid
                    FROM orders
                    WHERE bookid IN(SELECT bookid
                                    FROM book
                                    WHERE publisher='�̻�̵��'));
                                    
--Ʃ�� ���� : ���̺��� �̸��� ��Ī
SELECT b1.booknamee
FROM book b1
WHERE b1.price > (SELECT AVG(b2.price)
                    FROM book b2
                    WHERE b2.publisher = b1.publisher);
                    
-- �ζ��� �� : FROM �μ� ����
-- �� ��ȣ�� 2������ ���� �Ǹž��� �˻��Ͻÿ�
SELECT cs.name, SUM(od.saleprice) AS total
FROM (SELECT custid, name
        FROM customer
        WHERE custid <=2) cs,
        orders od
WHERE cs.custid = od.custid     
GROUP BY cs.name;
