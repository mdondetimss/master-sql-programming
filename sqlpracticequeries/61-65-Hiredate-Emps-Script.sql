 select * from emp where HIREDATE between '1981-01-01' and '1981-12-31';
 -- 61->List the emps who have joined in the year 1981.
 
 select * from emp where HIREDATE in ('1981-05-01', '1981-11-17', '1981-12-30');
 -- 62->List the emps who have joined in the year 1981.
 
 select * from emp where (12*salary) between 23000 and 40000;
 -- 63->List the emps whose annual sal ranging from 23000 to 40000.
 
 select * from emp where mgr in ( 7369,7698,7566);
 -- 64->List the emps working under the mgrs 7369,7890,7654,7900
 
 select * from emp where hiredate between '1982-07-01' and '1982-12-31';
 -- 65->List the emps who joined in the second half of 82.
