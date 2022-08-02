--g 학교 데이터베이스
-- 학과 테이블 생성
CREATE TABLE major(
    dname   VARCHAR2(30),   --학과명
    dtel    VARCHAR2(20),   --전화번호   
    location VARCHAR2(20),  --사무실 위치
    PRIMARY KEY(dname)
);

--  학과 자료
INSERT INTO major VALUES ('소프트웨어학과', '02-123-4565', 'B동 3층');
INSERT INTO major VALUES ('화학공학과', '02-123-1165', 'B동 1층');
INSERT INTO major VALUES ('전기전자공학과', '02-123-4322', 'B동 2층');

-- 교수 테이블
CREATE TABLE professor(
    pnumber NUMBER(3),
    pname   VARCHAR2(20),
    major   VARCHAR2(30),
    PRIMARY KEY(pnumber)
);
    



-- 학생 테이블 생성
CREATE TABLE student(
    snumber NUMBER(10) PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(3),
    gender  VARCHAR2(4),
    address VARCHAR2(30),
    dname   VARCHAR2(30) NOT NULL,
    PNUMBER NUMBER(3)NOT NULL,
    CONSTRAINT FK_major_std FOREIGN KEY(dname)
    REFERENCES major(dname),    --외래키 - 학과명
    CONSTRAINT FK_pro_std FOREIGN KEY(Pnumber)
    REFERENCES professor(pnumber)    --외래키 - 교수번호
    );

-- 교수 테이블 생성
INSERT INTO professor VALUES (301, '박은종', 'java 프로그래밍');
INSERT INTO professor VALUES (401, '송미영', 'JSP 프로그래밍');
INSERT INTO professor VALUES (501, '오용철', '데이터베이스');

-- 학생 자료
INSERT INTO student VALUES (20221234, '이강', 22, '여', '서울시 구로구', '소프트웨어학과', 301);
INSERT INTO student VALUES (20221234, '박대양', 25, '남', '서울시 성동구', '전기전자학과', 301);
INSERT INTO student VALUES (20221234, '한비야', 23, '여', '서울시 강남구', '소프트웨어학과', 301);
INSERT INTO student VALUES (20221234, '정산들', 27, '여', '서울시 구로구', '화학공학과', 301);

-- 학과 전체 조회
SELECT * FROM major;

--교수 전체 조회
SELECT * FROM professor;

--학생 전체 조회
SELECT * FROM student;

COMMIT;
ROLLBACK;

DELETE FROM professor WHERE pnumber = 301;

--제약조건 삭제(변경)
ALTER TABLE student DROP CONSTRAINT FK_pro_std;

--제약조건 추가
ALTER TABLE student ADD CONSTRAINT FK_pro_std;
