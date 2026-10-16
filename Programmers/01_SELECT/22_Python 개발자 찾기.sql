/* 
[DEVELOPER_INFOS] 개발자들의 프로그래밍 스킬 정보 테이블

ID ID(아이디)
FIRST_NAME 이름
LAST_NAME 성
EMAIL 이메일
SKILL_1 첫 번째 스킬
SKILL_2 두 번째 스킬
SKILL_3 세 번째 스킬
 */

SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS
-- 단순 나열한 방법(직설적이어서 한번에 이해하기는 쉽다.)
-- WHERE SKILL_1 = 'Python' or SKILL_2 = 'Python' or SKILL_3 = 'Python'
-- 더 깔끔하게 하고 싶으면 in을 사용해라
where 'Python' in (SKILL_1, SKILL_2, SKILL_3)
ORDER BY ID ASC;