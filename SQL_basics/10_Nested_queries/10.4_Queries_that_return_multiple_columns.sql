#10.4
#10.4.1
select products.id, products.name, products.price from products
join old_prices on old_prices.product_id = products.id
  where (products.id, products.price ) NOT IN 
      (select old_prices.product_id, old_prices.price from old_prices) 

order by products.id;

#10.4.2
select * from people
where (people.first_name, people.last_name, people.age) IN (select * from suspects)
order by people.id;

#10.4.3
select people.id, people.first_name, people.last_name from people
where people.first_name != ALL (select first_names.first_name from first_names)
or
people.last_name != ALL (select last_names.last_name from last_names)
order by people.last_name;

