use temp;

create table department1 (
empid int primary key,
name varchar(256),
role varchar(256)
);
select * from department1;



insert into department1 values 
(1,'A','engineer'),
(2,'B','Salesman'),
(3,'C','manager'),
(4,'D','salesman'),
(5,'E','engineer');




create table department2 (
empid int primary key,
name varchar(256),
role varchar(256)
);

select * from department2;

insert into department2 values 
(3,'C','manager'),
(6,'F','marketing'),
(7,'G','Salesman');

-- list out all the employee wo worked 
-- union operatio

select * from department1
union
select * from department2;

-- list  out all the employee who work for both department 
-- intersect operation which is emulated by inner join


select department1.* from department1
inner join
department2 using(empid);

-- list out all the employee who work in department1 but not in department2
-- minus opertaion emulated by left join 

select department1.* from department1
left join
department2 using(empid)
where department2.empid  is null;

