
-- 모든 고객의 정보를 검색하시오
SELECT *
FROM customer;

-- 주소가 대한민국인 고객의 이름과 전화번호를 검색
SELERCT name, phone
FROM customer
WHERE address LIKE '%대한민국%';

-- 전화 번호가 없는 고객의 이름과 주소를 검색
-- IS NULL 연산자 : 없는 자료, IS NOT NULL : NULL이 아닌 자료
SELECT name, address
FROM customer
WHERE phone IS NULL;