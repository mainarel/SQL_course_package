#9.4
#9.4.1
select users.id, users.first_name, users.last_name, users_details.bio from users, users_details
where users.id = users_details.id;
  
#9.4.2
select products.id, products.name, products_details.description from products, products_details
where products.id = products_details.product_id
order by products.price;

#9.4.3
select users.id, users.first_name, users.last_name from users, users_p
where users.id = users_p.id and
    users.date_joined > '2016-01-01 00:00:00' and
        LEFT(users_p.series, 2) = '32'
order by users.last_name;

#9.4.4
update users, users_details set 
users.email = 'karina.n@domain.com',
users_details.last_name = 'Некифорова'

where users.id = users_details.id and
    users.id = 8;

#9.4.5
update products, products_details set products_details.description = ''
where products.id = products_details.product_id and
           products.active  = FALSE;

#9.4.6
delete from products
where active = FALSE or count = 0;

#9.4.7
DELETE FROM users_details
    USING users JOIN users_details
    WHERE 
    users_details.id = users.id AND 
    users.active = FALSE ;
