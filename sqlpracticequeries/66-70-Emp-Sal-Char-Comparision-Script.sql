select * from emp where length (ename) = 4;
-- 66-> List all the 4char emps.

select * from emp where ename like 'A%' and length(ename) = 5;
-- 67->List the emps end with ‘A’ all together 5 chars

select * from emp where ename like 'M%';
-- 68->List names start with ‘M’.

select * from emp where salary like '%00';
-- 69-> List the emps whose sal is ending with 00.

 select * from emp where hiredate between '1982-01-01' and '1982-01-31';
-- 70->List the emp who joined in the month of JAN