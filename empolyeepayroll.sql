--UC1-creating database

create database payroll_service

--UC2 creating table
use payroll_service
create table employee_payroll(id int identity(1,1)primary key, name varchar(200),salary bigint, startdate date)

--UC3 inserting data to table

insert into employee_payroll values('Praveen',20000,'2022-09-12')
insert into employee_payroll values('Pramod',25000,'2022-09-12')
insert into employee_payroll values('Pranay',19000,'2022-09-12')
insert into employee_payroll values('Praneeth',20000,'2022-09-12')

insert into employee_payroll values('Rajashri',20000,'2022-03-12')
insert into employee_payroll values('Pavan',20000,'2022-03-12')
insert into employee_payroll values('Basila',20000,'2022-09-12')


--UC4 Retrieving data

select * from employee_payroll

--UC5
select * from employee_payroll where name='Pramod'

select * from employee_payroll where startdate BETWEEN cast('2022-04-12' as date) and getdate();

--UC6

alter table employee_payroll add gender char

update employee_payroll set gender='F' where name='Basila'

--UC7--
select Count(id) as TotalEmployee from employee_payroll

select name, sum(salary) as TotalSum from employee_payroll group by name

select min(salary) as minsalary from employee_payroll
select max(salary) as Tmaxsalary from employee_payroll

select avg(salary) as TotalAverage from employee_payroll

select name from employee_payroll order by name desc

--UC8 
alter table employee_payroll add phonenumber bigint
alter table employee_payroll add address1 varchar(200) not null default 'Hyderabad'
alter table employee_payroll add department varchar(100) not null default 'IT'


--UC9 

alter table employee_payroll add basicpay bigint, deductions bigint,taxable_pay bigint, income_tax bigint, net_pay bigint 






