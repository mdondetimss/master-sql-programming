-- 3 ->List the name ,job, dname, location for those who are working as MGRS.
-- select e.ename,e.job,d.dname,d.loc from emp e ,dept d where e.deptno = d.deptno and e.empno in (select mgr from emp ); 
select e.ename,e.job,d.dname,d.loc from emp e ,dept d where e.deptno = d.deptno and job = 'Manager';
-- select ename,job, mgr from emp where job = 'Manager';



