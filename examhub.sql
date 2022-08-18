-- SET SQL_SAFE_UPDATES = 0;

-- CREATE SCHEMA nstest;

CREATE TABLE users (userid varchar(20), username varchar(50), name varchar(50) NOT NULL, email varchar(50), mobile bigint, password varchar(25), status int, usertype int);
-- #### CREATE TABLE users (userid varchar(20), username varchar(50), name varchar(50), email varchar(50), mobile bigint, password varchar(25), status int DEFAULT false, usertype int);

ALTER TABLE users MODIFY COLUMN status boolean DEFAULT false;
ALTER TABLE users MODIFY COLUMN usertype int DEFAULT 1;
-- #### ALTER TABLE users MODIFY COLUMN status boolean;

INSERT INTO users (userid, username, name, email, mobile, password, usertype) VALUES ('id0620', 'testusername', 'fullname', 'testtest@test.com', 1231231231, 'pass123pass', 1);

INSERT INTO users (userid, username, name, email, password, status, mobile, usertype) VALUES ('id0625', 'testusername', 'fullname', 'anurag2@test.com',  'pass123pass',  false,7889552252,'1');

INSERT INTO users (userid, username, name, email) VALUES ('id0626', 'testusername', 'fullname', 'anurag3@test.com');
INSERT INTO users (userid, username, name) VALUES ('id0628', 'testusername', 'fullname');

INSERT INTO users (	userid, username, name, email, mobile, password, status, usertype) VALUES ('01','rohitbahuguna','Rohit Bahuguna','rohitbahuguna@gmail.com',1025214524,'df33fd3fd2f1d',false,1);

INSERT INTO users (userid, username, name, email, mobile, password, status, usertype) VALUES ('id099', 'anurag1', 'Anurag', 'testtest@test.com', 1231231231, 'pass123',  false,  1);
INSERT INTO users (userid, username, name, email, mobile, password, status, usertype) VALUES('id001', 'abhi123', 'Abhinaysharma', 'abhi@gmail.com', 9938595891 , 'abhi@123', false, 1);
INSERT INTO users (userid, username, name, email, password, status, mobile, usertype) VALUES ('id045', 'usernamerahul', 'fullname', 'test@test.com',  'pass045pass',  false,7823242567,'1');
INSERT INTO users (userid, username, name, email, password, status, mobile, usertype) VALUES ('id051', 'mumtaj21', 'mumtaj', 'mumtaj@test.com',  'Mumtaj@pass',  true,  8877564275, 1);
INSERT INTO users (userid, username, name, email, password, usertype) VALUES ('id0622', 'testusername', 'fullname', 'testtest@test.com', 'pass123pass', 1);


-- ALTER TABLE users ADD test varchar(50);
-- ALTER TABLE users DROP COLUMN test;

-- SELECT * FROM users;

-- SELECT * FROM users WHERE email = 'testtest@test.com';

-- SELECT * FROM users WHERE email = 'testtest@test.com' LIMIT 1;

-- SELECT * FROM users WHERE email LIKE '%@gmail.com';

-- SELECT * FROM users WHERE email = 'abhi@gmail.com' AND password = 'abhi@123';

-- SELECT * FROM users WHERE email = 'abhi@gmail.com' OR email = 'testtest@test.com';
-- SELECT * FROM users WHERE mobile IS NOT NULL;

-- SELECT * FROM users WHERE mobile IS NULL;

-- DROP TABLE users;
-- TRUNCATE TABLE users;
ALTER TABLE users ADD PRIMARY KEY (userid);
ALTER TABLE users ADD UNIQUE KEY (email);
-- SELECT * FROM users WHERE email LIKE '%@gmail.com' AND status = false;
-- SELECT * FROM users WHERE email IS NOT NULL OR status = 0;
-- SELECT * FROM users WHERE email = 'tsettset@tset' AND status = false;
-- SELECT * FROM users WHERE email LIKE '%gmail.com' and status = false;
-- SELECT  * FROM users WHERE email LIKE '%test%' AND status = false;
-- SELECT * FROM users WHERE email LIKE '%@gmail.com' AND status = false;

CREATE TABLE user_details (userid varchar(20), gender varchar (10), address varchar (50), profilepic varchar(200), pincode bigint, contact bigint, city varchar (50), country varchar(50), college varchar (50), company varchar (50), age int, course varchar (50), gradyear year, accountdate date, lastlogin timestamp );
-- ALTER TABLE users ADD PRIMARY KEY (userid);
-- ALTER TABLE user_details ADD FOREIGN KEY (userid) REFERENCES users(userid);
---------------------------------------------------
-- ALTER TABLE users DROP FOREIGN KEY userid;
-- ALTER TABLE user_details DROP FOREIGN KEY userid;
-- ALTER TABLE users DROP userid;
-- ALTER TABLE user_details DROP userid;
-- ALTER TABLE users ADD COLUMN userid VARCHAR (20);
-- ALTER TABLE user_details ADD COLUMN userid VARCHAR (20);

