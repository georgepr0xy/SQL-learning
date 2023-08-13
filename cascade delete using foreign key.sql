create table customer (
id int primary key,
cname varchar(256),
city varchar(256),
gender char(2),
pincode int
);

-- cacade is used-->
 
create table c_order (
order_id int,
ordername varchar(256),
address varchar(256),
foreign key(order_id) 
references customer(id)
on delete cascade
);

-- null is used on delete--->

create table c_order (
order_id int,
ordername varchar(256),
address varchar(256),
foreign key(order_id) 
references customer(id)
on delete set null
);

insert into customer values
(9,'george','prayagraj','m','211006'),
(10,'Prajjwal','Prayagraj','M', 211006),
(11,'Srishti','allapur','F', 211007),
(12,'Pranjal','Prayagraj','F', 211006),
(13,'Divya prakash','daraganj','M', 211003),
(14,'pinky','Prayagraj','F', 211006),
(15,'mayank tripathi','daraganj','M', 211003);

select * from customer;
select cname from customer where cname not like '%e';

insert into c_order values
(9,'mouse','allapur'),
(11,'table','allapur'),
(12,'chair','allapur'),
(13,'pen','allapur');

select * from c_order;

delete from customer where id = 13;
drop table c_order;
