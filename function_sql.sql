select concat(contactFirstName,' ',contactLastName)as full_name
from customers;

select substring('Hello World',1,5);

select substring('Hello World',3,8);
select substring('Hello World',5,7);

select upper('hello') as upper_case;
select lower('HELLO') as Lower_case;

select length('Hello world') as len_of_Str;

select trim('    Hello     ');
select trim(leading '0' from '000123');

select replace('hello World', 'World' ,'Universe');

select instr('hello world', 'world');

select reverse('Hello');

select left('hello world',5);
select right('hello world',5);

select locate('l','hello');
select locate('','hello');

select abs(-10);

select round(3.146789,2);

select ceiling(3.5),floor(3.5);

select sqrt(256);

select power(2,3);

select now();

select curdate();

select curtime();

select date_add('2024-05-20',interval 1 month );

select datediff('2024-05-21','1996-08-15');

select date_format(now(),'%Y-%m-%d');

select date_format(now(),'%d-%m-%Y');
select date_format(now(),'%m-%d-%Y');

select dayofweek('2024-05-21');
select dayofweek(now());


select * from employee;

select
	empid,
    ename,
    depid,
    row_number() over (partition by depid order by empid)
    as row_num
from
	employee;


select * from employees;

select
	employeeNumber,
    firstName,
    officeCode,
    row_number() over (partition by officeCode order by employeeNumber)
    as row_num
from
	employees;
    
    
    select
	empid,
    ename,
    Salary,
    rank() over (partition by depid order by Salary desc)
    as rnk
from
	employee1;
    
    
    create table employee1 (
empid  varchar(20) ,
ename varchar(20),
Salary int,
depid varchar(20)
);

insert into employee1
values('E1','John',45000, 'D1'),
('E2', 'Mary', 60000 ,'D1'),
('E3', 'Steve', 73000, 'D1'),
('E4', 'Helen', 86000, 'D1'),
('E5', 'Joe', 35000, 'D1');

select
	empid,
    ename,
    Salary,
    rank() over ( order by Salary desc)
    as rnk
from
	employee;



select
	empid,
    ename,
    Salary,
    ntile(4) over(order by Salary desc) as quartile
from
	 employee;
     
     