/*
* 문제 
 - 상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량을 총주문량이 작은 순서대로 조회하는 SQL 문을 작성해주세요. 이때 총주문량을 나타내는 컬럼명은 TOTAL_ORDER로 지정해주세요

* FIRST_HALF 테이블
 - SHIPMENT_ID (INT) : 출하번호
 - FLAVOR (VARCHAR) : 아이스크림 맛
 - TOTAL_ORDER (INT) : 상반기 아이스크림 총 주문량
* ICECREAM_INFO 테이블
 - FLAVOR (VARCHAR, FIRST_HALF의 외래키) : 아이스크림 맛 
 - INGREDIENT_TYPE (VARCHAR) : 아이스크림의 성분
*/

-- 첫 번째 풀이
SELECT  I.INGREDIENT_TYPE, sum(F.TOTAL_ORDER) TOTAL_ORDER 
FROM FIRST_HALF F
JOIN ICECREAM_INFO I on F.FLAVOR =  I.FLAVOR
GROUP BY INGREDIENT_TYPE
ORDER BY TOTAL_ORDER ASC

-- 다른 사람 풀이 (JOIN 사용 x)
SELECT B.INGREDIENT_TYPE, SUM(A.TOTAL_ORDER) AS TOTAL_ORDER 
FROM FIRST_HALF AS A, ICECREAM_INFO AS B
WHERE A.FLAVOR = B.FLAVOR
GROUP BY B.INGREDIENT_TYPE
ORDER BY TOTAL_ORDER ASC

