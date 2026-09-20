/* 
[PATIENT] 환자 정보 테이블

PT_NO 환자번호
PT_NAME 환자이름
GEND_CD 성별코드
AGE 나이
TLNO 전화번호
 */

select PT_NAME, PT_NO, GEND_CD, AGE, ifnull(TLNO, 'NONE') as TLNO
from PATIENT
where AGE <= 12 and GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC;

/* 
NULL일 때 다른 값으로 바꿔 출력하고 싶으면 IFNULL()
 */