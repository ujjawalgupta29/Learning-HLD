SELECT * from car

SHOW TRANSACTION ISOLATION LEVEL;

SET DEFAULT_TRANSACTION_ISOLATION TO 'serializable';

SELECT * from car

UPDATE car
set name  = 'marut-2'
where id  = 1