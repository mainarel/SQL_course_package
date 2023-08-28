#1.4

SELECT * from products
order by price ASC;

select name, price from products
order by price DESC;

select * from products
where price >= 5000
order by price DESC;

select name, count, price from products
where price <3000
order by name;

select last_name, first_name from users
order by last_name, first_name;

select * from users
where salary >= 40000
order by salary DESC, first_name;

select * from users
where salary < 30000 and salary != 0
order by birthday;
