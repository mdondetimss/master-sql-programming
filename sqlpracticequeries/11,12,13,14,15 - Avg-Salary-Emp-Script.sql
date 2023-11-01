(select (avg(e.salary)),m.ename from emp e,emp m where e.mgr=m.empno group by e.mgr,m.ename);
-- 11->List the managers whose sal is more than his employess avg salary.

-- 12->List the emp whose sal<his manager but more than any other manager
select ename, EMPNO, SALARY from emp where SALARY < MGR;

select e.ename, e.empno, dname from emp e, dept d where (select avg(SALARY) from emp e) order by dname;
-- 13-> List the employee names and his average salary department wise.

select * from emp e where 5 >(select count(distinct SALARY) from emp where e.SALARY > SALARY);
-- 14->Find out least 5 earners of the company

select * from emp where empno in(select mgr from emp) and mgr not in (select empno from emp where job = 'PRESIDENT')
-- 15->List the managers who are not working under the president.

