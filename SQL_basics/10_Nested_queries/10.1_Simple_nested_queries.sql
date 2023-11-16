#10.1
#10.1.1
select categories.id, categories.name from categories where categories.id IN (
    select products.category from products where products.count > 0
    )
    order by categories.name;

#10.1.2
select * from users where users.id in (
   select orders.user_id from orders where orders.amount = (
        select max(orders.amount) from orders where status = 'completed'
            ) and status = 'completed'
                )
order by users.id; 

#10.1.3
select products.id, products.name, products.price from products
  where products.category = 1 and products.price > (
    select avg(products.price) from products where products.category = 1
    )
order by products.price, products.id;
