/*
* 문제
 - FOOD_WAREHOUSE 테이블에서 경기도에 위치한 창고의 ID, 이름, 주소, 냉동시설 여부를 조회하는 SQL문을 작성해주세요. 이때 냉동시설 여부가 NULL인 경우, 'N'으로 출력시켜 주시고 결과는 창고 ID를 기준으로 오름차순 정렬해주세요.
*/

/*
* IFNULL 
 - NULL 값일 떄 다른 값으로 대체
 - i.g IFNULL('col1', '11') 은 "col1 의 컬럼 값이 null일 경우 11로 대체"한다는 의미    
*/

-- 첫 번쨰 풀이
SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, IFNULL(FREEZER_YN, 'N') FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '경기도%'
ORDER BY WAREHOUSE_ID
