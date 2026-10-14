/* 
[USER_INFO] 의류 쇼핑몰에 가입한 회원 정보 테이블

USER_ID 회원 ID
GENDER 성별
AGE 나이
JOINED 가입일
 */

SELECT count(*) as USERS
from USER_INFO
WHERE year(JOINED) = 2021 and age >= 20 and age <= 29;
-- WHERE year(JOINED) = 2021 and age 20 between and 29;

/* 
20살에서 29살 사이니까 between을 사용하면 깔끔하다.
 */