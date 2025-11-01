create database school_system;
use school_system;
create table students(
student_id int primary key,
name varchar(50),
class varchar(3),
marks int);
insert into students(student_id,name,class,marks)values
(1,'Piyush','10A',90),
(2,'Aryan','12A',89),
(3,'Chetan','10A',88),
(4,'Saksham','12A',91),
(5,'Tushar','10A',92);
select * from students;
select name ,class,marks,
row_number() over(partition by class order by marks desc)as row_num
from students;
select name,class,marks,
rank() over(partition by class order by marks desc)as ranks_num
from students;
select name,class,marks,
dense_rank() over(partition by class order by marks desc) as dense_num
from students;
