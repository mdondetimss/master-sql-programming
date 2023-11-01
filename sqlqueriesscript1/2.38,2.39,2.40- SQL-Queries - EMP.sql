select * from emp w,emp m where w.mgr = m.empno and w.hiredate < m.hiredate ;
-- 2.38 ->List the Emps who are senior to their own MGRS.

select * from emp e ,dept d where d.deptno = 20 and e.deptno = d.deptno and
e.job in ( select e.job from emp e,dept d where e.deptno = d.deptno and d.deptno
=10);
-- 2.39->List the Emps of Deptno 20 whose Jobs are same as Deptno10.

-- 2.40->List the Emps whose Sal is same as FORD or SMITH in desc order of Sal
select * from emp where SALARY in (select SALARY from emp where(ENAME = 'SMITH' or ENAME = 'FORD')) order by SALARY desc;
select * from emp where SALARY =(ENAME = 'SMITH' or ENAME = 'FORD') order by SALARY desc;