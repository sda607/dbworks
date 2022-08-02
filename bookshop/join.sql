-- ���� : 1�� �̻��� ���̺��� ����
-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT *
FROM customer, orders
WHERE customer.cusid = orders.custid;

--���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻�
SELECT customer.name, orders.saleprice
FROM customer, orders
WHERE customer.cusid = orders.custid;

--'�Ȼ�' �ֹ�����
SELECT *
FROM customer, orders
WHERE customer.custid = orders.custid
AND customer.name = '�Ȼ�';

-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�, ������ ����
SELECT customer.name, SUM(saleprice) AS ���Ǹž�
FROM customer, orders
WHERE customer.custid = orders.custid
GROUP BY customer.name
ORDER BY customer.name;

-- ���� �̸��� �ֹ��� ������ �̸� �� ������ �˻��Ͻÿ�
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE customer.custid = orders.custid
AND book.bookid = orders.bookid;

-- ������ 20000���� ������ �ֹ��� ���� �̸��� ������ �̸��� �˻��Ͻÿ�
SELECT customer.name, book.bookname, orders.saleprice
FROM customer, orders, book
WHERE customer.custid = orders.custid
AND book.bookid = orders.bookid
AND book.price = 20000;

-- �ܺ� ����(outer join): ���� ������ ��Ȯ�� ��ġ���� �ʾƵ� ��� ����� ���
-- ������ �������� ���� ���� �����Ͽ�
-- ���� �̸��� ���� �ֹ��� ������ �Ǹ� ������ ���Ͻÿ�
SELECT customer.name, orders.saleprice
FROM customer LEFT OUTER JOIN orders
    ON customer.custid = orders.custid;

