-- 역순 정렬하기

-- ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
-- ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는 
-- 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.
--       NAME	        TYPE	    NULLABLE
--    ANIMAL_ID	      VARCHAR(N)	 FALSE
--    ANIMAL_TYPE	  VARCHAR(N)	 FALSE
--     DATETIME	       DATETIME	     FALSE
-- INTAKE_CONDITION	  VARCHAR(N)	 FALSE
--       NAME	      VARCHAR(N)	 TRUE
--  SEX_UPON_INTAKE	  VARCHAR(N)	 FALSE
-- 동물 보호소에 들어온 모든 동물의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 ANIMAL_ID 역순으로 보여주세요. SQL을 실행하면 다음과 같이 출력되어야 합니다.

-- 예시
-- 예를 들어, ANIMAL_INS 테이블이 다음과 같다면
-- ANIMAL_ID	ANIMAL_TYPE	        DATETIME	    INTAKE_CONDITION	NAME	SEX_UPON_INTAKE
--  A349996      	Cat	      2018-01-22 14:32:00	     Normal	        Sugar	 Neutered Male
--  A350276	        Cat	      2017-08-13 13:50:00	     Normal	        Jewel	 Spayed Female
--  A396810	        Dog	      2016-08-22 16:13:00	    Injured	        Raven	 Spayed Female
--  A410668	        Cat	      2015-11-19 13:41:00	     Normal	        Raven	 Spayed Female

-- ID을 사전 순으로 정렬하면 다음과 같다. 
-- 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.
--  NAME	     DATETIME
-- Raven	2015-11-19 13:41:00
-- Raven	2016-08-22 16:13:00
-- Jewel	2017-08-13 13:50:00
-- Sugar	2018-01-22 14:32:00

USE sqlPractice;

SELECT NAME, DATETIME
FROM ANIMAL_INS4
ORDER BY ANIMAL_ID DESC;