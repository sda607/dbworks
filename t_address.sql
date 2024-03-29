-- t_address 테이블 생성
CREATE TABLE t_address(
    num         NUMBER(4),
    username    VARCHAR2(20),
    tel         VARCHAR2(20) NOT NULL,
    email       VARCHAR2(30) NOT NULL,
    gender      VARCHAR2(6), 
    joinDate    DATE DEFAULT SYSDATE,
    PRIMARY KEY(num)
);
-- 일련번호(시퀀스) 생성
CREATE SEQUENCE ab_seq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

-- 자료 추가
INSERT INTO t_address(num, username, tel, email, gender, joinDate)
VALUES (ab_seq.NEXTVAL, '윤미혜', '010-1234-5678', 'test@hi.com', '남', SYSDATE);

SELECT * FROM t_address;
----------------------------------
SELECT table_name,constraint_name
FROM user_constraints;

DROP TABLE t_address;
