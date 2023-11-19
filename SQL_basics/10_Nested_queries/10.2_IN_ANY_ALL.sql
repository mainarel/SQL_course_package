#10.2
#10.2.1
select products.name, products.price from products
where products.price > ANY

(select products.price from products
where products.category_id = 3) and products.category_id = 9

order by products.name;

#10.2.2
  
select products.name, products.count from products 
  where products.count < ALL
(select products.count from products
where products.category_id = 9) and products.category_id = 3
  
order by products.name;
