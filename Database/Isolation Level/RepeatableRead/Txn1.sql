SELECT @@transaction_isolation

set autocommit = 0

SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
START TRANSACTION

SELECT * from car

UPDATE car
set brand = 'honda'
where id = 1;

SELECT * from car

COMMIT

--execution

mysql> SELECT @@transaction_isolation
    -> 
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
    -> 
    -> ;
+------+-------+
| id   | brand |
+------+-------+
|    1 | merc  |
|    2 | audi  |
+------+-------+
2 rows in set (0.00 sec)

mysql> UPDATE car
    -> set brand = 'honda'
    -> where id = 1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * from car
    -> ;
+------+-------+
| id   | brand |
+------+-------+
|    1 | honda |
|    2 | audi  |
+------+-------+
2 rows in set (0.00 sec)

mysql>