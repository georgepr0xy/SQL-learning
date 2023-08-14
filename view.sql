use temp;

create table cust (
id int primary key,
cname varchar(256),
city varchar(256),
gender char(2),
pincode int
);


insert into cust values
(9,'george','prayagraj','m','211006'),
(10,'Prajjwal','Prayagraj','M', 211006),
(11,'Srishti','allapur','F', 211007),
(12,'Pranjal','Prayagraj','F', 211006),
(13,'Divya prakash','daraganj','M', 211003),
(14,'pinky','Prayagraj','F', 211006),
(15,'mayank tripathi','daraganj','M', 211003);

select * from cust;

-- view---------------------->

create view cust_view as select id, cname,gender from cust;
create view cust_view as select id, cname,gender from cust;

select * from cust_view;

-- deleting view if exists-------------------------->

drop view if exists cust_view;

-- alter view ----------------------------->

alter view cust_view as select id , city from employee;

select * from cust_view;






