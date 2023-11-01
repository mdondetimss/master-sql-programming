select deptno,avg(salary) from emp group by deptno having avg(salary) <(select avg(salary) from emp);
-- 46->List the Deptno and their average salaries for dept with the average salary less than the averages for all department

select w.ename,w.SALARY,m.ename,m.SALARY from emp w,emp m where w.mgr = m.empno and w.SALARY > m.SALARY;
-- 47->List out the Names and Salaries of the emps along with their manager names and salaries for those emps who earn more salary than their Manager.

select empno,SALARY,CONM from emp;
-- 48->List the empno,sal,comm. Of emps.

 select * from emp order by SALARY asc;
-- 49->List the details of the emps in the ascending order of the sal

 select * from emp e order by e.job asc,e.empno desc ;
 -- 50-> List the dept in the ascending order of the job and the desc order of the emps print empno, ename.