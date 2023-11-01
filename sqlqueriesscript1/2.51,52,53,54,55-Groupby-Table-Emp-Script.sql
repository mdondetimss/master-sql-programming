select job,sum(12*SALARY) from emp where hiredate between '1981-01-01' and '1981-12-31' group by job ;
-- 2.51(2.72) ->Find the total annual sal to distribute job wise in the year 81

select avg(salary) from emp where job = 'CLERK';
-- 2.52 -> Display the average salaries of all the clerks

select * from emp where deptno =20 and salary >(select avg (salary) from emp where deptno = 10);
-- 2.53 ->List the employee in dept 20 whose sal is >the average sal 0f dept 10 emps.

select deptno ,job ,count(*) from emp group by deptno,job order by deptno asc;
-- 2.54 ->Display the number of employee for each job group deptno wise.

select w.mgr ,count(*) from emp w,emp m where w.mgr = m.empno group by w.mgr order by w.mgr asc;
-- 2.55 -> List the manage rno and the number of employees working for those mgrs in the ascending Mgrno