-- List the emps who does not belong to Deptno 20
select * from emp where Deptno > '20';
select * from emp where deptno not in (20); 
select * from emp where deptno != 20; 
select * from emp where deptno <>20; 
