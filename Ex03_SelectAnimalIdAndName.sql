-- 동물의 아이디와 이름
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
-- 동물 보호소에 들어온 모든 동물의 아이디와 이름을 ANIMAL_ID순으로 조회하는 SQL문을 작성해주세요. 
-- SQL을 실행하면 다음과 같이 출력되어야 합니다.

-- ANIMAL_ID	NAME
-- A349996	Sugar
-- A350276	Jewel
-- A350375	Meo
-- A352555	Harley
-- A352713	Gia
-- A352872	Peanutbutter
-- A353259	Bj
-- ((이하 생략))

USE sqlPractice;

CREATE TABLE ANIMAL_INS1(
    ANIMAL_ID VARCHAR(10) NOT NULL,
    ANIMAL_TYPE VARCHAR(10) NOT NULL,
    DATETIME DATETIME NOT NULL,
    INTAKE_CONDITION VARCHAR(10) NOT NULL,
    NAME VARCHAR(10),
    SEX_UPON_INTAKE VARCHAR(20) NOT NULL
);

INSERT INTO ANIMAL_INS1(ANIMAL_ID, ANIMAL_TYPE, DATETIME, INTAKE_CONDITION, NAME, SEX_UPON_INTAKE)
VALUES ('A365172', 'Dog', '2014-08-26 12:53:00', 'Normal', 'Diablo', 'Neutered Male'),
       ('A365012', 'Dog', '2015-09-16 09:06:00', 'Sick', 'Miller', 'Neutered Male'),
       ('A365302', 'Dog', '2017-01-08 16:34:00', 'Sick', 'Minnie', 'Sprayed Female'),
       ('A381217', 'Dog', '2017-07-08 09:41:00', 'Sick', 'Cherokee', 'Neutered Male');

SELECT ANIMAL_ID, NAME
FROM sqlPractice.ANIMAL_INS1
ORDER BY ANIMAL_ID;