
-- ��� ���� ������ �˻��Ͻÿ�
SELECT *
FROM customer;

-- �ּҰ� ���ѹα��� ���� �̸��� ��ȭ��ȣ�� �˻�
SELERCT name, phone
FROM customer
WHERE address LIKE '%���ѹα�%';

-- ��ȭ ��ȣ�� ���� ���� �̸��� �ּҸ� �˻�
-- IS NULL ������ : ���� �ڷ�, IS NOT NULL : NULL�� �ƴ� �ڷ�
SELECT name, address
FROM customer
WHERE phone IS NULL;