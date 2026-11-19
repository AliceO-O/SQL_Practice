/* 
[SKILLCODES] 개발자들이 사용하는 프로그래밍 언어에 대한 정보 테이블

NAME 스킬 이름
CATEGORY 스킬 범주
CODE 스킬 코드
 */

/* 
[DEVELOPERS] 개발자들의 프로그래밍 스킬 정보 테이블

ID ID(아이디)
FIRST_NAME 이름
LAST_NAME 성
EMAIL 이메일
SKILL_CODE 스킬 코드
 */

SELECT dev.ID, dev.EMAIL, dev.FIRST_NAME, dev.LAST_NAME
from DEVELOPERS as dev
JOIN SKILLCODES as ski
    on dev.SKILL_CODE = ski.CODE

WHERE ski.NAME = ('Python' or 'C#')
ORDER BY dev.id ASC;