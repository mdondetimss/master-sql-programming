 select * from emp where mod(salary,2) = 1;
 -- 16->List those Emps whose Salary is odd value
 
-- 17->List the emp’s whose Salary contain 3 digits.
 select * from emp where length (salary) = 3;
 
 select ENAME, HIREDATE from emp where HIREDATE between '1981-12-01' and '1981-12-31' ;
-- 18 ->List the emps who joined in the month of DEC.

 select * from emp where ename like '%A%';
 -- 19->List the emps whose names contains ‘A’.
 
select * from dept d where length(dname) in (select count(*) from emp e where e.deptno = d.deptno ); 
-- 20->List the Dname whose No. of Emps is =to number of chars in the Dname

