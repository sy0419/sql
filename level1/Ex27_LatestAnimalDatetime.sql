-- 최댓값 구하기

-- ANIMAL_INS 테이블은 동물 보호소에 들어온 동물의 정보를 담은 테이블입니다. 
-- ANIMAL_INS 테이블 구조는 다음과 같으며, ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE는 
-- 각각 동물의 아이디, 생물 종, 보호 시작일, 보호 시작 시 상태, 이름, 성별 및 중성화 여부를 나타냅니다.
--      NAME	           TYPE	      NULLABLE
--    ANIMAL_ID	        VARCHAR(N)	   FALSE
--   ANIMAL_TYPE	    VARCHAR(N)     FALSE
--     DATETIME	         DATETIME	   FALSE
-- INTAKE_CONDITION	    VARCHAR(N)     FALSE
--       NAME	        VARCHAR(N)	   TRUE
-- SEX_UPON_INTAKE	    VARCHAR(N)	   FALSE

-- 가장 최근에 들어온 동물은 언제 들어왔는지 조회하는 SQL 문을 작성해주세요.

-- 예시
-- 예를 들어 ANIMAL_INS 테이블이 다음과 같다면
-- ANIMAL_ID	ANIMAL_TYPE	       DATETIME	      INTAKE_CONDITION	   NAME	    SEX_UPON_INTAKE
--  A399552	        Dog	     2013-10-14 15:38:00	   Normal	       Jack	     Neutered Male
--  A379998	        Dog	     2013-10-23 11:42:00	   Normal	      Disciple	  Intact Male
--  A370852	        Dog	     2013-11-03 15:04:00	   Normal	       Katie	 Spayed Female
--  A403564	        Dog	     2013-11-18 17:03:000	   Normal	       Anna	     Spayed Female

-- 가장 늦게 들어온 동물은 Anna이고, Anna는 2013-11-18 17:03:00에 들어왔습니다. 
-- 따라서 SQL문을 실행하면 다음과 같이 나와야 합니다.
--         시간
-- 2013-11-18 17:03:00
-- ※ 컬럼 이름(위 예제에서는 "시간")은 일치하지 않아도 됩니다.

USE sqlPractice;

CREATE TABLE ANIMAL_INS8(
    ANIMAL_ID VARCHAR(10) NOT NULL,
    ANIMAL_TYPE VARCHAR(10) NOT NULL,
    DATETIME DATETIME NOT NULL,
    INTAKE_CONDITION VARCHAR(10) NOT NULL,
    NAME VARCHAR(10),
    SEX_UPON_INTAKE VARCHAR(20) NOT NULL
);

INSERT INTO ANIMAL_INS8(ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE)
VALUES ('A365172', 'Dog', '2013-10-14 15:38:00', 'Normal', 'Jack', 'Neutered Male'),
       ('A367012', 'Dog', '2013-10-23 11:42:00', 'Normal', 'Disciple', 'Intact Male'),
       ('A365302', 'Dog', '2013-11-03 15:04:00', 'Normal', 'Katie', 'Spayed Female'),
       ('A381217', 'Dog', '2013-11-18 17:03:00', 'Normal', 'Anna', 'Spayed Female');

SELECT MAX(DATETIME)
FROM ANIMAL_INS8;