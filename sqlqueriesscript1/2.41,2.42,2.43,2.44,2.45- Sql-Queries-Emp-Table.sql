select * from emp where job = (select JOB from emp where ename = 'MARIN') or SALARY > (select SALARY from emp where ename = 'ALLEN');
-- 2.41 -> List the emps Whose Jobs are same as MARIN or Sal is more than ALLEN

select * from emp e, dept d where d.loc in ('CHICAGO' , 'BOSTON') and e.DEPTNO=d.DeptNo and
 e.HIREDATE<(select e.HIREDATE from emp e where ENAME='BLAKE');
 -- 2.42 -> List the emps who are senior to BLAKE working at CHICAGO & BOSTON.
 
select * from emp where JOB in(select job from emp where ENAME = 'SMITH' or  ENAME = 'ALLEN') ;
-- 2.43 -> List the emps whose jobs same as SMITH or ALLEN.

select e.job from emp e where e.DEPTNO = 10 and e.job not in(select job from emp where DEPTNO=20);
-- 2.44 ->List jobs of deptno 10 those that are not found in deptno 20.

select max(salary) from emp;
-- 2.45 --> The highest sal of EMP table