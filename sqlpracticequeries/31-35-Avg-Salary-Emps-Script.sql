select * from emp where empno in (select mgr from emp);
-- 31->List the emps who are working as Managers using co-related sub-query.

select e.ename,w.ename,m.ename from emp e,emp w,emp m where e.mgr =
w.empno and w.ename = 'JONES' and w.mgr = m.empno;
-- 32->List the emps whose Mgr name is ‘Jones’ and also with his Manager name.

select * from emp where job = 'Manager';
-- 33-> Find out how may Managers are their in the company.

 select avg(salary),avg(SALARY+nvl(comm,0)) from emp	;
-- 34->Find Average salary and Average total remuneration for each Job type. Remember Salesman earn commission.secommm

-- 35->Check whether all the emps numbers are indeed unique
 select empno,count(*) from emp group by empno;