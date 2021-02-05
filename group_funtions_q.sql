select max(sal) as max_sal , min(sal) as min_sal, avg(sal) as avg_sal , sum(comm) as tot_comm from emp;
select deptno , sum(sal) as tot_sal , sum(comm) as tot_comm from emp group by deptno;
select deptno , sum(sal) as tot_sal , sum(comm) as tot_comm from emp group by deptno having count(comm) >=1;
select deptno , count(job) as noofclerks from emp where job = 'CLERK' group by deptno;
select deptno , sum(sal) as tot_sal from emp group by deptno having count(*) > =4;
select deptno , sum(sal) as tot_sal from select e.empno, count(*) from emp e, emp m where e.empno = m.mgr group by e.empno;
