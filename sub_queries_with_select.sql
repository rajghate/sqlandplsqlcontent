select ename , job from emp where job = (select job from emp where ename = 'JONES');
select e.ename , d.dname from emp e join dept d on(e.deptno = d.deptno) where d.loc = (select d.loc from emp e join dept d on (e.deptno=d.deptno ) where e.ename = 'JONES');
select ename from emp where sal =( select min(sal) from emp);
select ename from emp where sal != ( select min(sal) from emp);
select ename from emp where job in (select job from emp where deptno = (select deptno from dept where dname = 'SALES'));
select ename from emp where deptno in (select deptno from emp where job = 'ANALYST');
SELECT ENAME,JOB,SAL AS CUR_SAL,SAL*1.07 AS RAISE FROM EMP WHERE JOB!='CLERK') UNION (SELECT ENAME,JOB,SAL AS CUR_SAL,SAL*1.1 AS RAISE FROM EMP WHERE JOB='CLERK');
select ename ,sal ,nvl(comm,0) as comm from emp;
select ename ,sal+nvl(comm,0) as total from emp ;
