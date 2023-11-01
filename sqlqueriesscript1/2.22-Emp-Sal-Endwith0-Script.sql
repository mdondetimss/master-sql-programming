-- List the emps whose Sal is four digit number ending with Zero.
select * from emp where length(salary)=4 and salary like '%0';
