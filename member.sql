-- ex4 테이블 생성
CREATE TABLE ex4(
    userId  VARCHAR2(10) PRIMARY KEY, --기본키 선언
    passwd  VARCHAR2(10) NOT NULL
)


ALTER TABLE ex4 RENAME TO member;
--칼럼추가
ALTER TABLE member ADD salary NUMBER;

--데이터 삽입
INSERT INTO  member (userId, passwd) VALUES ('sky2022', 'abc123');
INSERT INTO  member (userId, passwd, regDate, salary) VALUES ('smile2022', 'abc123', SYSDATE, 1000000);

-- 데이터 수정(UPDATE  테이블명 SET 칼럼명-값 WHERE 조건)
UPDATE member SET salary = 2000000 WHERE userId = 'smaile2022';
UPDATE member SET salary = 1000000 WHERE userId = 'river2022';

--userId sky2022 등록일 급여 데이터 입력
UPDATE member SET regDate = SYSDATE, salary = 300000 WHERE userId = 'sky2022';

-- 데이터 1개 삭제
DELETE FROM member WHERE userId = 'river2022';

COMMIT;
ROLLBACK;

ALTER TABLE member ADD regDate DATE;

-- 데이터 조회(정렬 / DESC-내림차순)
SELECT * FROM member ORDER BY salary DESC;

-- 특정 조건을 조회
SELECT regDate FROM member WHERE userId = 'river2022';

--테이블 복사
CREATE TABLE member2 AS
SELECT * FROM member;

--테이블 삭제(DROP)
DROP TABLE member2;

-- 테이블 구조
DESC member;


