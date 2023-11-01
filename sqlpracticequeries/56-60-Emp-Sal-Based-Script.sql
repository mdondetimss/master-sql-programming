select empno,ename,SALARY,deptno from emp where deptno = 10 order by SALARY asc;
-- 56->List the empno,ename,sal,deptno of the dept 10 emps in the ascending order of salary.

-- 57->List the emps whose salaries are less than 3500.
select * from emp where SALARY <3500;

-- 58->List the empno,ename,sal of all the emp joined before 1 apr 81
 select empno ,ename, hiredate,SALARY from emp where hiredate <'1981-04-01';
 
 -- 59->List the emp whose annual sal is <25000 in the asc order of the salaries
 select * from emp where (12*salary) < 25000 order by salary asc;
 
 select * from emp where job in ('CLERK','MANAGER');
 -- 60->List the emps who are either clerks or managers.