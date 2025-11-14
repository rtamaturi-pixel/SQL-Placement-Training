use my2pm;

create table students
(sno int, sname varchar(15), sub1 int, sub2 int, sub3 int);

insert into students values (1, 'xy', 80,90,80);
insert into students values (2,'abc', 34,67,90);

select * from students;

#WAQ to display, employee details along with DA, HRA, and Gross.
create table EMP_table
(eid int, ename varchar(20), basicsal bigint);

insert into EMP_table values(1,'Rajeev', 200000), (2,'Kumar', 300000), (3,'Zeeva', 400000);
select * from EMP_table;

select *, (0.5 * basicsal) as 'DA', (0.7 * basicsal) as 'HRA', (basicsal + (0.5 * basicsal) + (0.7 * basicsal)) as 'gross_sal' from EMP_table;
