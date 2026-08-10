# SQL Practice

> MySQL 기반 SQL 코딩테스트 문제 풀이 및 문법 복습 기록

프로그래머스 SQL 문제를 중심으로  
데이터 조회, 집계, 그룹화, 테이블 결합 등 SQL의 핵심 문법을 복습하고 기록하는 저장소입니다.

---

## 🎯 Goal

- SQL 기본 문법 및 핵심 개념 복습
- SQL 코딩테스트 문제 해결 능력 향상
- 데이터 조회·집계·결합 과정에 필요한 SQL 문법 숙련
- 문제 풀이 및 학습 내용을 GitHub에 지속적으로 기록

---

## 🛠 Environment

- **DBMS** : MySQL
- **Editor** : Visual Studio Code
- **Version Control** : Git / GitHub
- **Practice** : Programmers SQL Kit

---

## 📂 Structure

```text
SQL_Practice/
│
├── Programmers/
│   ├── 01_SELECT/
│   ├── 02_SUM_MAX_MIN/
│   ├── 03_GROUP_BY/
│   ├── 04_IS_NULL/
│   ├── 05_JOIN/
│   └── 06_STRING_DATE/
│
├── .gitignore
└── README.md
```

---

## 📚 Categories

| Category | 학습 내용 |
|---|---|
| `SELECT` | 데이터 조회, 조건 설정, 정렬 |
| `SUM, MAX, MIN` | 집계 함수 활용 |
| `GROUP BY` | 데이터 그룹화 및 그룹별 집계 |
| `IS NULL` | NULL 값 조회 및 처리 |
| `JOIN` | 여러 테이블 간 데이터 결합 |
| `STRING, DATE` | 문자열 및 날짜 관련 함수 활용 |

---

## ✏️ Solution

각 문제의 풀이 코드는 `.sql` 파일로 관리합니다.

```sql
/*
문제: 평균 일일 대여 요금 구하기
Category: SELECT
Level: 1

핵심 개념
- AVG()
- ROUND()
*/

SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';
```

단순하게 해결한 문제는 SQL 코드 위주로 기록하고,  
헷갈렸거나 새롭게 학습한 내용이 있는 문제는 핵심 개념과 풀이 내용을 주석으로 추가합니다.

---

## 📝 Study Rules

- 문제를 먼저 스스로 해결한 후 정답을 확인합니다.
- 틀린 문제는 원인을 확인하고 다시 풀이합니다.
- 새롭게 사용한 함수나 문법은 주석으로 기록합니다.
- 동일한 문제라도 더 간결하거나 효율적인 풀이가 있다면 수정합니다.
- SQL 문법 암기보다 데이터에서 원하는 결과를 추출하는 과정에 집중합니다.

---

## 📈 Progress

프로그래머스 SQL 문제를 유형별로 풀이하며 순차적으로 업데이트합니다.

**SELECT → 집계 함수 → GROUP BY → NULL 처리 → JOIN → STRING / DATE**

문제 풀이가 진행될수록 새로운 SQL 유형과 학습 내용을 추가할 예정입니다.