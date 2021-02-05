select * from emp where ename like '%s';
select * from emp where ename not like '%s%';
select * from emp where ename like '_a%';
select * from emp where hiredate like '%JAN%';
select * from emp where hiredate like '%81';
select * from emp where hiredate like '0%';
select * from emp where to_char(sal) like '____';
select * from emp where comm is null;
select * from emp where comm is not null;