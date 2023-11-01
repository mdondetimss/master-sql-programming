select ename || '('|| lower(job)||')' as "EMPLOYEE" from emp ;
-- 26-> Need the output like 'SMITH (clerk)' in 'EMPLOYEE' table.

-- 27-> Print a list of emp’s Listing ‘just salary’ if Salary is more than 1500, on target if Salary is 1500 and ‘Below 1500’ if Salary is less than 1500.

select empno,ename,SALARY,job,
case
when SALARY = 1500 then 'ON TARGET'
when SALARY < 1500 then 'BELOW 1500'
when SALARY > 1500 then 'JUST SALARY'
else 'nothing'
end "REVISED SALARY"
from emp;

-- 28->Count the no. of characters with out considering spaces for each name.
SELECT ENAME, LENGTH(REPLACE(ENAME, ' ', 'null')) AS CHARACTER_COUNT FROM EMP;

select * from emp w where empno in ( select mgr from emp where w.SALARY<SALARY);
-- 29->List those Managers who are getting less than his emps Salary'

select * from emp where MGR in (select HIREDATE from emp where ename ='BLAKE');
-- 30->Print the details of all the emps who are sub-ordinates to Blake.
