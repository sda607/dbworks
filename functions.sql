-- 내장 함수 - 함수 이름(매개변수)
-- 숫자 관련 함수
-- dual은 오라클에서 사용하는 가사 테이블임
--절대값 구하기
SELECT ABS(-10)
FROM dual;

--3.975 소수 첫번째자리 반올림
SELECT  ROUND(3.876, 1)
FROM dual;

-- salary를 30일로 나눈 후 소수 자리수에 따라 절삭한 값 출력
SELECT salary,
        salary/30 일급,
        TRUNC(salary/30, 1) 결과1,
        TRUNC(salary/30, 0)결과2
FROM employee;

-- 3.875 소수 첫째자리 반올림
SELECT ROUND(3.876, 1)결과1,
        ROUND(3.876, 0)결과2,
        ROUND(16.876, -1)결과3
        FROM dual;
        
-- 문자 관련 함수
SELECT LPAD('cloud', 10, '*') FROM dual;

--부서 이름에서 처음부터 시작해서 두 개의 문자 출력
SELECT SUBSTR(deptname, 1, 2) 팀명
FROM department;

--도서 제목에 야구가 포함된 도서를 농구로 변경
SELECT bookid,
        REPLACE(bookname, '야구', '농구') bookname
FROM book;

-- 굿스포츠에서 출판한 도서의 제목과 글자수를 검색하시오
SELECT bookname 제목,
        LENGTH(bookname) 글자수
FROM book
WHERE publisher = '굿스포츠';

-- 고객 이름에서 같은 성을 가진 사람의 인원수 구하시오.
SELECT SUBSTR(name, 1, 1) 성,
        COUNT(*) 인원
FROM customer
GROUP BY SUBSTR(name, 1, 1);

-- 날짜, 시간 함수
-- 서점은 주문일로부터 10일 후 매출을 확정한다. 각 주문의 확정일자를 구하시오
-- 날짜에서 일수를 더 할때 : date + 일수
SELECT orderid 주문번호,
        orderdate 주문일,
        orderate + 10 확정
FROM orders;
WHERE orederid <= 5;

-- 주문번호가 6에서 10사이인 도서의 주문일에 3개월을 더한 값을 구하시오.
-- 개월 더하기 : ADD_MONTHs()

SELEC
  orderid 주분번호. orderdate 주문일,
    ADD_MONTHS(orderate, 3) 더하기결과
Fromm orders
WHERE orderid   BEETWEEN 6 AND 10;

//
--select oredrid 주문번호, loderdatd 주문일, SYSDATE 현재일,
--    TRU
--자동 타입 변환
SELECT 1 + '2'
FROM dual;

--수동 타입 변환
SELECT TO_NUMBER('250')
FROM dual;

--날짜 형식 : 날짜 문자열 지정 형식의 날짜 타입으로 변환
-- To_DATE(문자열, 날짜형식)
SELECT TO_DATE('2022-06-30', 'YYYY-MM-DD')
FROM dual;

--날짜를 문자 형식으로 변환
SELECT TO_CHAR(SYSDATE, 'YY')년도,
        TO_CHAR(SYSDATE, 'YYYY')년도_4,
        TO_CHAR(SYSDATE, 'MM')월,
FROM dual;

--시간을 문자 형식으로 변환
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') 시간,
        TO_CHAR(SYSDATE, 'YYYY-MM-DD HH:MI:SS') 날짜와 시간
FROM dual;



        