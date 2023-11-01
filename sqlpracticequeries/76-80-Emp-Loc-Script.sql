select * from emp where (job in ('MANAGER' ,'ANALYST') ) and SALARY between 2000 and 5000 and conm is null;
-- 76->List the emps who are working as either mgr or analyst with the salary ranging from 2000 to 5000 and with out comm.

 select * from emp where deptno in (select deptno from dept where dept.loc = 'CHICAGO');
-- 77->List the details of the emps working at Chicago

select e.empno,e.ename,e.deptno,d.loc from emp e ,dept d where e.deptno = d.deptno ;
-- 78->List the empno,ename,deptno,loc of all the emps.

 select e.empno,e.ename,e.deptno,d.loc,d.dname from emp e ,dept d where e.deptno = d.deptno and e.deptno in (10,20);
-- 79->List the empno,ename,loc,dname of all the depts.,10 and 20.

select e.empno,e.ename,e.deptno,e.SALARY,d.loc from emp e ,dept d
WHERE (d.loc = 'Chicago' OR d.loc = 'Dallas')
    AND TIMESTAMPDIFF(YEAR, hiredate, CURDATE()) > 6;
-- 80(212)->List the empno, ename, sal, loc of the emps working at Chicago dallas with an exp>6ys.