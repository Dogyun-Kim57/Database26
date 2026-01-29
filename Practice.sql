USE practice_db;
SELECT DATABASE();

CREATE TABLE IF NOT EXISTS members (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(30) NOT NULL UNIQUE,
  password VARCHAR(100) NOT NULL,
  role ENUM('student','admin') NOT NULL DEFAULT 'student',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO members (username, password, role)
VALUES ('kim','1234','student'), ('admin','adminpw','admin');

SELECT * FROM members;

USE practice_db;

SHOW TABLES;
DESC members;

INSERT INTO members (username, password, role)
VALUES ('lee','1111','student');

SELECT * FROM members;

SELECT id, username, role
FROM members
WHERE role = 'student';

SELECT id, username, role
FROM members
WHERE username='lee' AND password='1111';

SELECT * FROM members WHERE username='lee';

DELETE FROM members
WHERE username='lee';

SELECT * FROM members;

SELECT username, password FROM members;