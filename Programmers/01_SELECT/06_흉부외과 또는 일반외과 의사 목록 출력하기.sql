/* 
[DOCTOR] 의사 정보 테이블

DR_NAME 의사이름
DR_ID 의사ID
LCNS_NO 면허번호
HIRE_YMD 고용일자
MCDP_CD 진료과코드
TLNO 전화번호
 */

select DR_NAME, DR_ID, MCDP_CD, HIRE_YMD
from DOCTOR
WHERE MCDP_CD = 'CS' or MCDP_CD = 'GS'
-- WHERE MCDP_CD IN ('CS', 'GS')
ORDER BY HIRE_YMD DESC, DR_NAME ASC;

/* 
조건이 여러 값 중 하나일 때는 IN 사용
WHERE MCDP_CD = 'CS' or MCDP_CD = 'GS' -> WHERE MCDP_CD IN ('CS', 'GS')
 */