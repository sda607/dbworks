
--시퀀스 생성
CREATE SEQUENCE mySeq
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 1000
NOCYCLE
NOCACHE;

--BOARD 테이블 생성
CREATE TABLE board(
    bno NUMBER(4) PRIMARY KEY,
    title VARCHAR2(50) NOT NULL,
    content VARCHAR2(2000) NOT NULL,
    regDate DATE DEFAULT SYSDATE
);

--게시글 추가
INSERT INTO board (bno, tittle, content, regDate)
VALUES (mySeq.NEXTVAL, '제목1', '제목1 내용입니다.', SYSDATE);
INSERT INTO board (bno, tittle, content, regDate)
VALUES (mySeq.NEXTVAL, '제목2', '제목2 내용입니다.', SYSDATE);

SELECT * FROM board; 

-- 게시글 3번의 글 수정
UPDATE board
SET title = 'hello', content = '감사합니다'
WHERE bno = 3;

--게시글 2번 삭제
DELETE FROM board
WHERE bno =2;
