select e.ename || ' has an employee '|| m.ename from emp e , emp m where e.empno = m.mgr;
select e.ename || ' works for ' || m.ename from emp e ,emp m where e.mgr = m.empno ; 
-- List the emps who are working under ‘MGR’