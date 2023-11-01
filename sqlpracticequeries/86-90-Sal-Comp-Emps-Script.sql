select * from emp w,emp m where w.mgr = m.empno and w.hiredate < m.hiredate;
-- 86->List the emps who are senior to their own manager.

select * from emp where SALARY>(select SALARY from emp where ename = 'BLAKE');
-- 87->List the emps whose sal greater than blakes sal.

select * from emp where deptno = 10 and SALARY > (select SALARY from emp where ename = 'ALLEN');
-- 88->List the dept 10 emps whose sal>allen sal.

-- 89-> List the mgrs who are senior to king and who are junior to smith.
select * from emp where empno in (select mgr from emp where hiredate<(select hiredate from emp where ename = 'KING' )
and hiredate > (select hiredate from emp where ename = 'SMITH')) and mgr is not null;

select e.empno,e.ename,d.loc,e.SALARY,d.dname from emp e,dept d
where e.deptno=d.deptno and e.deptno in
(select deptno from emp where ename = 'KING'and emp.empno <> e.empno);
-- 90->List the empno,ename,loc,sal,dname,loc of the all the emps belonging to king dept.