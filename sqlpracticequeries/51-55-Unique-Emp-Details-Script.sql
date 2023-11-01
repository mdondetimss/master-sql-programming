select * from dept where DeptNo in (select distinct deptno from emp);
-- 51->Display the unique dept of the emps.

select deptno, job from emp;
-- 52->Display the unique dept with jobs.

select * from emp where ename = 'BLAKE';
-- 53->Display the details of the blake.

select * from emp where job = 'CLERK';
-- 54->select * from emp where job = ‘CLERK’;

select * from emp where hiredate = '1981-05-01';
-- 55->list all the employees joined on 1st may 81.