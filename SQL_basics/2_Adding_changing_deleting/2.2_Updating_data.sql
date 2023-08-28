#2.2

update products set name = 'iMac' where name = 'IMAC';

update users set salary = salary * 1.1 where salary < 20000;

update orders set status ='new' where status IS NULL;

update orders set amount  = products_count * sum where amount = 0 or amount IS NULL;

update orders set status = 'success' where id = 5;

update products set price = price * 1.05 
order by price ASC
limit 5;

update products set price = price - 5000 
order by price DESC
limit 5;

update products set count  = count + 40 where name IN ('Сникерс', 'Марс');
