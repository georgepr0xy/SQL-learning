create table customer (
id int primary key,
cname varchar(256),
city varchar(256),
gender char(2),
pincode int
);


create table c_order (
order_id int primary key,
ordername varchar(256),
address varchar(256),
foreign key(order_id) 
references customer(id)
on delete cascade
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

insert into c_order values
(9,'mouse','allapur'),
(10,'keyboard','allapur'),
(11,'table','allapur'),
(12,'chair','allapur'),
(13,'pen','allapur');

select * from c_order;

delete from customer where id = 10;
