//Create table employee(Emp_id varchar(10) not null primary key,Name varchar(30) not null,Mobile_no double not null,Address varchar(60) not nul
l,Salary double not null);


mysql> create database Employee;
Query OK, 1 row affected (0.01 sec)

mysql> use Employee;
Database changed

mysql> create table employee(Emp_id varchar(10) not null primary key,Name varchar(30) not null,Mobile_no double not null,Address varchar(60) not null,Salary double not null);
Query OK, 0 rows affected (0.02 sec)

mysql> desc employee;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Emp_id    | varchar(10) | NO   | PRI | NULL    |       |
| Name      | varchar(30) | NO   |     | NULL    |       |
| Mobile_no | double      | NO   |     | NULL    |       |
| Address   | varchar(60) | NO   |     | NULL    |       |
| Salary    | double      | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into employee(Emp_id,Name,Mobile_no,Address,Salary) values('E1','Vaishnavi',9865676656,'Ashok chowk solapur',20000),('E2','Nirjala',9866967656,'Navi peth solapur',25000),('E3','Sonali',9865677896,'Rupa bhavani road solapur',50000),('E4','Rohini',3468777896,'Kontam Chowk solapur',40000),('E5','Bhavana',1245677896,'Madalmaruti solapur',35000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select* from employee;
+--------+-----------+------------+---------------------------+--------+
| Emp_id | Name      | Mobile_no  | Address                   | Salary |
+--------+-----------+------------+---------------------------+--------+
| E1     | Vaishnavi | 9865676656 | Ashok chowk solapur       |  20000 |
| E2     | Nirjala   | 9866967656 | Navi peth solapur         |  25000 |
| E3     | Sonali    | 9865677896 | Rupa bhavani road solapur |  50000 |
| E4     | Rohini    | 3468777896 | Kontam Chowk solapur      |  40000 |
| E5     | Bhavana   | 1245677896 | Madalmaruti solapur       |  35000 |
+--------+-----------+------------+---------------------------+--------+
5 rows in set (0.00 sec)

mysql> select* from employee where Name LIKE 'S%';
+--------+--------+------------+---------------------------+--------+
| Emp_id | Name   | Mobile_no  | Address                   | Salary |
+--------+--------+------------+---------------------------+--------+
| E3     | Sonali | 9865677896 | Rupa bhavani road solapur |  50000 |
+--------+--------+------------+---------------------------+--------+
1 row in set (0.00 sec)

mysql> select* from employee where Name LIKE 'N______';
+--------+---------+------------+-------------------+--------+
| Emp_id | Name    | Mobile_no  | Address           | Salary |
+--------+---------+------------+-------------------+--------+
| E2     | Nirjala | 9866967656 | Navi peth solapur |  25000 |
+--------+---------+------------+-------------------+--------+
1 row in set (0.00 sec)

mysql> delete from employee where Name='Bhavana';
Query OK, 1 row affected (0.01 sec)

mysql> select* from employee;
+--------+-----------+------------+---------------------------+--------+
| Emp_id | Name      | Mobile_no  | Address                   | Salary |
+--------+-----------+------------+---------------------------+--------+
| E1     | Vaishnavi | 9865676656 | Ashok chowk solapur       |  20000 |
| E2     | Nirjala   | 9866967656 | Navi peth solapur         |  25000 |
| E3     | Sonali    | 9865677896 | Rupa bhavani road solapur |  50000 |
| E4     | Rohini    | 3468777896 | Kontam Chowk solapur      |  40000 |
+--------+-----------+------------+---------------------------+--------+
4 rows in set (0.00 sec)

mysql> update employee set Salary=45000 where Emp_id='E1';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select* from employee;
+--------+-----------+------------+---------------------------+--------+
| Emp_id | Name      | Mobile_no  | Address                   | Salary |
+--------+-----------+------------+---------------------------+--------+
| E1     | Vaishnavi | 9865676656 | Ashok chowk solapur       |  45000 |
| E2     | Nirjala   | 9866967656 | Navi peth solapur         |  25000 |
| E3     | Sonali    | 9865677896 | Rupa bhavani road solapur |  50000 |
| E4     | Rohini    | 3468777896 | Kontam Chowk solapur      |  40000 |
+--------+-----------+------------+---------------------------+--------+
4 rows in set (0.00 sec)