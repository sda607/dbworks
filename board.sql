
--������ ����
CREATE SEQUENCE mySeq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

--BOARD ���̺� ����
CREATE TABLE board(
    bno NUMBER(4) PRIMARY KEY,
    title VARCHAR2(50) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regDate DATE DEFAULT SYSDATE
);

--�Խñ� �߰�
INSERT INTO board (bno, tittle, content, regDate)
VALUES (mySeq.NEXTVAL, '����1', '����1 �����Դϴ�.', SYSDATE);
INSERT INTO board (bno, tittle, content, regDate)
VALUES (mySeq.NEXTVAL, '����2', '����2 �����Դϴ�.', SYSDATE);

SELECT * FROM board; 

-- �Խñ� 3���� �� ����
UPDATE board
SET title = 'hello', content = '�����մϴ�'
WHERE bno = 3;

--�Խñ� 2�� ����
DELETE FROM board
WHERE bno =2;
