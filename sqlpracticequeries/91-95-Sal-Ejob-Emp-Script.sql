select * from emp where SALARY in (select SALARY from emp e where e.ename in ('FORD','BLAKE')and emp.empno <> e.empno);
-- 91->List the emps whose sal is same as ford or blake.

select * from emp where SALARY in (select SALARY from emp e where emp.empno <> e.empno);
-- 92->List the emps whose sal is same as any one of the following.

-- 93->Sal of any clerk of emp1 table.
select * from emp where job = 'CLERK';

select * from emp where HIREDATE < '1982-01-01';
-- 94->Any emp of emp2 joined before 82.

select * from emp where SALARY in (select max(SALARY) from emp);
-- 95->List the highest paid emp.