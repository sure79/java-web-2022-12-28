# 첫번째 SQL 주석 (한 줄 주석)
-- 두번째 SQL 주석 (한 줄 주석  )  주석은  '-' 뒤에 반드시 띄어쓰기가 포함되어야 한다. 
/* 세번째
SQL
주석 (여러줄 주석)
*/

# DDL 작업

# 데이터 베이스 생성 쿼리
# CREATE DATABASE 데이터베이스명;

CREATE DATABASE HOTEL;

#생성된 데이터베이스 목록보기
# SHOW DATABASES
SHOW DATABASES;

#데이터베이스 선택
#USE 데이터베이스명

USE HOTEL;

# 테이블 생성
# CREATE TABLE 테이블명 (
# 필드명 필드타입 제약조건,
# ...
# );

CREATE TABLE Reservation(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
reservationDate DATE NOT NULL,
roomNumber INT 

);
# 선택된 데이터베이스의 테이블을 조회
SHOW TABLES;


# 테이블 수정
# - 컬럼 추가
#ALTER TAABLE 테이블명 ADD 필드명 필드 타입 [제약조건]

ALTER TABLE Reservation ADD telNumber VARCHAR(20);


# -컬럼 삭제
# ALTER TABLE 테이블명 DROP 필드명;

ALTER TABLE Reservation DROP roomNumber;

# - 컬럼 수정
# ALTER TABLE 테이블명 MODIFY COLUMN 필드명 필드타입 [제약조건];

ALTER TABLE Reservation MODIFY COLUMN reservationDate VARCHAR(20) NOT NULL;


#테이블 삭제
# - DROP
# DROP TABLE 테이블명;
# 테이블의 존재 자체를 삭제

DROP TABLE Reservation;

# TRUNCATE
# - TRUNCATE TABLE 테이블명;
# 해당 테이블을 생성 직후의 상태로 되돌림(DDL)

INSERT INTO Reservation(name, reservationDate) VALUES ('홍길동', NOW());
SELECT * FROM Reservation;

TRUNCATE TABLE Reservation;

#DELETE FROM 
# DELETE FROM 테이블명;
# 레코드만 삭제 (DML)

DELETE FROM Reservation;


### DML ###
# INSERT
# - 데이터 삽입alter
# INSERT INTO 테이블명 (컬럼명1, 컬럼명2, ....) VALUES (값1, 값2,.....);
# INSERT INTO 테이블명 VALUES (값1,값2,.....)
# 각 컬럼에 매칭되는 값을 순서에 맞게 작성하여야 함.

INSERT INTO Reservation(name,reservationDate, roomNumber) VALUES ('김철수', '2023-01-17', 3134);
INSERT INTO Reservation VALUES (4,'이영희', '2022-10-11', 908);
# NOT NULL 조건으로 걸린 name 컬럼 값을 지정 하지 않았기 때문에 에러가 발생한다. 
INSERT INTO Reservation(reservationDate, roomNumber) VALUES ('1999-02-11', 1004);

# UPDATE
# - 데이터 수정 
# UPDATE 테이블명 SET 컬럼1 = 값1, ... [WHERE 컬럼 = 값]
# WHERE : 조건을 지정해주는 키워드, 해당하는 조건에 해당하는 레코드만 명령을 실행

# IS NULL : WHERE 조건에서 해당 컬럼이 NULL인 레코드를 고를 때 사용
UPDATE Reservation SET roomNumber = 502 WHERE roomNumber IS NULL;
UPDATE Reservation SET reservationDate = '2023-01-31' WHERE name = '김철수';
UPDATE Reservation SET roomNumber = 1001;

#데이터 삭제
# - DELETE
# DELETE FROM 테이블명 [ WHERE 컬럼 = 값]
DELETE FROM Reservation WHERE id = 7;

INSERT INTO Reservation (name, reservationDate, roomNumber) VALUES ('고수', '2023-03-02', 904);
INSERT INTO Reservation (name, reservationDate) VALUES ('홍길동', '2023-09-07');
INSERT INTO Reservation VALUES (20, '고길동', '2023-03-02', 3414);



#데이터검색alter
# - SELECT
# SELECT 컬럼명1 [, 컬럼명2, ....] FROM 테이블명 [WHERE 조건];
#지정한 테이블에서 선택한 컬럼을 검색할 때 사용.

SELECT name FROM Reservation;
SELECT name, roomNumber FROM Reservation;
SELECT name, roomNumber FROM Reservation WHERE reservationDate = '2023-03-02'; 

#SELECT * 으로 모든 컬럼을 선택 할 수 있음.
SELECT * FROM Reservation;
SELECT * FROM Reservation WHERE name = '홍길동';

