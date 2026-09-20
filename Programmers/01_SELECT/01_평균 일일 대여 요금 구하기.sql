/* 
[CAR_RENTAL_COMPANY_CAR]: 자동차 정보 테이블

CAR_ID: 자동차 ID
CAR_TYPE: 자동차 종류
DAILY_FEE: 일일 대여 요금(원)
OPTIONS: 자동차 옵션 리스트
 */

select round(avg(DAILY_FEE), 0) as AVERAGE_FEE
from CAR_RENTAL_COMPANY_CAR
WHERE car_type = 'SUV';