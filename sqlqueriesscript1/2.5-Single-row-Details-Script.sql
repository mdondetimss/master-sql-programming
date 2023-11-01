Select * from emp where empno in ( select mgr from emp) ;
-- Display all the column Names’

 select mgr from emp;
-- Display all the details of all ‘Mgrs’