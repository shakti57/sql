#basic query




show databases;

create database cds16;
create database sample;
drop database sample;
show databases;


show tables;

use cds16;
create table employee_details(
 emp_id varchar(8),
 emp_name varchar(20),
 emp_designation varchar(20),
 emp_age int);
create table student_Details(
student_name varchar(20),
student_Rollno varchar(20),
student_addrs text(100),
student_contact varchar(100));


show tables;
drop table employee_details;
show tables;



create table employee_details(
 emp_id varchar(8),
 emp_name varchar(20),
 emp_designation varchar(20), 			
 emp_age int);
 
 
 insert into employee_details
 values('E1','ABC','XYZ',35);
 
 select * from employee_details;
 insert into employee_details values
 ('E2','shakti','HR',30),
 ('E3','prasad','EMP',20),
 ('E4','mihir','DA',22),
 ('E5','sudarshan','DS',35),
 ('E6','prajwal','DEV',40);
 
 select* FROM employee_details;
 
 
 
 
 update employee_details
 set emp_age=55
 where emp_id='E6';
  select* FROM employee_details;
  
  update employee_details
  set emp_name='shakti ranjan'
  where emp_id='E2';
   select* FROM employee_details;
   
   
    update employee_details
  set emp_name='shakti r'
  where emp_age=30;
  select* FROM employee_details;
  
  delete from employee_details where emp_id='E6';
  
   select* FROM employee_details;
   
   describe employee_details;
   
   
   alter table employee_details 
   add city varchar(20);
   describe employee_details;
   
   alter table employee_details
   drop column city;
   describe employee_details;
   
   alter table employee_details
   modify emp_designation varchar(50);
   
    describe employee_details;
    
    alter table employee_details
    rename column emp_age to age;
     describe employee_details;
     
     alter table employee_details
     rename to employee;
     
     select* from employee;
     
     
     truncate table employee;
       select* from employee;
       
       
       
