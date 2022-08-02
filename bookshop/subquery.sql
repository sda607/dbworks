-- 서브쿼리(부속 질의)

SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price)FROM book);

--도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid IN(SELECT custid FROM orders);

SELECT *
FROM orders
WHERE custid = (SELECT custid FROM customer);
