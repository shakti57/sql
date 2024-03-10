use cds16;
select * from Advertising;


use classicmodels;
select* from customers;
select contactLastName,contactFirstName,country
from customers;

select * from employees;
select employeeNumber,lastName
from employees;

select * from offices;
select city,postalCode
from offices;


select distinct (country)
from customers;

select contactLastName,contactFirstName,country
from customers
where country='USA';

select contactLastName,contactFirstName,country
from customers
where creditLimit>100000;


select contactLastName,contactFirstName,country
from customers
where creditLimit<=50000;

select contactLastName,contactFirstName,country
from customers
where creditLimit>80000 and country='USA';

select contactLastName,contactFirstName,country
from customers
where creditLimit>100000 or country='france';





select contactLastName,contactFirstName,country
from customers
where not country='USA';


select contactLastName,contactFirstName,creditLimit
from customers
order by creditLimit desc;

select contactLastName,contactFirstName,creditLimit
from customers
order by contactFirstName  asc;


select contactLastName,contactFirstName,creditLimit,country
from customers
where country='italy'
order by contactFirstName  desc;

select contactLastName,contactFirstName,creditLimit,country,state
from customers
where state is null
order by contactFirstName  desc;

select contactLastName,contactFirstName,creditLimit,country,state
from customers
where state is  not null
order by contactFirstName  desc;

select contactLastName,contactFirstName,creditLimit,country
from customers
where country='UK'
order by creditLimit desc
limit 5;

select contactLastName,contactFirstName,creditLimit,country
from customers
where country='UK' or country='France' or country='USA'
order by creditLimit desc;


select contactLastName,contactFirstName,country
from customers
where country in ('usa','uk','france');


select contactLastName,contactFirstName,creditLimit,country
from customers
where creditLimit between 75000 and 100000; 


select contactFirstName,contactLastName,creditLimit,country
from customers
where contactFirstName like 'a%';

select contactLastName,contactFirstName,creditLimit,country
from customers
where contactLastName like '%z';


select contactLastName,contactFirstName,creditLimit,country
from customers
where contactFirstName like 's%n';


select contactLastName,contactFirstName,creditLimit,country
from customers
where contactLastName like '%an%';

select count(country)
from customers;

select count(country) as Num_of_country
from customers;

select avg(creditlimit)as AvgLimit
from customers;

select avg(creditlimit)as AvgLimit
from customers
where country='usa';

select sum(creditlimit)as totalCreditLimit
from customers;


select sum(creditlimit)as totalCreditLimit
from customers
where country ='france';

select min(creditlimit)as totalCreditLimit
from customers
where country ='uk';

select max(creditlimit)as totalCreditLimit
from customers;

select max(creditlimit)as totalCreditLimit
from customers
where country ='uk';


select * from payments;

select max(amount)
from payments;

select min(amount)
from payments;

select avg(amount)
from payments;

select count(amount)
from payments;


select sum(amount)
from payments;

select std(amount)
from payments;


select country,count(contactFirstName) as custCount
from customers
group by country
order by custCount desc
limit 10;

select country,min(creditlimit) as Climit
from customers
group by country
order by Climit desc;



select country,max(creditlimit) as Climit
from customers
group by country
order by Climit desc;

select country,avg(creditlimit) as Climit
from customers
group by country
order by Climit desc;

select country,count(creditlimit) as custCount,sum(creditLimit)as totalCredit,
avg(creditlimit)as avgcredit,min(creditlimit)as minCredit,max(creditlimit)as maxCredit
from customers
group by country;

select country,count(creditlimit),max(creditlimit)
from customers
where creditlimit>100000
group by country;

select country,max(creditlimit),count(creditlimit)as cnt
from customers
group by country
having  cnt>1;

select country,count(creditlimit) as custCount,sum(creditLimit)as totalCredit,
avg(creditlimit)as avgcredit,min(creditlimit)as minCredit,max(creditlimit)as maxCredit
from customers
group by country
having avgcredit>75000;


select country,count(creditlimit) as custCount,sum(creditLimit)as totalCredit,
avg(creditlimit)as avgcredit,min(creditlimit)as minCredit,max(creditlimit)as maxCredit
from customers
group by countryemployees
having avgcredit>75000
order by avgcredit desc;


