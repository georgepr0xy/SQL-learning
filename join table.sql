create database join_op;
use join_op;
drop table employee;

create table employee(
id int primary key,
fname varchar(30),
lname varchar(30),
age int(3),
emailid varchar(256),
phoneNo int,
city varchar(25)
);

select * from employee;

insert into employee values
(1,'Aman','Proto',32,'aman@gmail.com',898,'Delhi'),
(2,'Yagya','narayan',44,'yagya@gmail.com',222,'palam'),
(3,'Rahul','Bd',22,'rahul@gmail.com',444,'kolkata'),
(4,'jatin','hermit',31,'jatin@gmail.com',666,'raipur'),
(5,'Pk','Pandey',21,'pk@gmail.com',555,'jaipur');

create table project(
id int,
empid int,
name varchar(256),
startdate date,
clientid int,
foreign key(empid)
references employee(id)
on delete cascade
);

select * from project;

insert into project values
(1,1,'A','2021-04-21',3),
(2,2,'B','2021-03-21',1),
(3,3,'C','2021-01-21',5),
(4,3,'D','2021-04-21',2),
(5,5,'E','2021-05-21',4);

CREATE TABLE client(
id int,
first_name varchar(256),
last_name varchar(256),
age int,
emailid varchar(256),
phoneNo int,
city varchar(25),
empId int,
foreign key(empid)
references employee(id)
);

select * from client;
drop table client;

insert into client values
(1,'mac','Rogers',47,'mac@gmail.com',333,'kolkata','3'),
(2,'max','poirier',27,'mqx@gmail.com',222,'kolkata','3'),
(3,'peter','jain',24,'peter@gmail.com',111,'delhi','1'),
(4,'sushatant','aggarwal',23,'sushant@gmail.com',45454,'hyderabad','5'),
(5,'Pratap','singh',36,'pratap@gmail.com',2323,'mimbai','2');

-- inner join 
-- enlist all employee id  name , along with there project allocatd to them

select e.id, e.fname, e.lname , p.id , p.name from employee as e
inner join project as p on e.id = p.empid;

select * from employee as e
inner join project as p on e.id = p.empid;

-- fetch all the emp id and contact detail who is working from jaipur with client name who working fromm hyderbad

select e.id , e.emailid, e.phoneNo, c.first_name, c.last_name from employee as e
inner join client as c  on e.id = c.empid where e.city ='jaipur' and c.city='hyderabd';