#WHERE 문 뒤에 비교연산자 및 논리 연산자를 조건을 추가하여 검색할 수 있음.
SELECT * FROM Reservation WHERE name = '홍길동' AND reservationDate < '2023-04-01';
SELECT * FROM Reservation WHERE name = '홍길동' OR reservationDate < '2023-04-01';
SELECT * FROM Reservation WHERE roomNumber IS NOT NULL;
SELECT * FROM Reservation WHERE roomNumber IS NULL;
SELECT * FROM Reservation WHERE name LIKE '%길동' AND roomNumber IS NOT NULL;

#특정 컬럼의 중복 제거 DISTINCT
SELECT DISTINCT name, roomNumber FROM Reservation;

#특정 컬럼을 기준으로 정렬 ORDER BY
#옵션 - ASC : 오름차순 / DESC : 내림차순
SELECT * FROM Reservation ORDER BY ReservationDate;
SELECT * FROM Reservation ORDER BY ReservationDate DESC;
SELECT * FROM Reservation ORDER BY ReservationDate DESC, roomNumber DESC;
SELECT * FROM Reservation ORDER BY oomNumber DESC, ReservationDate DESC;


#별칭 사용 AS
SELECT name AS eman, roomNumber FROM Reservation;
SELECT name , roomNuber FROM Reservation AS R;


# MySQL 데이터타입alter
# 문자열 타입 CHAR
# 고정길이 문자열 / 길이로 지정할 수 있는 값의 범위 0-255
ALTER TABLE Reservation ADD note CHAR(4);

# DESCRIBE 테이블명; : 테이블의 정보를 볼 수 있음
DESCRIBE Reservation;
SELECT char_length(note) FROM Reservation WHERE name = '노트';


INSERT INTO Reservation(name, reservationDate, note) VALUES ('노트', now(), '');

SELECT * FROM Board; # 밑에 코드가 같은 의미
SELECT * FROM Board WHERE boardTitle Like '%%'; # 여기에 자바코드가 들어 간다. 


SELECT * FROM Reservation;

# 비교 연산자
# 동등 비교연산 =
# 좌항이 우항과 같으면 1을 반환 아니면 0을 반환alter
SELECT 1 = 1;
# Reservation 테이블에서 roomNumber가 1001인 레코드의 모든 컬럼을 선택
SELECT * FROM Reservation WHERE roomNumber = 1001;

# not 연산 ( != , <>)
# 좌항과 우항이 다르면 1을 반환하고 아니면 0을 반환

SELECT 1 != 1, 1 <> 2;

# Reservation 테이블에서 roomNumber가 1001이 아닌 레코드의 모든 컬럼을 선택
SELECT * FROM Reservation WHERE roomNumber != 1001;

# Great than, Great than equal 연산(> ,  >=)
# 좌항이 우항보다 크면 1을 반환 아니면 0을 반환
# 좌항이 우항보다 크거나 같으면 1을 반환 아니면 0을 반환

SELECT 1 > 1, 1 >= 1;

# Reservation 테이블에서 reservationDate가 2023년 01월 01일 보다 크거나 같은(이후의) 모든 컬럼 선택
SELECT * FROM Reservation WHERE reservationDate >= '2023-01-01';

# Less than, Less than Equal ( <, <= )
# 좌항이 우항보다 작으면 1을 반환 아니면 0을 반환

SELECT 1 < 1, 1 <= 1;

# Reservation 테이블에서 reservationDate가 2023-02-28 보다 작거나 같은 (이전인) 모든 컬럼 선택
SELECT * FROM Reservation WHERE reservationDate <= '2023-02-28';



# null 확인 ( <=>)
# 좌항과 우항이 모두 null이면 1을 반환하고 아니면 0을 반환

SELECT null <=> 1;

# Reservation 테이블에서 roomNumber와 note가 모두 null인 레코드의 모든 컬럼을 선택
SELECT * FROM Reservation WHERE roomNumber <=> NOTE;

# Equal 연산 (IS)
# 좌항이 우항과 같으면 1을 반환하고 아니면 0을 반환
# 우항이 TRUE, FALSE, UNKOWN 일때 사용

SELECT FALSE IS TRUE;

# Not Equal 연산 ( IS NOT)
# 좌항이 우항과 다르면 1을 반환하고 아니면 0을 반환
# 우항이 TRUE, FALSE, UNKNOWN 일때 사용

SELECT FALSE IS NOT TRUE;


# NULL 비교 연산 ( IS NULL, IS NOT NULL)
# 좌항이 NULL이면 1을 반환하고 아니면 0을 반환

