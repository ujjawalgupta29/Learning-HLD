SELECT * from car

SHOW TRANSACTION ISOLATION LEVEL;

SET DEFAULT_TRANSACTION_ISOLATION TO 'serializable';

START TRANSACTION

UPDATE car
set name  = 'marut-1'
where id  = 1

select * from car

COMMIT