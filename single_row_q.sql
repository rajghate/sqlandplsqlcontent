select lower(ename) as ename,sal from emp;
update emp set ename = lower(ename);
select * from emp where ename like '_____';
select SUBSTR('hello',2,4) FROM DUAL;
SELECT SUBSTR('hello welcome',-5,4) FROM DUAL;