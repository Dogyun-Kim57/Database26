
use practice_db;

-- ---------------------------------------------------------------------------
-- pmmbers ( 객체 데이터 )
-- ---------------------------------------------------------------------------
DROP TABLE Pmembers;

CREATE TABLE pmembers (

	id				 INT AUTO_INCREMENT PRIMARY KEY,
	uid				 VARCHAR(50) NOT NULL UNIQUE,
	password		 VARCHAR(255) NOT NULL,
	name			 VARCHAR(50) NOT NULL,
	age 			 INT NOT NULL,
	role			 ENUM('admin','manager','user') DEFAULT 'user',
	active 			 BOOLEAN DEFAULT TRUE,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP

);

INSERT INTO pmembers (uid, password, name, age, role, active)
VALUES ('kdg','1234','김도균',38,'admin',true);
INSERT INTO pmembers (uid, password, name, age, role, active)
VALUES ('kjh','5691','김재현',33,'manager',true);
INSERT INTO pmembers (uid, password, name, age, role, active)
VALUES ('psh','5578','박승현',38,'user',true);
INSERT INTO pmembers (uid, password, name, age, role, active)
VALUES ('kk1','3357','김보름',33,'user',true);
INSERT INTO pmembers (uid, password, name, age, role, active)
VALUES ('kk7','3487','김민수',27,'user',true);
INSERT INTO pmembers (uid, password, name, age, role, active)
VALUES ('kdz','1251','김형서',22,'user',true);
INSERT INTO pmembers (uid, password, name, age, role, active)
VALUES ('psy','1555','박소연',34,'user',true);

SELECT * FROM pmembers;
-- ---------------------------------------------------------------------------
--  그룹 연습용 ( 객체 데이터 )
-- ---------------------------------------------------------------------------
DROP TABLE gmembers;

create table gmembers ( 
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  gender CHAR(1),          
  city VARCHAR(50)
);

INSERT INTO gmembers (name, age, gender, city) VALUES
('Kim', 25, 'M', 'Seoul'),
('Lee', 32, 'F', 'Busan'),
('Park', 41, 'M', 'Seoul'),
('Choi', 29, 'F', 'Seoul'),
('Jung', 35, 'M', 'Busan'),
('Han', 28, 'F', 'Daegu');

select * from gmembers;




