#Board 데이터베이스 만들기alter
CREATE DATABASE PEED;
USE PEED;

#User 테이블 생성alter
CREATE TABLE User (
id INT PRIMARY KEY AUTO_INCREMENT,  #아이디 / 정수형태/ 기본키 /자동증가
password VARCHAR(30) NOT NULL,      #패스워드 / 길이 30에 가변문자열 / 필수 값
name VARCHAR(50) NOT NULL,          #이름/ 길이 50의 가변 문자열 / 필수 값
telNumber VARCHAR(15) NOT NULL UNIQUE # 전화번호 / 길이 15의 가변 문자열 / 필수 값 / 중복이 불가능

);

# Board 테이블 생성
# 게시물 번호 (boardNumber)가 존재하고 정수형태 및 자동증가로 관리
# 게시물 번호로 각 데이터를 구분
# 게시물 제목 (boardTitle)이 존재하고 길이 200의 가변 문자열 및 필수 값으로 관리
# 게시물 내용 (boardContent)이 존재하고 길이의 제한이 없는 필수 값으로 관리
# 게시물 작성일 (boardDate)이 존재하고 날짜 타입이고 필수 값으로 관리
# 게시물 작성자 (boardWriter)가 존재하고 정수 형태 및 필수 값으로 관리
CREATE TABLE Board (
	boardNumber INT AUTO_INCREMENT PRIMARY KEY,
    boardTitle VARCHAR(200) NOT NULL, # 255길이까지만 가능
    boardContent TEXT NOT NULL,   #길이 제한 없음 TEXT
    boardDate DATE NOT NULL,
    boardWriter INT NOT NULL 
    

);

SELECT * FROM User;
# User레코드를 삽입
# 아이디는 자동값을 그대로 사용, 비밀번호는 'P!ssw0rd', 이름 '고길동', 전화번호는 '010-4488-9944'인 데이터를 생성

#--회원가입 할때 사용--
INSERT INTO User(password, name, telNumber) VALUES ('P!ssw0rd', '고길동', '010-4488-9944');

#user 테이블에서 이름이  '고길동'인 레코드의 비밀번호를 'qwer1234!!'로 수정

# --  각종 회원정보 수정할때 사용 --
UPDATE User SET password = 'qwer1234!!' WHERE name = '고길동';

# User 테이블에서 id가 1인 레코드를 삭제

DELETE FROM User WHERE id = 1;


INSERT INTO Board(boardTitle, boardContent, boardDate, boardWriter)
VALUES ('안녕히가세요.', '안녕하세요. 반갑습니다. 안녕히가세요' , '2023-01-11',3);

#전체 게시물 보기
SELECT * FROM Board;

#최신 글 순으로 보기
SELECT * FROM Board ORDER BY boardDate DESC;
#오래된 글 순으로 보기
SELECT * FROM Board ORDER BY boardDate ASC;

#10일 이내에 작성된 글 보기 
SELECT * FROM Board WHERE boradDate >= '2023-01-08';

#10일 이내에 작성된 글을 최신순으로 보기
SELECT * FROM Board WHERE boardDate >= '2023-01-08' ORDER BY boardDate DESC;


# 작성자가 1이면서 10일 이내에 작성된 글을 최신순으로 보기
SELECT * FROM Board WHERE boardWriter = 1 AND boardDate >= '2023-01-08' ORDER BY boardDate DESC;
# 게시물 제목에 '안녕하세요'가 포함된 게시글 보기
SELECT * FROM Board WHERE boardTitle LIKE '%안녕하세요%';
# 게시물 내용에 '반갑습니다'가 포함된 게시글 보기
SELECT * FROM Board WHERE boardContect LIKE '%반갑습니다%';
# 게시물 제목 + 내용에 '안녕히가세요'가 포함된 게시글 보기
SELECT * FROM Board WHERE boardTitle LIKE '%안녕히가세요%' OR boardContent LIKE '%안녕히가세요%';




# board 테이블에서 boardWriter가 1이거나 2인 레코드에서 모든 컬럼 선택
SELECT * FROM board WHERE boardWriter = 1 OR boardWriter= 2;
SELECT * FROM board WHERE boardWriter IN (1,2);


# board 테이블에서 boardDate가 2023-01-03부터 2023-01-10까지 레코드 중 모든 컬럼을 선택
SELECT * FROM board WHERE boardDate BETWEEN '2023-01-03' AND '2023-01-10';

# Board  테이블에서 작성일자가 1월달인 레코드에서 모든 컬럼을 선택

# LIKE _ 연산자 
SELECT * FROM board WHERE boardDate LIKE '____-01-__';
# LIKE % 연산자 
SELECT * FROM board WHERE boardDate LIKE '%-01-%';
# BETWEEN (2월 사용불가)
SELECT * FROM board WHERE boardDate BETWEEN '2023-01-01' AND '2023-01-31';


