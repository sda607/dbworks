-- ��������(�μ� ����)

SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price)FROM book);

--������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

SELECT *
FROM orders
WHERE custid = (SELECT custid FROM customer);
