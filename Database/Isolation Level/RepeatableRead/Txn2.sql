SELECT @@transaction_isolation

set autocommit = 0

SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;

START TRANSACTION

select * from car

--Execution
mysql> SELECT @@transaction_isolation
    -> ;
+-------------------------+
| @@transaction_isolation |
+-------------------------+
| REPEATABLE-READ         |
+-------------------------+
1 row in set (0.00 sec)

mysql> START TRANSACTION
    -> ;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * from car
    -> ;
+------+-------+
| id   | brand |
+------+-------+
|    1 | merc  |
|    2 | audi  |
+------+-------+
2 rows in set (0.00 sec)

mysql> SELECT * from car;
+------+-------+
| id   | brand |
+------+-------+
|    1 | merc  |
|    2 | audi  |
+------+-------+
2 rows in set (0.00 sec)

mysql>