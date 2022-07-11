-- ex4 ���̺� ����
CREATE TABLE ex4(
    userId  VARCHAR2(10) PRIMARY KEY, --�⺻Ű ����
    passwd  VARCHAR2(10) NOT NULL
)


ALTER TABLE ex4 RENAME TO member;
--Į���߰�
ALTER TABLE member ADD salary NUMBER;

--������ ����
INSERT INTO  member (userId, passwd) VALUES ('sky2022', 'abc123');
INSERT INTO  member (userId, passwd, regDate, salary) VALUES ('smile2022', 'abc123', SYSDATE, 1000000);

-- ������ ����(UPDATE  ���̺�� SET Į����-�� WHERE ����)
UPDATE member SET salary = 2000000 WHERE userId = 'smaile2022';
UPDATE member SET salary = 1000000 WHERE userId = 'river2022';

--userId sky2022 ����� �޿� ������ �Է�
UPDATE member SET regDate = SYSDATE, salary = 300000 WHERE userId = 'sky2022';

-- ������ 1�� ����
DELETE FROM member WHERE userId = 'river2022';

COMMIT;
ROLLBACK;

ALTER TABLE member ADD regDate DATE;

-- ������ ��ȸ(���� / DESC-��������)
SELECT * FROM member ORDER BY salary DESC;

-- Ư�� ������ ��ȸ
SELECT regDate FROM member WHERE userId = 'river2022';

--���̺� ����
CREATE TABLE member2 AS
SELECT * FROM member;

--���̺� ����(DROP)
DROP TABLE member2;

-- ���̺� ����
DESC member;


