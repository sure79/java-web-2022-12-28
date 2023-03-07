use EXAMPLE_DB;

-- Employee (employee_number, position, name, age, gender, 
-- academic_ability, birth, tel_number, address, address_detail,
-- join_date,resignation_date, department, annual_income, note)

CREATE TABLE Employee (
	employee_number INT AUTO_INCREMENT PRIMARY KEY comment '사번',
    position VARCHAR(10) NOT NULL COMMENT '직책',
    name VARCHAR(20) NOT NULL COMMENT '이름',
    age INT NOT NULL COMMENT '나이',
    gender VARCHAR(10) NOT NULL COMMENT '성별',
    academic_ability VARCHAR(20) NOT NULL COMMENT '학력',
    birth DATE NOT NULL COMMENT '생년월일',
    tel_number VARCHAR(15) NOT NULL UNIQUE COMMENT '휴대전화번호',
    address TEXT NOT NULL COMMENT '주소',
    address_detail TEXT NOT NULL COMMENT '상세주소',
    join_date DATE NOT NULL COMMENT '입사일',
    resignation_date DATE COMMENT '퇴사일',
    department VARCHAR(45) DEFAULT '미정' COMMENT '부서',
    annual_income INT NOT NULL COMMENT '연봉',
    note TEXT COMMENT '비고'
    
    
    
);