---------------------------------------------------------
INSERT INTO user_details (userid , gender , address, profilepic , pincode , contact , city , country , college , company , age , course, gradyear , accountdate  , lastlogin  ) VALUES ('id012', 'Male', 'ludhiana,punjab','------', 141013,7584142965,'Ludhiana','India','GNDEC','Newton School',22,'Fullstack Development',2022, 29/07/2022,29/07/2022);

INSERT INTO user_details (userid, gender) VALUES ('id001', 'male');
INSERT INTO user_details (userid, gender,  address, profilepic, pincode, contact, city, country, college, company, age, course) VALUES ('id0622', 'male', 'city abcd, District zxy, State M.P.', 'https://freesvg.org/img/1555073263.png',  461111,  32446454,  'Bhopal',  'India', 'M.G.M. college', 'Newton School', 20, 'BA');
INSERT INTO user_details ( userid , gender , address  , profilepic ,pincode ,contact ,city ,country ,college ,company ,age ,course ,gradyear ,accountdate ) VALUES ('01','male','bokaro steel city',null,80001,1025214524,'bokaro','India','abcd','sff', 23,'frontend dev', '2021', '2022-11-11');

INSERT INTO user_details (userid , gender , address , profilepic , pincode , contact , city, country, college , age , course  , gradyear , accountdate , lastlogin  ) VALUES ('01','male','Haldwani', 'image url' ,  263139, 1245325415 , 'Nainital' ,'india', 'DSB campus nainital', 24 , 'BVocAMA',2022 , '2021-11-11' , '2022-07-29 22:36:17');
INSERT INTO user_details (userid, gender,  address, profilepic, pincode, contact, city, country, college, company, age, course,  gradyear,  accountdate, lastlogin) VALUES ('suvro96','male','naihati','https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png',  7212136,  9852145454,  'Kolkata',  'India', 'RBC college', 'Life.Co', 20, 'BSC', "2023", "2022-07-29", '2022-07-29 22:36:17');
 INSERT INTO user_details (userid , gender , address, profilepic , pincode , contact , city , country , college , company , age , course, gradyear , accountdate  , lastlogin  ) VALUES ('id013', 'Male', 'ludhiana,punjab','------', 141013,7584142965,'Ludhiana','India','GNDEC','Newton School',22,'Fullstack Development','2022', '29/07/2022,29/07/2022');
-- SELECT * FROM user_details;

-- SELECT * FROM user_details WHERE gender = 'male';
-- SELECT * FROM user_details WHERE gradyear IS NOT null ORDER BY gradyear DESC;
-- SELECT * FROM user_details WHERE gradyear IS NOT null ORDER BY gradyear DESC LIMIT 3;

-- SELECT * FROM user_details WHERE gradyear >= '2022' ;

--  DELETE FROM user_details WHERE userid='id0622';	id0621 			id0620
 UPDATE user_details SET address = 'MP, India' WHERE userid = 'id0622';
 UPDATE users SET username = 'Tom' WHERE userid = 'id0621';
 UPDATE users SET username = 'Jerry' WHERE userid = 'id0620';
Update users SET username = 'anurag1' WHERE userid = 'id0622';
Update users SET name = 'anurag' WHERE userid = 'id0622';
Update users SET email = 'anurag1@test.com' WHERE userid = 'id0622';

UPDATE user_details SET username = "user0621" WHERE userid= "id0621";
UPDATE user_details SET name = "User 0621" WHERE userid= "id0621";
UPDATE user_details SET email = "user0621@gmail.com" WHERE userid= "id0621";

UPDATE users SET username='himmad', name='ameen', email='ameenh@gmail.com' WHERE userid='id0620';

Update users SET username = 'Bharatgl' WHERE userid = 'id0621';
Update users SET name = 'bharat' WHERE userid = 'id0621';
Update users SET email = 'bharatg@test.com' WHERE userid = 'id0621';



-- SELECT users.name, user_details.gender FROM users INNER JOIN user_details ON users.userid = user_details.userid;
-- SELECT users.name, user_details.gender FROM users INNER JOIN user_details ON users.userid = user_details.userid WHERE user_details.gender = 'male';
-- users - name
-- user_details - gender
-- users.userid =========== user_details.userid

