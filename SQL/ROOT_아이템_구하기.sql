/*
* 문제
 - ROOT 아이템을 찾아 아이템 ID(ITEM_ID), 아이템 명(ITEM_NAME)을 출력하는 SQL문을 작성해 주세요. 이때, 결과는 아이템 ID를 기준으로 오름차순 정렬해 주세요.
*/

-- 첫 번째 풀이
SELECT ITEM_ID, ITEM_NAME
FROM ITEM_INFO JOIN ITEM_TREE USING (ITEM_ID)
WHERE PARENT_ITEM_ID IS NULL
ORDER BY 1
