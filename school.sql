--g �б� �����ͺ��̽�
-- �а� ���̺� ����
CREATE TABLE major(
    dname   VARCHAR2(30),   --�а���
    dtel    VARCHAR2(20),   --��ȭ��ȣ   
    location VARCHAR2(20),  --�繫�� ��ġ
    PRIMARY KEY(dname)
);

--  �а� �ڷ�
INSERT INTO major VALUES ('����Ʈ�����а�', '02-123-4565', 'B�� 3��');
INSERT INTO major VALUES ('ȭ�а��а�', '02-123-1165', 'B�� 1��');
INSERT INTO major VALUES ('�������ڰ��а�', '02-123-4322', 'B�� 2��');

-- ���� ���̺�
CREATE TABLE professor(
    pnumber NUMBER(3),
    pname   VARCHAR2(20),
    major   VARCHAR2(30),
    PRIMARY KEY(pnumber)
);
    



-- �л� ���̺� ����
CREATE TABLE student(
    snumber NUMBER(10) PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(3),
    gender  VARCHAR2(4),
    address VARCHAR2(30),
    dname   VARCHAR2(30) NOT NULL,
    PNUMBER NUMBER(3)NOT NULL,
    CONSTRAINT FK_major_std FOREIGN KEY(dname)
    REFERENCES major(dname),    --�ܷ�Ű - �а���
    CONSTRAINT FK_pro_std FOREIGN KEY(Pnumber)
    REFERENCES professor(pnumber)    --�ܷ�Ű - ������ȣ
    );

-- ���� ���̺� ����
INSERT INTO professor VALUES (301, '������', 'java ���α׷���');
INSERT INTO professor VALUES (401, '�۹̿�', 'JSP ���α׷���');
INSERT INTO professor VALUES (501, '����ö', '�����ͺ��̽�');

-- �л� �ڷ�
INSERT INTO student VALUES (20221234, '�̰�', 22, '��', '����� ���α�', '����Ʈ�����а�', 301);
INSERT INTO student VALUES (20221234, '�ڴ��', 25, '��', '����� ������', '���������а�', 301);
INSERT INTO student VALUES (20221234, '�Ѻ��', 23, '��', '����� ������', '����Ʈ�����а�', 301);
INSERT INTO student VALUES (20221234, '�����', 27, '��', '����� ���α�', 'ȭ�а��а�', 301);

-- �а� ��ü ��ȸ
SELECT * FROM major;

--���� ��ü ��ȸ
SELECT * FROM professor;

--�л� ��ü ��ȸ
SELECT * FROM student;

COMMIT;
ROLLBACK;

DELETE FROM professor WHERE pnumber = 301;

--�������� ����(����)
ALTER TABLE student DROP CONSTRAINT FK_pro_std;

--�������� �߰�
ALTER TABLE student ADD CONSTRAINT FK_pro_std;
