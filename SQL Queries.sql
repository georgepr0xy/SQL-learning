select * from Worker where SALARY > 80000;
select * from Worker where department = 'Hr' or department='Admin';
select * from worker where department in ('hr','admin');
select * from worker where first_name NOT like 'V%';
select * from worker order by salary desc;
SELECT DISTINCT CITY FROM STATION WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%' OR CITY  LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U';
select * from worker;
select distinct DEPARTMENT from worker;
select department , count(DEPARTMENT) from worker group by DEPARTMENT;
SELECT DEPARTMENT,AVG(SALARY) FROM WORKER GROUP BY DEPARTMENT;
SELECT DEPARTMENT,MIN(SALARY) FROM WORKER GROUP BY DEPARTMENT;
SELECT DEPARTMENT,max(SALARY) FROM WORKER GROUP BY DEPARTMENT;
SELECT DEPARTMENT,SUM(SALARY) FROM WORKER GROUP BY DEPARTMENT;
SELECT SALARY, MIN(DEPARTMENT) FROM WORKER GROUP BY SALARY;
select first_name from worker order by FIRST_NAME asc;

select department, sum(salary) from worker group by department;
select department, count(department) from worker group by department;
select department, count(department) from worker group by department having count(department) > 2;

use temp;

CREATE TABLE Worker(
WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME CHAR(25),
LAST_NAME CHAR(25),
SALARY INT(15),
JOINING_DATE DATETIME,
DEPARTMENT CHAR(25)
);

create table Title(
WORKER_REF_ID INT,
WORKER_TITLE CHAR(25),
AFFECTED_FROM DATETIME,
foreign key (WORKER_REF_ID) 
 REFERENCES WORKER(WORKER_ID)
 ON delete cascade
 );
 
 create table account ( 
 id int primary key,
 name varchar(25) unique,
 balance int ,
 constraint acc_blnc_cheack check(balance>10000)
 );
 
insert into account(id,name,balance)
 values(
 1,'George',12000);
 
insert into account(id,name,balance)
 values(
 3,'aman',1000); 
 
 
 
drop table account;

create table exam(
id int primary key,
name varchar(25) unique,
sub_code int not null default 0
);

insert into exam(
id , name) values(
1,"george");

select * from examination;

alter table exam add column marks int not null default 0;
desc exam;
alter table exam modify marks float not null default 0;

alter table exam change column marks grade int ;

alter table exam drop column grade;
alter table exam rename to examination;





 
