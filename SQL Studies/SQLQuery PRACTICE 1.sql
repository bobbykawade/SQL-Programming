USE bobby

CREATE TABLE employee
(
EMPNO INT PRIMARY KEY,
ENAME VARCHAR(20),
JOB VARCHAR(20),
MGR INT,
HIREDATE DATE,
SAL NUMERIC(8,2),
COMM INT, 
DEPTNO INT
)
SELECT * FROM employee


INSERT INTO employee VALUES(7369,'SMITH', 'CLERK', 7902, '17-DEC-80', 800,300, 20)
INSERT INTO employee VALUES(7499,'ALLEN', 'SALESMAN', 7698, '20-FEB-81', 1600, 300, 30)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES(7521, 'WARD', 'SALESMAN', 7698, '22-FEB-81', 1250,500, 30)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES(7566, 'JONES', 'MANAGER', 7839, '02-APR-81', 2975, 20)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES(7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-81', 1250, 1400, 30)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES(7698, 'BLAKE', 'MANAGER', 7839, '01-MAY-81', 2850, 30)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES(7782, 'CLARK', 'MANAGER', 7839, '09-JUNE-81', 2450, 10)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES(7788, 'SCOTT', 'ANALYST', 7566, '19-APR-87', 3000, 20)
INSERT INTO employee(EMPNO, ENAME, JOB, HIREDATE, SAL, DEPTNO)
VALUES(7839, 'KING', 'PRESIDENT', '17-NOV-81', 5000, 10)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES(7844, 'TURNER', 'SALESMAN', 7698, '08-SEP-81', 1500, 0, 30)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES(7876, 'ADAMS', 'CLERK', 7788, '23-MAY-87', 1100, 20)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES(7900, 'JAMES', 'CLERK', 7698, '03-DEC-81', 950, 30)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES(7902, 'FORD', 'ANALYST', 7566, '03-DEC-81', 3000, 20)
INSERT INTO employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES(7934, 'MILLER', 'CLERK', 7782, '23-JAN-82', 1300, 10)



------Where Clause---------
select * from employee where empno=7782

select * from employee where job='manager'

select * from employee where deptno=20


select * from employee where sal>2000

-------Operators------
------1) IN Operator-----------

------List of all employees in dept 10 & 20

select * from emp where deptno in (10, 20)

select * from emp where job in ('clerk', 'analyst')


-------- Like Operator -------

select * from emp where ename like '__A%'
select * from emp where ename like '%_LL_%'



----- Assignments 29/06/2021-----

-------1) List of all employees who are having reporting managers in dept 10 --------

select * from emp where mgr is not null and deptno = 10


-------2) List the employees who are not working as Managers & clerks in dept10 & 20 with a salary in the range of 1000 to 3000---

select * from emp where job != 'Manager' and job != 'Clerk' and deptno = 10 and deptno = 20 and sal between 1000 and 3000



------3)  list the employees whose salary not in range of 1000 & 2000 in dept 10,20,30 except all salesman

select * from emp where sal not in (1000, 2000) in

select * from emp