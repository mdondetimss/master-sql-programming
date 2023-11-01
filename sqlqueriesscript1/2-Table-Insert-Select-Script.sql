-- Inserted the Employee details and Values
INSERT INTO emp(EMPNO , ENAME , JOB , MGR , HIREDATE , SALARY , CONM , DEPTNO )
VALUES (7369, 'SMTH', 'CLERK', 7902, STR_TO_DATE('17-Dec-80', '%d-%b-%y'), 800, null, 20);
select * from emp;
-- Display all the information of the Employee table

-- Inserted the Department details and Values
insert into Dept(DeptNo ,DName , Loc )
values(20,'Operations', 'Boston');
select * from Dept;
-- Display all the information of the Department table
