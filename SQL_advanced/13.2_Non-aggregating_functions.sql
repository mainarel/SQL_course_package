#13.2
#13.2.1
select ROW_NUMBER() OVER() as place,
    films.name, films.rating from films
order by rating DESC;

#13.2.2
select ROW_NUMBER() OVER() as line_num, 
    orders_products.order_id, orders_products.product_id from orders_products
order by order_id, product_id;  

#13.2.3
select ROW_NUMBER() OVER() as num,
    products.name, products.count, products.price from products
order by products.price
LIMIT 5 OFFSET 10;
