#1.5

select * from orders
where status != 'cancelled'
order by sum DESC
limit 5;

select name, price from products 
where count != 0
order by price ASC
limit 3;

select * from orders
where sum >=3000
order by date DESC
limit 3;

select * from products
order by price ASC
limit 5 offset 10;

select name, price from products
where count != 0
order by name ASC
limit 6 offset 12;
