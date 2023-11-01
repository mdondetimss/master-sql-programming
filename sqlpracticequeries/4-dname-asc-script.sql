-- 5-> List the name, job, dname ,sal, grade dept wise
select e.ename, e.job, d.dname, e.salary, e.grade from emp e,dept d order by dname asc ;
-- alter table emp add grade varchar(5);
 
 
