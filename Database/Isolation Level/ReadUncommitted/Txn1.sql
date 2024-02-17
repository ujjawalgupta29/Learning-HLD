SELECT @@transaction_isolation

set autocommit = 0

SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

START TRANSACTION

SELECT * from car

UPDATE car
set brand = 'merc'
where id = 1

SELECT * from car
