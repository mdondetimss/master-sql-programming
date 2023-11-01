-- 6->List the emps name, job who are with out manager.
select e.ename,e.job from emp e where mgr is null;

-- 7->List the names of the emps who are getting the highest sal dept wise.
select e.ename,e.deptno from emp e where e.SALARY in
(select max(SALARY) from emp group by deptno) ;

select * from emp where salary =(select (max(salary)+min(salary))/2 from emp);
-- 8 ->List the emps whose sal is equal to the average of max and minimum

 select deptno,count(*) from emp group by deptno having count(*) > 3;
 -- 9 ->List the no. of emps in each department where the no. is more than 3.
 
select d.dname,count(*) from emp e ,dept d where e.deptno = d.deptno group by d.dname
having count(*) >= 3 
 -- 10->List the names of depts. Where atleast 3 are working in that department