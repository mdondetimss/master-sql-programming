select e.empno,e.ename,e.deptno,e.SALARY,d.loc from emp e ,dept d
where e.deptno = d.deptno and d.loc in ('NEW YORK','DALLAS')
and HIREDATE between '1981-01-01' and '1981-12-31' and e.SALARY between 2000 and 5000;
-- 81->List the emps along with loc of those who belongs to dallas ,newyork with sal ranging from 2000 to 5000 joined in 81.

select empno,ename,salary,grade from emp;
-- 82 ->List the empno,ename,sal,grade of all emps.

select * from emp where job = (select job from emp where ename = 'JONES');
-- 83->List the emps whose job is same as JONES.

select * from emp where hiredate <(select hiredate from emp where ename = 'JONES');
-- 84->List the emps who are senior to miller.

select * from emp where job = (select job from emp where ename = 'ALLEN');
-- 85->List the emps whose job is same as either allen or sal>allen.