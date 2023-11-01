-- 4--> List the emps whose mgr name is jones and also list their manager name
-- select w.empno,w.ename,w.job,w.mgr,w.hiredate,w.salary,w.deptno,m.ename from emp w ,emp m where w.mgr = m.empno and m.ename = 'JONES';
select empno, ename, job, hiredate, salary, conm, Deptno from emp where ENAME = 'jones';
