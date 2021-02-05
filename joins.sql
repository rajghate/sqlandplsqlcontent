select empno,ename,dname from emp e join dept d on (e.deptno = d.deptno);
select dname, count(dname) as totemp  from dept d natural join emp e group by dname;
select d.dname,e.ename from emp e inner join dept d on e.deptno=d.deptno where e.job='MANAGER';
select e.ename,b.ename as BOSS from emp e, emp b where e.mgr = b.empno;
select e.ename,b.ename as BOSS from emp e, emp b where e.mgr = b.empno union select e.ename,'' as BOSS from emp e where e.job = 'PRESIDENT' ;
select b.empno,b.ename,count(e.ename) as noofempunder from emp e, emp b where e.mgr = b.empno group by b.ename,b.empno ;
select b.empno,b.ename,count(e.ename) as noofempunder from emp e, emp b where e.mgr = b.empno group by b.ename,b.empno order by count(e.ename) desc;
