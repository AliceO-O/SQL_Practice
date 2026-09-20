/* 
[BOOK] 도서 정보 테이블

BOOK_ID: 도서 ID
CATEGORY: 카테고리 (경제, 인문, 소설, 생활, 기술)
AUTHOR_ID: 저자 ID
PRICE: 판매가 (원)
PUBLISHED_DATE: 출판일
 */

select BOOK_ID, PUBLISHED_DATE
from BOOK
where year(PUBLISHED_DATE)='2021' and CATEGORY = '인문'
ORDER BY PUBLISHED_DATE ASC;

/* 
날짜에서 연도만 봐야 한다 → YEAR()
날짜에서 월만 봐야 한다 → MONTH()
날짜 형식을 바꿔야 한다 → DATE_FORMAT()
 */