#FOREIGN KEY
#해당 테이블이 외부 테이블을 참조할 때 특정 컬럼을 외부 테이블의 컬럼 값으로 지정하는 키
#참조의 기준

# CONSTRAINT 제약조건명 FOREIGN KEY (해당 필드에서 참조키로 지정할 컬럼)
# REFERANCES 참조할 테이블 명 (참조할 테이블의 기본키)


#주의사항
#1. 참조할 테이블이 존재해야함
#2. 참조할 컬럼이 참조할 테이블의 기본키이거나 후보키이어야 함.

#[CONSTRAINT 제약조건명]은 생략 가능

CREATE TABLE Room (
	roomNumber INT PRIMARY KEY,
    roomSize INT NOT NULL,
    roomName VARCHAR(20) NOT NULL
);


CREATE TABLE Reservation2 (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    reservationDate DATE NOT NULL,
    note TEXT,
    roomNumber INT, 
    
    CONSTRAINT Reservation_RoomNumber_FK FOREIGN KEY (roomNumber)
    REFERENCES Room (roomNumber)
);

DROP TABLE Reservation2;

# 참조 제약조건을 설정하면
# 참조하는 테이블에 해당 컬럼의 값이 존재해야 참조 할 수 있음.

INSERT INTO Reservation (name, reservationDate, roomNumber) VALUES ('김철수', '2023-01-24', 2902);
INSERT INTO Reservation2 (name, reservationDate, roomNumber) VALUES ('김철수', '2023-01-24', 2901);

INSERT INTO Room VALUES (2901, 28, 'VIP');


SELECT * FROM Reservation2;

DELETE FROM Room WHERE roomNumber = 2901;


# ON DELETE, ON UPDATE
# 참조키로 지정된 필드에서 참조하는 데이터가 변경되거나 삭제되었을때 대처를 설정 할 수 있도록 함

CREATE TABLE Reservation3 (
	id int AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    reservationDate DATE NOT NULL,
    note TEXT,
    roomNumber INT,
    
    CONSTRAINT reservation3_FK FOREIGN KEY (roomNumber)
    REFERENCES Room (roomNumber)
    
    # CASCADE 옵션 : 참조하는 데이터가 변경되거나 삭제되면 참조테이블에서도 삭제와 수정이 같이 이루어짐
    #ON UPDATE CASCADE
    #ON DELETE CASCADE
    
    #SET NULL 옵션 : 참조하는 데이터가 변경되거나 삭제되면 참조키가 설정된 필드의 값이 NULL로 변경됨
    #ON UPDATE SET NULL
    #ON DELETE SET NULL
    
    #NO ACTION 옵션 : 참조하는 데이터가 변경 되거나 삭제되어도 아무런 변화가 일어나지 않음
    #MY SQL에서는 RESTRICT와 동일
    #ON UPDATE NO ACTION
    #ON DELETE NO ACTION
    
    #InnoDB Engine에서는 불가능
    #ON UPDATE SET DEFAULT
    
    #RESTRICT 옵션 : 참조하는 데이터가 변경되거나 삭제가 불가능
    #기본값
    
    #ON UPDATE RESTRICT
    #ON UPDATE RESTRICT
    
);

DROP TABLE Reservation3;

INSERT INTO Room VALUES (2902, 28, 'VIP');

INSERT INTO Reservation3 (name, reservationDate, roomNumber) 
VALUES ('이영희', '2023-01-24', NULL);

UPDATE Reservation3 SET roomNumber = 2902 WHERE name = '김철수';

SELECT * FROM Reservation3;
SELECT * FROM Room;

UPDATE Room SET roomNumber = 2902 WHERE roomNumber = 2901;

DELETE FROM Room WHERE roomNumber = 2902;


#JOIN
#여러테이블을 조합하여 하나의 테이블로 표현하는 방법
#일반적으로 SELECT  구문에 사용됨.

# INNER JOIN
# ON 절에 조건을 만족하는 데이터만 가져옴
# SELECT 컬럼명 FROM 테이블1명 INNER JOIN 테이블2명 ON 조인조건

SELECT * FROM Reservation3 INNER JOIN Room ON Reservation3.roomNumber = Room.roomNumber;

#MySQL 에서는 INNER JOIN구문을 , 로 대체하고 ON을 WHERE로 대체해서 사용 가능

SELECT * FROM Reservation3, Room WHERE Reservation3.roomNumber = Room.roomNumber;
# FROM 절에 두개 이상의 테이블을 사용할때 Alias를 사용해서 별칭을 부여할 수 있음.
SELECT * FROM Reservation3 AS RV, Room AS RM WHERE RV.roomNumber = RM.roomNumber;

# 두 테이블 이상을 FROM 절에서 사용할 때는 
# 선택할 컬럼명 앞에 어떤 테이블의 컬럼인지를 직접 지정 해 주는 것이 좋음.
# 동일한 컬럼명이 각 테이블에 존재하면 쿼리는 어떤 케이블의 컬럼인지 구분하지 못함.
SELECT RV.id, RV.name, RV.reservationDate, RV.note, RM.roomNumber, RM.roomSize, RM.roomName
FROM Reservation3 AS RV, Room AS RM WHERE RV.roomNumber = RM.roomNumber;


