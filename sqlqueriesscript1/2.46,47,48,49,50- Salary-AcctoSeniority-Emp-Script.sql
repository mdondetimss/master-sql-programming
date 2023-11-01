select * from emp where salary in (select max(salary) from emp);
-- 2.46-> Find details of highest paid employee

 select e.salary from emp e inner join dept d on e.deptno = d.deptno 
 where d.dname = 'SALES' limit 1;
 -- 2.47 (2.64)-> Find the highest paid employee of sales department
 
 select * from emp where hiredate < (select max(hiredate) from emp where
mgr in (select empno from emp where ename = 'KING')) ;
-- 2.48 ->List the employees who are senior to most recently hired employee working under king.

select * from emp where hiredate between '1981-01-01' and '1981-12-31' order by hiredate asc;
-- 2.49 (2.68)-> List the details of the senior employee belongs to 1981.

-- 2.50 (2.71)->Find the total sal given to the MGR
select sum(salary) from emp where job = 'Manager';
select sum(salary) from emp where empno in (select mgr from emp);
