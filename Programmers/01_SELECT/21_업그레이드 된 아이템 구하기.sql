/* 
[ITEM_INFO] 게임에서 사용되는 아이템 정보 테이블

ITEM_ID 아이템 ID
ITEM_NAME 아이템 명
RARITY 아이템의 희귀도
PRICE 아이템의 가격
 */

 /* 
[ITEM_TREE] 아이템 관계 테이블

ITEM_ID 아이템 ID
PARENT_ITEM_ID PARENT 아이템의 ID
 */

-- 서브쿼리
SELECT info.ITEM_ID, info.ITEM_NAME, info.RARITY
from ITEM_INFO as info
JOIN ITEM_TREE as tree
    on info.ITEM_ID = tree.ITEM_ID

where tree.PARENT_ITEM_ID in (
    SELECT ITEM_ID
    FROM ITEM_INFO
    WHERE RARITY = 'RARE'
)
ORDER BY info.ITEM_ID DESC;

/* 해석
1. ITEM_INFO와 ITEM_TREE를 연결해서 각 아이템의 부모 ID를 확인한다.
2. 서브쿼리로 RARE 아이템들의 ID 목록을 가져온다.
3. 현재 아이템의 PARENT_ITEM_ID가 그 목록에 있는지 확인한다.
4. 조건을 통과한 아이템들의 ID, 이름, 희귀도를 출력한다.
5. 아이템 ID가 큰 순서대로 정렬한다.
 */


-- 또 다른 풀이: Join 2번
/*
SELECT child.ITEM_ID,
       child.ITEM_NAME,
       child.RARITY

FROM ITEM_INFO AS child

JOIN ITEM_TREE AS tree
    ON child.ITEM_ID = tree.ITEM_ID

JOIN ITEM_INFO AS parent
    ON parent.ITEM_ID = tree.PARENT_ITEM_ID

WHERE parent.RARITY = 'RARE'
ORDER BY child.ITEM_ID DESC;
*/