/*
* 문제 
 - CAR_RENTAL_COMPANY_CAR 테이블에서 '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된 자동차가 자동차 종류 별로 몇 대인지 출력하는 SQL문을 작성해주세요. 이때 자동차 수에 대한 컬럼명은 CARS로 지정하고, 결과는 자동차 종류를 기준으로 오름차순 정렬해주세요.
*/

/*
### IN 절로 풀어보려했으나 실패..
 * 원인 
  - IN 절은 주로 단일 값과 비교할 떄 사용됨
  - 여러 값이 쉼표로 구분된 문자열로 저장된 경우에는 효과적으로 사용하기 어려움.
 * 다른 방안..
   - 이런 경우 LIKE와 OR 연산자를 사용하여 각각의 값에 대해 독립적으로 비교하는 방법을 사용해야함


### REGEXP 정규식 사용
 * 정규표현식은 MYSQL에서 강력한 검색 도구로 사용될 수 있으며, 더 복잡한 패턴을 사용하여 문자열을 검색, 필터링 및 변환 할 수 있음
 * REGEXP : 대소문자를 구분하지 않고 일치하는 문자열을 찾음
 * REGEXP BINARY : 대소문자를 엄격히 구분
 */

-- 첫 번째 답안
SELECT CAR_TYPE, COUNT(1) CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC

-- 다른 사람 풀이 
SELECT CAR_TYPE, COUNT(1) CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC

