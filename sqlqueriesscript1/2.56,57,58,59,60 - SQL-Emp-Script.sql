select deptno, count(*) from emp group by DEPTNO having count(*)>=2;
-- 2.56 ->List the department,details where at least two emps are working

select * from emp where ename='jones';
-- 2.57->Display the emps whose manager name is jones.

SELECT * FROM EMP WHERE (1.2*salary) > 3000 ;
-- 2.58->List the employees whose salary is more than 3000 after giving 20% increment.

select * from emp where DeptNo != 30;
-- 2.59(2.85) ->	List the emps who are not working in sales dept

select e.empno,e.ename,e.job,e.mgr,e.hiredate,e.salary,e.conm,e.deptno,d.dname
from emp e ,dept d where e.deptno = d.deptno;
select e.empno, e.ename, e.job, d.dname from emp e, dept d where e.DEPTNO = d. DeptNo
-- 2.60 ->List the emps with dept names.

-- select e.ename,e.deptno,e.SALARY,e.conm from emp e ,dept d where e.deptno =d.deptno and d.loc = 'CHICAGO' and e.SALARY between 2000 and 5000
-- 2.61 ->List the emps name ,dept, sal and comm. For those whose salary is between 2000 and 5000 while loc is Chicago.
