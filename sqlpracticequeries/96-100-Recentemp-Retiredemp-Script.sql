select * from emp where HIREDATE in (select max(hiredate) from emp where DEPTNO=30);
-- 96-> List the details of most recently hired emp of dept 30.

select * from emp where SALARY in (select max(SALARY) from emp where mgr in
(select empno from emp where ename = 'KING'));
-- 97->List the highest paid emp working under king.

SELECT e.ename, e.job, e.salary as annual_salary, e.deptno, d.dname as dept_name FROM emp e
JOIN dept d ON e.deptno = d.deptno WHERE e.salary = 36000 OR e.job <> 'CLERK';
-- 98(148)->List the employee Name, Job, Annual Salary, deptno, Dept name and grade who earn 36000 a year or who are not CLERKS.

SELECT * FROM emp WHERE deptno NOT IN (SELECT deptno FROM dept);
-- 99(19)-> List the records from emp whose deptno isnot in dept.

SELECT empno,ename FROM emp
WHERE DATE_ADD(hiredate, INTERVAL 20 YEAR) > '1989-12-31';
-- 100(20)->List the Enames who are retiring after 31-Dec-89 the max Job period is 20Y.
