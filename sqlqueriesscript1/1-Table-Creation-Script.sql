create database mule;
-- Created a database "mule"

use mule;
-- We are using the "mule" database

-- Created "emp" table 	
create table emp
(EMPNO INT(11), 
ENAME varchar(10),
 JOB varchar(10), 
 MGR int(10), 
 HIREDATE varchar(10), 
 SALARY int(10), 
 CONM int(5), 
 DEPTNO int(5));
 -- Basic employee information
 
-- Created "Dept" table 	
create table Dept
(DeptNo varchar(5),
DName varchar(10), 
Loc varchar(10));
-- Basic Department information