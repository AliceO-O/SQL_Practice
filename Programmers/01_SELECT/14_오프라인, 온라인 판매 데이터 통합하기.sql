/* 
[ONLINE_SALE] 온라인 상품 판매 정보 테이블

ONLINE_SALE_ID 온라인 상품 판매 ID
USER_ID 회원 ID
PRODUCT_ID 상품 ID
SALES_AMOUNT 판매량
SALES_DATE 판매일
 */


/* 
[OFFLINE_SALE] 오프라인 상품 판매 정보 테이블

OFFLINE_SALE_ID 오프라인 상품 판매 ID
PRODUCT_ID 상품 ID
SALES_AMOUNT 판매량
SALES_DATE 판매일
 */

SELECT SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
from ONLINE_SALE
WHERE year(SALES_DATE) = 2022 and month(SALES_DATE) = 03

UNION ALL

select SALES_DATE, PRODUCT_ID, NULL as USER_ID, SALES_AMOUNT
from OFFLINE_SALE
WHERE year(SALES_DATE) = 2022 and month(SALES_DATE) = 03

ORDER BY SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC;

/* 
유니온은 조인과 다르게 위아래로 합침
조심해야할건 두개의 테이블의 컬럼 모양이 맞아야함.
이해하기 쉽게 예시로 레고 블럭끼리 위아래로 합친다고 생각하면 서로의 모양이 일치해야듯이 이것도 비슷하게 생각하면 이해하기 쉽다.

그리고 내가 이 문제를 풀면서 "왜 불편하게 필터링을 2번하지? 그냥 처음부터 전부 가져와서 마지막에 필터링 한번만하는게 편하지 않나?"" 라고 생각했는데 각각 비교 코드를 보니 처음부터 원하는는 데이터만 필터링해서 유니온으로 합치는게 메모리 측면과 속도 측면에서 이득이고 안정성과 코드 가독성에서도 매우 좋았다.
(나는 항상 문제를 풀때 출제자의 의도를 생각하고,
문제에서 요구하는 해답과는 다르게 또 다른 방식으로도 풀어볼수있지 않을까라고 생각해본다. 그러면 비록 단 하나의 문제일뿐이라도 더 많은 정보를 얻을 수 있는거 같다.)
 */
