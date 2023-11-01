select * from emp where ename = 'Brown';
-- 2.31->Display the details of Brown

select * from emp e ,dept d where d.dname in
('ACCOUNTING','RESEARCH') and e.deptno = d.deptno order by e.deptno asc;
-- 2.32 -> List the total information of EMP table along with DNAME and Loc of all the emps Working Under ‘ACCOUNTING’ & ‘RESEARCH’ in the asc Deptno.

-- 2.33-> List the employee details according to Location/Department and provide the E.deptno in asc , E.job in desc
select E.empno,E.ename,E.SALARY,D.dname,D.loc,E.deptno,E.job
from emp E,dept D
where (D.loc = 'CHICAGO' or D.dname = 'ACCOUNTING') and
E.deptno=D.deptno and E.empno in
(select E.empno from emp E where (12*E.SALARY) > 28000 and E.SALARY not in
(3000,2800) and E.job !='MANAGER'
and ( E.empno like '__7%' or E.empno like '__8%'))
order by E.deptno asc , E.job desc;