# LEFT JOIN
# 왼쪽 테이블에 참조키를 기준으로 조인 결과를 나열

# SELECT 컬러명 FROM 테이블1명 LEFT JOIN 테이블2명 ON 조인조건 [WHERE 조건]
SELECT * FROM Reservation3 AS RV LEFT JOIN Room AS RM ON RV.roomNumber = RM.roomNumber;


#RIGHT JOIN
#오른쪽 테이블에 참조키를 기준으로 조인 결과를 나열alter

# SELECT 컬러명 FROM 테이블1명 RIGHT JOIN 테이블2명 ON 조인조건 [WHERE 조건]
SELECT * FROM Reservation3 AS RV RIGHT JOIN Room AS RM ON RV.roomNumber = RM.roomNumber;



#서브 쿼리
#테이블의 검색 결과를 조건으로 사용하거나 FROM 절에서 새로운 테이블로 사용할 수 있도록 한 것.

#WHERE 절에서 사용하는 방법
#SELECT 컬럼명 FROM 테이블 A명
#WHERE 컬럼명 = (SELECT 컬럼명 FROM 테이블B명 WHERE 조건)
#또는
#WHERE 컬럼명 IN (SELECT 컬럼명 FROM 테이블B명 WHERE 조건)

SELECT * FROM Reservation3 WHERE roomNumber = (
	SELECT roomNumber FROM Room WHERE roomNumber = 2902
);

SELECT * FROM Reservation3 WHERE roomNumber IN (
	SELECT roomNumber FROM Room
);

#FROM 절에서 사용하는 방법

#SELECT 컬럼명
#FROM (
# SELECT 컬럼명 FROM 테이블 WHERE 조건)
#WHERE 조건;






DROP TABLE BOARD;


CREATE TABLE Board (
	id INT AUTO_INCREMENT PRIMARY KEY,
    boardTitle VARCHAR(200) NOT NULL,
    boardContent TEXT NOT NULL,
    boardDateTime DATETIME NOT NULL,
    boardLike INT DEFAULT 0,
    boardWriter INT NOT NULL,
    
    CONSTRAINT Board_FK FOREIGN KEY (boardWriter)
    REFERENCES User (id)
);


SELECT * FROM User;

INSERT INTO User (password, name, telNumber) VALUES ( 'P!ssw0rd', 'Jone doe', '010-1111-4444');
INSERT INTO User (password, name, telNumber) VALUES ( 'qwer1234!!', 'Alies', '010-2222-8888');
INSERT INTO User (password, name, telNumber) VALUES ( 'sdfsdafdf', 'Brown', '010-3333-6666');


INSERT INTO Board (boardTitle, boardContent, boardDateTime, boardWriter)
VALUES ('HelloWorld!', 'Hello MYSQL', now(), 2);

INSERT INTO Board (boardTitle, boardContent, boardDateTime, boardWriter)
VALUES ('HelloWorld@', 'Hello MYSQL@', now(), 2);

INSERT INTO Board (boardTitle, boardContent, boardDateTime, boardWriter)
VALUES ('Good Bye World', 'Good Bye MYSQL', now(), 3);

SELECT * FROM Board;

# 게시물을 작성한 경험이 있는 유저의 이름과 전화번호, 작성한 게시물 제목을 구하시오.
SELECT U.name, U.telNumber, B.boardTitle FROM User AS U, Board AS B
WHERE U.id = B.boardWriter;


SELECT U.name, U.telNumber, B.boardTitle FROM User AS U RIGHT JOIN Board AS B
ON U.id = B.boardWriter;

# 게시물을 작성한 경험이 있는 유저의 이름과 전화번호를 구하시오.
SELECT DISTINCT U.name, U.telNumber FROM User AS U, Board AS B
WHERE U.id = B.boardWriter;

SELECT name, telNumber FROM User WHERE id IN (
	SELECT DISTINCT boardWriter FROM Board
);


#VIEW
#미리 선언된 쿼리를 사용해서 가상의 테이블을 만들어 보여주는 것
 
#CREATE VIEW 뷰이름 AS SELECT 쿼리문

CREATE VIEW ReservationInfo AS
SELECT RV.id, RV.name, RV.reservationDate, RV.note, RM.roomNumber, RM.roomSize, RM.roomName
FROM Reservation3 AS RV, Room AS RM WHERE RV.roomNumber = RM.roomNumber;


SELECT * FROM ReservationInfo WHERE name = '김철수';

SELECT * FROM (SELECT RV.id, RV.name, RV.reservationDate, RV.note, RM.roomNumber, RM.roomSize, RM.roomName
FROM Reservation3 AS RV, Room AS RM WHERE RV.roomNumber = RM.roomNumber) AS T WHERE name = '김철수';

DROP VIEW ReservationInfo;