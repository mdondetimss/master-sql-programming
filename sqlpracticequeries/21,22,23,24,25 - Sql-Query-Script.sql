-- 21->List the emps those who joined in company before 15th of the month
SELECT * FROM emp WHERE DAY(hiredate) < 15;

select * from dept d , (select count(*) s,e.deptno "M"from emp e group by
e.deptno) d1
where length(dname)=d1.s and d1.M <>d.deptno;
-- 22->List the Dname, no of chars of which is = no. of emp’s in any other

select * from emp where job = 'MANAGER';
-- 23->List the emps who are working as Managers

select * from emp e where hiredate in (select hiredate from emp where e.empno <> empno);
-- 24-> List the emps who joined in the company on the same date.

select ename|| job as "EMP_AND_JOB" from emp ;
-- 25->Produce the output of EMP table ‘EMP_AND_JOB’ for Ename and Job.

