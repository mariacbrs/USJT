CREATE DATABASE IF NOT EXISTS psc_Mooca;
SHOW DATABASES;
USE psc_Mooca;
CREATE TABLE IF NOT EXISTS student(
id_stu int primary key auto_increment,
name_stu varchar(40) not null,
uf_stu char(2) not null,
phone_stu bigint not null,
height decimal(3,2) not null 
);
ALTER TABLE student CHANGE COLUMN height height_stu decimal(3,2) not null;
INSERT INTO student(name_stu,uf_stu,phone_stu,height_stu) VALUES ("Maria Clara","SP", 11970759545, 1.60), ("Giovanna", "SP", 11993082560, 1.60);
SELECT * FROM student;
INSERT INTO student(name_stu,uf_stu,phone_stu,height_stu) VALUES 
("Leticia","SP", 11970759585, 1.70),
("Ana","SP", 11970789585, 1.75), 
("JP","SP", 11990759585, 1.80),
("Marcos","SP", 11920759585, 1.90),
("Vitoria", "SP", 11997082560, 1.65);

SHOW DATABASES;
USE person_db;

CREATE TABLE IF NOT EXISTS person(
 id_person int primary key auto_increment,
 name_person varchar(100),
 phone_person varchar(100),
 email_person varchar(100)
);

SELECT * FROM person;

INSERT INTO person(name_person, phone_person, email_person) VALUES 
("Maria Clara", "11989237252", "mariaclaraborgesrs@gmail.com"),
("Giovanna", "11989247252", "giovanna@gmail.com"),
("Ana", "11989238252", "ana@gmail.com"),
("Marcos", "11989257252", "marcos@gmail.com"),
("Pedro", "11987237252", "pedro@gmail.com"),
("Leticia", "11985237252", "leticia@gmail.com");




