CREATE DATABASE quan_ly_sinh_vien;
USE quan_ly_sinh_vien;

CREATE TABLE Student ( 
student_id int Primary key auto_increment,
full_name VARCHAR(100) Not null unique,
date_of_birth DATE not null,
sex BIT Default 1, -- 0: nữ , -- 1: nam,
phone varchar(11) not null unique,
address varchar(150) not null,
point INT NOT NULL DEFAULT 100 CHECK (point >= 0)
);

INSERT INTO Student (full_name, date_of_birth, sex, phone, address, point)
VALUES
('Nguyen Van A', '2003-01-12', 1, '0911111111', 'Hà Nội', 85),
('Nguyen Thi B', '2003-05-20', 0, '0922222222', 'Hà Nội', 95),
('Le Van C', '2002-09-15', 1, '0933333333', 'Đà Nẵng', 70),
('Pham Thi D', '2004-02-10', 0, '0944444444', 'TP HCM', 88),
('Hoang Van H', '2002-11-22', 1, '0955555555', 'Hải Phòng', 60),
('Nguyen Thi L', '2003-03-30', 0, '0966666666', 'Hà Nam', 100),
('Tran Xuan T', '2004-07-11', 1, '0977777777', 'Ninh Bình', 20),
('Do Thi Q', '2003-06-25', 0, '0988888888', 'Hải Dương', 40),
('Pham Van V', '2002-10-05', 1, '0999999999', 'Nam Định', 55),
('Bui Thi K', '2003-04-14', 0, '0900000000', 'Quảng Ninh', 82);

UPDATE Student
SET point = 60
WHERE sex = 1;

DELETE FROM Student
WHERE point < 30;

SELECT student_id AS 'Mã Sinh Viên', full_name AS 'Tên Sinh Viên', IF(Sex=1,N'Nam', N'Nữ') AS 'Giới tính' , point AS 'Điểm'
FROM Student;

SELECT full_name, date_of_birth, sex, point
FROM Student
WHERE point >= 80;



