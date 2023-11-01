select * from emp e,dept d where e.deptno = d.deptno;
-- 2.34-> List the details of the Depts along with Empno, Ename or without the emps

select * from emp where SALARY > (select SALARY from emp where ename = 'BLAKE' );
-- 2.35-> List the details of the emps whose Salaries more than the employee BLAKE

select* from emp where JOB = (select JOB from emp where ENAME = 'ALLEN');
-- 2.36 -> List the emps whose Jobs are same as ALLEN.

select * from emp where HIREDATE < (select HIREDATE from emp where ENAME = 'KING')
-- 2.37 -> List the emps whose Jobs are same as ALLEN.
