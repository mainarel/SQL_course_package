#1.2

SELECT * FROM orders WHERE status != 'cancelled';

SELECT id, sum FROM orders WHERE products_count >3;

SELECT  * FROM orders WHERE status = 'cancelled';

SELECT * FROM orders WHERE status IN ('cancelled','returned');

SELECT * FROM orders where sum > 3000 or products_count >= 3;

select * from orders where sum >=3000 and products_count <3;

select * from orders where sum between 3000 and 10000 and status = 'cancelled';

select * from orders where sum not between 3000 and 10000 and status = 'cancelled';
