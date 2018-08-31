

drop schema if exists training ;
create schema training;



create sequence training.Course_seq;

create table training.Course (
  id int primary key default nextval ('training.Course_seq') ,
  title  varchar(1000),
  duration int
);

create sequence training.Student_seq;

create table training.Student (
  id int primary key default nextval ('training.Student_seq') ,
  username  varchar(1000),
  email varchar(1000),
  tokens int default 0
);

create sequence training.Event_seq;

create table training.Event (
  id int primary key default nextval ('training.Event_seq') ,
  startDate date,
  course_id  int,
  foreign key (course_id) references training.Course (id)
);

create sequence training.Enrollment_seq;

create table training.Enrollment(
  id int primary key default nextval ('training.Enrollment_seq') ,
  event_id int,
  student_id int,
  foreign key (event_id) references training.Event (id),
  foreign key (student_id) references training.Student(id)
);

insert into training.Course (title, duration) values ('mybatis for dummies',2),('slick for dummies',2);

INSERT INTO training.Student (username, email) VALUES ('jennifer', 'jenny@work.dk'),('narendra','narendra@home.co.uk');

insert into training.Event (startDate,course_id) values (NOW()+'15 days',1);

INSERT INTO training.Enrollment (event_id,student_id) VALUES (1,1),(1,2);
