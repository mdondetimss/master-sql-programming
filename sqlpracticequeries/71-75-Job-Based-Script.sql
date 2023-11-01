-- 71->List the emps whose salary is 4 digit number.
select * from emp where length (salary) = 4;

-- 72->List the emp who joined in 80’s.
select * from emp where HIREDATE between '1980-01-01' and '1980-12-31';

select * from emp where job = 'MANAGER' and (deptno = 10 or deptno =20); 	
-- 73-> List the mgrs of dept 10 or 20

-- 74->List the emps joined in jan with salary ranging from 1500 to 4000.
select * from emp where SALARY between '1500' and '4000' and HIREDATE between '1982-01-01' and '1982-01-31';

select distinct job from emp where deptno in (20,30) order by job desc;
-- 75->List the unique jobs of dept 20 and 30 in desc order.