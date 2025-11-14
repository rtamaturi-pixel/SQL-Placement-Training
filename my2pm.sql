show databases;
create database my2pm;
use my2pm;
show tables;
create table student
(sid int,
sname varchar(30),
fees float);
show tables;
desc student;
insert into student	values
(121,'Rupesh',5000);
desc student;
insert into student	values
(131,'Ram', 6000);
insert into student values
(121, 'Amar', 4000);

SELECT * FROM student;

create table prices
(id int, item varchar(30),
price float);

insert into prices values
(001, 'laptop',80000),
(002, 'mobile', 20000),
(003, 'watch', 5000),
(004, 'hardisk', 2500);

select * from prices;
select id,item from prices;

DELETE FROM prices where id=003;

drop table student;

show tables;

create table student(
sid int, name varchar(30), fee float);

insert into student values
(121,'Amar', 5000),
(131,'Ram', 5000),
(141,'Zeev',4000),
(108,'scott',3000),
(107, 'clark',5000);

select * from student;

create table customers
(id int not null,
name varchar(20) not null,
age int);

insert into customers(id,name,age) values(121,'scott', 23);

select * from customers;
show tables;
select * from customers;
drop table customers;

create table customers
(id int primary key, name varchar(30) not null, 
age int not null, address char(25),
salary decimal(18,2) default 50000.00);

desc customers;

insert into customers(id,name,age,address) values (101,'scott',26,'H-no 3, hyderbad');

select * from customers;

drop table orders;

create table orders
(id int not null, date datetime, customer_id int, foreign key(id) references customers(id),
amount double);

desc orders;

insert into orders values(1,'2025-06-21',101,500.00);

select * from orders;
show tables;
drop table student;

create table student
(sid int primary key, sname varchar(50), course varchar(50));

create table library
(bookid int, bookname varchar(50), sid int, foreign key(sid) references student(sid));

insert into student values(1,'Deepak','MCA'), (2,'Deepa','BCA');

select * from student;

insert into library values(103,'Python',2);

select * from library;

insert into student values(3,'Rupesh','BTech'), (4,'Indra','MTech'), (5,'Sonia','Bcom'), (6,'Jeeva','BTech'),(7,'Rajeev','Mtech');

insert into library values(111,'SQL',5),(121,'Maths',4);

select * from library;

drop table library;

create table library
(bookid int primary key, bookname varchar(50) not null, sid int, foreign key(sid) references student(sid));

insert into student values(1,'Deepak','MCA'), (2,'Deepa','BCA');

select * from student;

insert into library values(103,'Python',2);

select * from library;

insert into student values(3,'Rupesh','BTech'), (4,'Indra','MTech'), (5,'Sonia','Bcom'), (6,'Jeeva','BTech'),(7,'Rajeev','Mtech');

insert into library values(111,'SQL',5),(121,'Maths',4);

select * from library;
desc library;
desc student;
select * from library;

drop table library;

create table library
(bookid int primary key, bookname varchar(50) not null, sid int, foreign key(sid) references student(sid)on delete cascade);
select * from student;

insert into library values(111,'SQL',5),(121,'Maths',4);
select * from library;

delete from student where sid = 5;
select * from student;
insert into student values(5,'Sonia','Bcom');