SELECT 1 IS NULL ;


# Reservation 테이블에서 note 컬럼에 값이 없는 레코드의 모든 값을 선택
SELECT * FROM Reservation WHERE note IS NULL;

#좌항이 NULL이 아니면 1을 반환하고 아니면 0을 반환

SELECT 1 IS NOT NULL;

#Reservation 테이블에서 roomNumber 컬럼에 값이 존재하는 레코드의 모든 값을 선택
SELECT * FROM Reservation WHERE roomNumber IS NOT NULL;



#사이값 비교 연산 (BETWEEN a AND b, NOT BETWEEN a AND b)

# 좌항이 a보다 크거나 같으면서 b보다 작거나 같으면 1을 반환하고 아니면 0을 반환
# 좌항이 a보다 작거나 같으면서 b보다 크거나 같으면 1을 반환하고 아니면 0을 반환

SELECT 10  BETWEEN 5 AND 10, 10 NOT BETWEEN 3 AND 8;

# Reservatino 테이블에서 reservationDate가 2023-01-01부터 2023-02-28까지인 레코드의 모든 컬럼을 선택

SELECT * FROM Reservation WHERE reservationDate BETWEEN '2023-01-01' AND '2023-02-28';


# IN 연산 ( IN, NOT IN)
# 좌항이 우항에 해당하는 배열 값중 하나라도 같다면 1을 반환하고 아니면 0을 반환
# 좌항이 우항에 해당하는 배열 값이 포함되어 있지 않다면 1을 반환하고 아니면 0을 반환
SELECT 1 IN (1,2,3,4,5), 1 NOT IN (1,2,3,4,5);

# Reservation 테이블에서 name이 '홍길동', '고길동'중 하나라도 해당되는 레코드의 모든 값을 선택
SELECT * FROM Reservation WHERE name in ('홍길동', '고길동');

# 논리 연산alter

# AND 연산 (AND, &&)
# 좌항과 우항이 모두 1이면 1, 아니면 0을 반환
# 여기서 비교되는 1과 0은 비교연산의 결과
SELECT 1 AND 1;
# Reservation 테이블에서  name이 '고길동'이면서 note 컬럼에 값이 지정되어 있지 않은 모든 컬럼 선택
SELECT * FROM Reservation WHERE name = '고길동' AND note IS NULL;


# Reservation 테이블에서 note 컬럼에 값이 지정되어 있지 않고 reservationDate가 2023-01-01부터 2023-02-28인 레코드의 모든 컬럼을 선택
SELECT * FROM Reservation WHERE note IS NULL AND (reservationDate BETWEEN '2023-01-01' AND '2023-02-28');


# OR 연산 (OR, || )
# 좌항과 우항 중 하나라도 1이면 1을 반환하고 아니면 0을 반환
# 여기서 비교되는 1과 0은 비교 연산의 결과 
SELECT 1 OR 0;

# Reservation 테이블 중 name이 '고수'이거나 note값이 존재하는 레코드의 모든 컬럼을 선택alter
SELECT * FROM Reservavtion WHERE name = '고수' OR note IS NOT NULL;


# XOR 연산 (XOR)
# 좌항과 우항이 다르면 1을 반환 같으면 0을 반환
SELECT 1 XOR 0;

#AND 연산과 OR 연산에서 주의할 점
#실제로 구하고자하는 값을 정확히 파악

#name 이 고길동 이면서 note 값이 존재하지 않거나 roomNumber가 1000이상인 레코드중 모든 컬럼을 선택

SELECT * FROM Reservation WHERE name = '고길동' AND (note IS NULL OR roomNumber >= 1000);

# IFNULL (검사할 인수, null일 때의 값)
# 검사할 인수가 NULL 이면 NULL 일 때의 값을 반환

SELECT IFNULL (NULL, '값이 지정되지 않았습니다.');

#Reservation 테이블에서 모든 레코드 중 name과 roomNumber를 선택하는데 roomNumber가 null이면 ' 아직 방이 배정되지 않았습니다. .'를 출력
SELECT name, IFNULL(roomNumber, '아직 방이 배정되지 않았습니다.') FROM Reservation;


# 패턴 매칭 ( %, _)
# 데이터의 특정 패턴에 해당하는 데이터를 조건으로 사용하기 위한 용도
# LIKE 연산자
SELECT * FROM Reservation WHERE name LIKE '고%';
SELECT * FROM Reservation WHERE name LIKE '고_';

# % : 0개이상의 문자를 대체
# _ : 1개의 문자를 대체

SELECT * FROM Reservation WHERE name LIKE '%';
SELECT * FROM Reservation WHERE name LIKE '__';



