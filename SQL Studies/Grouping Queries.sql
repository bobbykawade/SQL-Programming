use bobby

select * from emp

select count(*) "No. of Clerk" from emp where deptno = 20 and job = 'clerk'

select Max(sal) "Highest", min(sal) "Lowest" from emp where job = 'salesman'

select job, max(sal) "Maximum Salary of each job" from emp Group by job;

select job, max(sal) from emp group by job having max(sal) > 1500

select job, max(sal) from emp where deptno <> 30 group by job having max(sal) > 1500 order by 2


select * from emp
###

select deptno, count(*) "Employees" from emp Group by deptno order by deptno

## Display the department numbers which are having more than 4 employee in them##

select deptno, count(*) "Employees More than 4" from emp group by deptno having count(deptno) > 4


### Display the minimum salary for each job excluding all the employees whose name ends with 'S' ####

select ename, job, min(sal)
from emp
where ename not like '%S'
group by ename, job
order by 3

select * from emp

#### Display the department number which are having more than 9000 as their department total salary ###

select deptno, sum(sal) from emp group by deptno having sum(sal) > 9000 order by 1
