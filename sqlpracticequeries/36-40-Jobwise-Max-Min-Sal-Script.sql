select * from emp where SALARY < 1000 order by SALARY;
-- 36->List the emps who are drawing less than 1000 Sort the output by Salary.

select * from emp w,emp m where w.mgr = m.empno and w.hiredate< m.hiredate;
-- 37->Find out the emps who joined in the company before their Managers.

select * from emp where SALARY in (select min(salary) from emp group by job) order by SALARY asc;
-- 38->Find all the emps who earn the minimum Salary for each job wise in ascending order.

select * from emp where SALARY in (select max(SALARY) from emp group by job) order by SALARY desc;
-- 39 ->Find out all the emps who earn highest salary in each job type. Sort in descending salary order.

select * from emp e where hiredate in (select max(hiredate) from emp where e.deptno = deptno ) order by hiredate;
-- 40 ->Find out the most recently hired emps in each Dept order by Hiredate.

