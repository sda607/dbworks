-- ���̺� ex2 ����
CREATE TABLE ex2(
    col_date    DATE,       --�� �� ��
    col_timestamp   TIMESTAMP--�� �� �� �� �� ��
)

-- ���̺� ex3 ����
CREATE TABLE ex3(
    col_null    VARCHAR2(10),
    col_not_null VARCHAR2(10) NOT NULL
)

-- ������ EX3 �Է�
INSERT INTO ex3 VALUES ('gello', '') --�����߻�
INSERT INTO ex3 VALUES ('', 'Hello')

-- ������ �Է�(���糯¥ - SYSDATE)
INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);

COMMIT;

-- ������ ��ȸ
SELECT * FROM ex3;
