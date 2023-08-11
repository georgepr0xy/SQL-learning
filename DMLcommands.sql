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
