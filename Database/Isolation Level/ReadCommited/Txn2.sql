SELECT @@transaction_isolation

set autocommit = 0

SET SESSION TRANSACTION ISOLATION LEVEL READ COMMITTED;

START TRANSACTION

select * from car