-- ----------------------------------------------------------------------------------
-- UPDATE users SET email = 'abc@gmail.com' WHERE userid = 'id006' IS NULL;
-- DELETE FROM users WHERE userid = 'id006';
-- UPDATE user_details SET userid = 'id004' WHERE contact = '32446454';
















-- CREATE TABLE question(qs_id varchar(20) PRIMARY KEY,subjet_id varchar(20) NOT NULL,question varchar(500) UNIQUE KEY NOT NULL, answer1 varchar(200) NOT NULL, answer2 varchar(200) NOT NULL, answer3 varchar(200), answer4 varchar(200), answer5 varchar(200), correctanswer int NOT NULL, maxmarks int DEFAULT 4, negativemark int DEFAULT 1, difficultylevel int DEFAULT 1);
-- ALTER TABLE question RENAME TO questions;
-- ALTER TABLE questions AUTO_INCREMENT = 1;
-- ALTER TABLE questions MODIFY qs_id bigint NOT NULL;
-- ALTER TABLE questions CHANGE subjet_id subject_id varchar(20);
-- DROP TABLE questions;

-- CREATE TABLE questions(qs_id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY,subject_id varchar(20) NOT NULL,question varchar(500) UNIQUE KEY NOT NULL, answer1 varchar(200) NOT NULL, answer2 varchar(200) NOT NULL, answer3 varchar(200), answer4 varchar(200), answer5 varchar(200), correctanswer int NOT NULL, maxmarks int DEFAULT 4, negativemark int DEFAULT 1, difficultylevel int DEFAULT 1);


-- INSERT INTO questions(subject_id, question, answer1, answer2, answer3, answer4, answer5, correctanswer) VALUES( '1',' What is the value of 16*5 ?', '45','90','60', '80', '40', 4);
-- INSERT INTO questions(subject_id,question,answer1, answer2, answer3, answer4,correctanswer) VALUES ('1','A line which cuts a pair of parallel lines is called','tangent','chord','transversal','intersector',3);
-- INSERT INTO questions (subject_id,question,answer1,answer2,answer3,answer4, correctanswer)  VALUES ('2',"What is the capital of the newly formed Union Territory of Dadra and Nagar Haveli and Daman and Diu?","Daman","Nagar Haveli","Dadra","Silvassa",1);
-- INSERT INTO questions(subject_id, question, answer1, answer2, answer3, answer4, correctanswer)  VALUES('2', 'Study of interaction between living organisms and environment is known as?', ' Pedology', 'Ecology', 'Biology', 'Zoology', 2 );

-- INSERT INTO questions (subject_id,question,answer1,answer2,answer3,answer4,correctanswer)  VALUES (02,"Defence Research and Development Organisation (DRDO), along with which private firm, has developed a face shield for doctors and medical staff treating COVID-19 patients?","Tata","Larsen &Toubro","Wipro","HCL",3);

-- INSERT INTO questions (subject_id,question,answer1,answer2,answer3,answer4,correctanswer)  VALUES (02,"What is the term of the 22nd Law Commission of India, recently approved by the Union Cabinet of India?","Two years","Three year","Five year","six year",2);

-- INSERT INTO questions (subject_id,question,answer1,answer2,answer3,answer4,correctanswer)  VALUES (2,"Jharkhcegrwgrfacture, sale and storage of 11 brands of pan masala for a year, to curb which harmful chemical present in them?","Magnesium carbonate","Magnesium chloride","Magnesium oxide","Sodium carbonate",1);


-- SELECT LAST_INSERT_ID();


-- SELECT COUNT(*) FROM questions;
-- SELECT MIN(mobile) FROM users;
-- SELECT MAX(mobile) FROM users;
-- SELECT SUM(mobile) FROM users;

 -- SELECT DISTINCT mobile FROM users;

-- SELECT * FROM USERS ORDER BY mobile DESC;

-- SELECT * FROM questions WHERE qs_id BETWEEN 5 AND 25;

-- SELECT * FROM questions WHERE qs_id IN (1,3,5,8);

-- SELECT city, COUNT(city) FROM online_exam.user_details GROUP BY city;

-- SELECT city, COUNT(city) count_city FROM online_exam.user_details GROUP BY city HAVING count_city > 2;




-- --------------------------------------------------------------
CREATE TABLE exams (exam_id bigint NOT NULL AUTO_INCREMENT PRIMARY KEY, exam_name varchar(200) NOT NULL, subject_id varchar(20) NOT NULL,date DATE, time TIME, duration INT NOT NULL, total_questions INT NOT NULL, negativemarking INT DEFAULT 0);
