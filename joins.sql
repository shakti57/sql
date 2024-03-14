#joins...



use cds16;

create table customer(
customer_id int,
f_name VARCHAR(20),
l_name VARCHAR(20),
age int,
country VARCHAR(20));

INSERT INTO customer VALUES
(1,'John','Doe',32,'USA'),
(2,'Robert','Luna',22,'USA'),
(3,'David','Robinson',22,'UK'),
(4,'John','David',25,'UK'),
(5,'Betty','Doe',28,'UAE');

SELECT * FROM customer;

create table order_table(
order_id int,
amount int,
customer_id int);


INSERT INTO order_table VALUES
(1,200,4),
(2,500,10),
(3,300,3),
(4,800,1),
(5,150,2);

SELECT* FROM order_table;

select*
from customer
where age > (select avg(age)
from customer);

use cds16;

create table employee2(
empid varchar(20),
ename varchar(20),
salary int,
depid varchar(20));

insert into employee2 values 
('E1','john',45000,'D1'),
('E2','mary',60000,'D2'),
('E3','steve',73000,'D3'),
('E4','helen',86000,'D4'),
('E5','joe',35000,'D7');

select * from employee2;

create table department (
depid varchar(20),
dname varchar(20));


insert into department values
('D1','IT'),
('D2','HR'),
('D3','Admin'),
('D4','Finance'),
('D5','Sales');
select* from department;

select e.empid,e.ename,e.salary,d.depid,d.dname
from employee2 as e inner join department as d
on e.depid = d.depid;

select e.empid,e.ename,e.salary,d.depid,d.dname
from employee2 as e left join department as d
on e.depid = d.depid;

select e.empid,e.ename,e.salary,d.depid,d.dname
from employee2 as e right join department as d
on e.depid = d.depid;

select e.empid,e.ename,e.salary,d.depid,d.dname
from employee2 as e left join department as d
on e.depid = d.depid
union
select e.empid,e.ename,e.salary,d.depid,d.dname
from employee2 as e right join department as d
on e.depid = d.depid;
