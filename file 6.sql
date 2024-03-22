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



select*from customer
where customer_id=(select customer_id from order_table
where amount = (select max(amount)from order_table));

select*from customer
where customer_id=(select customer_id from order_table
where amount in (select avg(amount)from order_table));

select*from customer
where age=(select min(age)
from customer);

use classicmodels;
select* from payments;



select*from customers
where customerNumber in(
select customerNumber 
from payments
where amount > (select avg(amount)from payments));


select*from customers
where vintageCars in(
select vintageCars
from productlines)orders;
select*  from orderdetails;

select* from customers
where customernumber in (select customernumber from orders
where ordernumber in (select ordernumber from orderdetails
where productcode in (select productcode from products
where productline='vintage cars')));


select* from employees
where officecode = (select officecode from offices
where city='boston');

use sakila;
select*from film actor;
select*from film;
select*from actor;

select* from actor
where actor_id in (select actor_id 
from film actor
where film_id in (select film_id 
from film
where rating='PG'
));
use sakila;
select f.film_id,f.title,f.rating,fa.film_id,fa.actor_id
from film as f inner join film_actor as fa
on f.film_id =fa.film_id;

select f.film_id,f.title,f.rating,fa.film_id,fa.actor_id
from film as f right join film_actor as fa
on f.film_id =fa.film_id;


select f.film_id,f.title,f.rating,fa.film_id,fa.actor_id
from film as f inner join film_actor as fa
on f.film_id =fa.film_id
union
select f.film_id,f.title,f.rating,fa.film_id,fa.actor_id
from film as f right join film_actor as fa
on f.film_id =fa.film_id;

use classicmodels;
select productCode,productName, productLine,msrp
from products
where msrp =194.57;

select productCode,productName, productLine,msrp
from products
order by msrp desc;

select productCode,productName,productLine,msrp
from products
where msrp=(select max(msrp)from products)
where msrp<(select max(msrp)from products)
where msrp<(select max(msrp)from products)));

select productCode,productName,productLine,msrp
from products
where msrp=(select max(msrp)from products
where msrp<(select max(msrp)from products
where msrp<(select max(msrp)from products)));
