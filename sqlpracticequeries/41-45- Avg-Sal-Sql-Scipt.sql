select * from emp e where SALARY > (select avg(SALARY) from emp where e.deptno = deptno );
-- 41 -> List the employee name,Salary and Deptno for each employee who earns a salary greater than the average for their department order by Deptno.

select deptno ,count(*) from emp group by deptno having count(*) = 0;
-- 42->List the Deptno where there are no emps.

select count(*),avg(SALARY),deptno,job from emp group by deptno,job;
-- 43->List the No.of emp’s and Avg salary within each department for each job.

select * from emp where SALARY = (select max(SALARY) from emp) and CONM is  not null;
-- 44-> Find the name and Job of the emps who earn Max salary and Commission.

select ename,job,SALARY from emp where deptno != 10 and job in (select job from
emp where deptno = 10)
and SALARY in (select SALARY from emp where deptno = 10);
-- 45-> List the Name, Job and Salary of the emps who are not belonging to the department 10 but who have the same job and Salary as the emps of dept 10

