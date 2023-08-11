create table customer (
id int primary key,
cname varchar(256),
city varchar(256),
gender char(2),
pincode int
);

insert into customer(id,cname,city,gender,pincode) values
(11,'George','Prayagraj','M', 211006);

insert into customer(id,cname) values
(121,'province');

update customer set city = 'hyderabad', gender = 'M',pincode = 211002 where id = 121;

delete from customer where id = 121;
select * from customer;

insert into customer(id,cname,city,gender,pincode) values
(10,'Prajjwal','Prayagraj','M', 211006),
(11,'Srishti','allapur','F', 211007),
(12,'Pranjal','Prayagraj','F', 211006),
(13,'Divya prakash','daraganj','M', 211003),
(14,'pinky','Prayagraj','F', 211006),
(15,'mayank tripathi','daraganj','M', 211003);

select * from customer;
-- update multiple rows 
-- to turn safe mode off 
set sql_safe_updates = 0;
update customer set pincode = 211005;
update customer set pincode = pincode + 1;

delete from customer where id = 10;
delete from customer;
