CREATE DATABASE IF NOT EXISTS universidade;
USE universidade;
Create table if not exists student(
	id_stu int primary key auto_increment,
    name_stu varchar(60) not null,
    age_stu int not null,
    ra_stu int not null,
    email_stu varchar(100),
    phone_stu varchar(100)
);
ALTER TABLE student CHANGE COLUMN email_stu email_stu varchar(100) not null;
select * from student;
create table if not exists teacher(
	id_teacher int primary key auto_increment,
    name_teacher varchar(60) not null,
    age_teacher int not null,
    email_teacher varchar(100) not null
);
select * from teacher;
alter table teacher add column id_stu int;
alter table teacher add constraint fk_StuTeacher foreign key (id_stu) references student(id_stu);
select * from teacher;
describe table teacher; 

select * from student;
