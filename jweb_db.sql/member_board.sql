
--ȸ�����̺����

CREATE TABLE t_member(
    memberid    VARCHAR2(20) PRIMARY KEY,
    passwd      VARCHAR2(20) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(10),
    joindate    DATE DEFAULT SYSDATE
    );
    
    INSERT INTO t_member VALUES ('cloud', 'm12345', 'ȫ����', '��', SYSDATE);
    
    select * from t_member;
    