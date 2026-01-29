select @@hostname;

# 이 창은 메모장처럼 사용됨
# 스크립트를 1줄씩 실행하는것이 기본임 ( CTRL + ENTER )
# 만약 더미데이터를 20개 입력한다 !! ( 블럭설정 CTRL + SHIFT + ENTER ) addresscategory

use sakila; -- sakila 데이터베이스에 가서 사용할게!!
select * from actor; -- actor 테이블에 모든 값을 가져와!

use world;     -- wolrd 데이터 베이스에 가서 사용할게!!
select * from city;  -- city 테이블에 모든 값을 가져와!

DROP DATABASE IF EXISTS lms;
CREATE DATABASE lms DEFAULT CHARACTER SET uft8mb4 COLLATE utfmb4_general_ci;
SHOW DATABASES;
USE lms;


CREATE TABLE members (
	id           INT AUTO_INCREMENT PRIMARY KEY,
    uid          VARCHAR(50) NOT NULL UNIQUE,
    password     VARCHAR(255) NOT NULL,
    name         VARCHAR(50) NOT NULL,
    role         ENUM('admin','manager','user') DEFAULT 'user',
	active       BOOLEAN DEFAULT TRUE,
    created_at   DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE boards (
	id           INT AUTO_INCREMENT PRIMARY KEY,
    member_id    INT NOT NULL,
    title        VARCHAR(200) NOT NULL,
    content      TEXT NOT NULL,
    created_at   DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (member_id) REFERENCES member(id)
);


    
