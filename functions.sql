-- ���� �Լ� - �Լ� �̸�(�Ű�����)
-- ���� ���� �Լ�
-- dual�� ����Ŭ���� ����ϴ� ���� ���̺���
--���밪 ���ϱ�
SELECT ABS(-10)
FROM dual;

--3.975 �Ҽ� ù��°�ڸ� �ݿø�
SELECT  ROUND(3.876, 1)
FROM dual;

-- salary�� 30�Ϸ� ���� �� �Ҽ� �ڸ����� ���� ������ �� ���
SELECT salary,
        salary/30 �ϱ�,
        TRUNC(salary/30, 1) ���1,
        TRUNC(salary/30, 0)���2
FROM employee;

-- 3.875 �Ҽ� ù°�ڸ� �ݿø�
SELECT ROUND(3.876, 1)���1,
        ROUND(3.876, 0)���2,
        ROUND(16.876, -1)���3
        FROM dual;
        
-- ���� ���� �Լ�
SELECT LPAD('cloud', 10, '*') FROM dual;

--�μ� �̸����� ó������ �����ؼ� �� ���� ���� ���
SELECT SUBSTR(deptname, 1, 2) ����
FROM department;

--���� ���� �߱��� ���Ե� ������ �󱸷� ����
SELECT bookid,
        REPLACE(bookname, '�߱�', '��') bookname
FROM book;

-- �½��������� ������ ������ ����� ���ڼ��� �˻��Ͻÿ�
SELECT bookname ����,
        LENGTH(bookname) ���ڼ�
FROM book
WHERE publisher = '�½�����';

-- �� �̸����� ���� ���� ���� ����� �ο��� ���Ͻÿ�.
SELECT SUBSTR(name, 1, 1) ��,
        COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);

-- ��¥, �ð� �Լ�
-- ������ �ֹ��Ϸκ��� 10�� �� ������ Ȯ���Ѵ�. �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�
-- ��¥���� �ϼ��� �� �Ҷ� : date + �ϼ�
SELECT orderid �ֹ���ȣ,
        orderdate �ֹ���,
        orderate + 10 Ȯ��
FROM orders;
WHERE orederid <= 5;

-- �ֹ���ȣ�� 6���� 10������ ������ �ֹ��Ͽ� 3������ ���� ���� ���Ͻÿ�.
-- ���� ���ϱ� : ADD_MONTHs()

SELEC
  orderid �ֺй�ȣ. orderdate �ֹ���,
    ADD_MONTHS(orderate, 3) ���ϱ���
Fromm orders
WHERE orderid   BEETWEEN 6 AND 10;

//
--select oredrid �ֹ���ȣ, loderdatd �ֹ���, SYSDATE ������,
--    TRU
--�ڵ� Ÿ�� ��ȯ
SELECT 1 + '2'
FROM dual;

--���� Ÿ�� ��ȯ
SELECT TO_NUMBER('250')
FROM dual;

--��¥ ���� : ��¥ ���ڿ� ���� ������ ��¥ Ÿ������ ��ȯ
-- To_DATE(���ڿ�, ��¥����)
SELECT TO_DATE('2022-06-30', 'YYYY-MM-DD')
FROM dual;

--��¥�� ���� �������� ��ȯ
SELECT TO_CHAR(SYSDATE, 'YY')�⵵,
        TO_CHAR(SYSDATE, 'YYYY')�⵵_4,
        TO_CHAR(SYSDATE, 'MM')��,
FROM dual;

--�ð��� ���� �������� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') �ð�,
        TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') ��¥�� �ð�
FROM dual;



        