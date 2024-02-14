/*
* 문제
2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문을 작성해주세요. 
결과는 카테고리명을 기준으로 오름차순 정렬해주세요.
*/

-- 첫 번째 풀이 (JOIN 사용)
SELECT B.CATEGORY CATEGORY, sum(S.SALES) TOTAL_SALES
FROM BOOK_SALES S JOIN BOOK B ON B.BOOK_ID = S.BOOK_ID
WHERE S.SALES_DATE LIKE '2022-01-%'
GROUP BY B.CATEGORY 
ORDER BY B.CATEGORY

-- 두 번쨰 풀이 (USING 사용)
SELECT B.CATEGORY CATEGORY, sum(S.SALES) TOTAL_SALES
FROM BOOK_SALES S JOIN BOOK B 
USING (BOOK_ID)
WHERE S.SALES_DATE LIKE '2022-01-%'
GROUP BY 1
ORDER BY 1

/*
* USING
 - 두 개의 테이블을 조인할 때 두 테이블 간의 조인 조건에 사용되는 열이 동일한 이름을 가지고 있을 때 사용
 - USING 절 사용 시 열 이름만 지정해야함
 - 내부 조인(INNER JOIN), 외부 조인(LEFT JOIN, RIGHT JOIN 등)에 모두 사용할 수 있음 

=== 사용 예
SELECT *
FROM table1
INNER JOIN table2
USING (column_name);
*/

