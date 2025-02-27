Database Schema: Consider a simple database with one tables: BankAccount BankAccount Table: 

● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table. 

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 

Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 

Submission: Create an SQL script file containing your solutions for all tasks (queries). Name the file "lab_assignment1.sql" Provide comments above each query to indicate the task number and the query's purpose.

//SQL Queries

mysql> create database BankAccount;
Query OK, 1 row affected (0.01 sec)

mysql> create table BankAccount(
    -> account_id int primary key,
    -> account_holder_name varchar(100),
    -> account_balance double);
Query OK, 0 rows affected (0.02 sec)

//Task 1: Insert Data
mysql> insert into BankAccount values
    -> (101,'John Doe',10000),
    -> (102,'Vaishnavi Kodmur',20000),
    -> (103,'Sonali Rathod',30000),
    -> (104,'Nirjala Madgal',40000),
    -> (105,'Robert Brown',50000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

//Task 2: Retrieving Data
mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| John Doe            |           10000 |
| Vaishnavi Kodmur    |           20000 |
| Sonali Rathod       |           30000 |
| Nirjala Madgal      |           40000 |
| Robert Brown        |           50000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

//Task 3: Filtering Data
mysql> select account_holder_name,account_balance from BankAccount where account_balance>30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Nirjala Madgal      |           40000 |
| Robert Brown        |           50000 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

//Task 4: Updating Data
mysql> update BankAccount set account_balance=55000 where account_id
=101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select* from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | John Doe            |           55000 |
|        102 | Vaishnavi Kodmur    |           20000 |
|        103 | Sonali Rathod       |           30000 |
|        104 | Nirjala Madgal      |           40000 |
|        105 | Robert Brown        |           50000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
