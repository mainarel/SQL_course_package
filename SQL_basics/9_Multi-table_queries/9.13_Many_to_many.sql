#9.13
#9.13.1
select users.id, users.first_name, users.last_name from users
JOIN users_roles ON users_roles.user_id = users.id
JOIN roles ON roles.id = users_roles.role_id
where roles.id = 3
order by users.last_name
  
#9.13.2
select roles.name as role,  count(users.id) as members from roles
join users_roles on users_roles.role_id = roles.id
join users on users.id  = users_roles.user_id
group by roles.name
order by roles.name;

#9.13.3
select users.id, users.first_name, users.last_name from users
join users_roles on users_roles.user_id = users.id
join roles on users_roles.role_id = roles.id
group by users.id
having count(roles.name) > 1
order by users.id;

#9.13.4
select users.id, users.first_name, users.last_name from users
left join users_roles on users_roles.user_id = users.id
left join roles on users_roles.role_id = roles.id
group by users.id
having count(roles.name) = 0
order by users.id;

#9.13.5
delete from users_roles where user_id = 2 and role_id = 1;
insert into  users_roles values (9,1);
insert into  users_roles values (10,3);

#9.13.6
select users.id, users.first_name, users.last_name, roles.name as role from users
left join users_rp on users_rp.user_id = users.id
left join roles on roles.id = users_rp.role_id
left join projects on projects.id = users_rp.project_id
where projects.id = 4
order by users.last_name;

#9.13.7
select orders.id, count(orders_details.order_id) as products, sum(products.price) as amount from orders
left join orders_details on orders_details.order_id = orders.id
left join products on products.id = orders_details.product_id
where orders.status = 'success'
group by orders.id
order by amount;

#9.13.8
select orders.id, orders.status, count(orders_details.order_id) as products from orders
left join orders_details on orders_details.order_id = orders.id
left join products on products.id = orders_details.product_id
where orders.status = 'success'
group by orders.id
having products = 0
order by orders.id;

#9.13.9
select songs.id, songs.name, albums.name as album, artists.name as artist, albums.year from songs
left join albums on albums.id = album_id
left join artists on artists.id = albums.artist_id
left join artists_genres on artists_genres.artist_id = artists.id
left join genres on genres.id = artists_genres.genre_id
where genres.id in(1, 6) and albums.year >= 2008
group by songs.id
order by albums.year, songs.id;

#9.13.10
select products.id, products.name, count(orders_details.product_id) as sold, sum(products.price) as total from products
left join orders_details on products.id = orders_details.product_id
left join orders on orders.id = orders_details.order_id
left join users on users.id = orders.user_id
where orders.status = 'success'
group by products.id
order by sold DESC, total DESC
limit 5;

#9.13.11
select products.id, products.name, products.price from products
left join orders_details on products.id = orders_details.product_id
left join orders on orders.id = orders_details.order_id
left join users on users.id = orders.user_id
where orders.status = 'new' and users.id = 10
order by products.id;

#9.13.12
select users.id, users.last_name, users.first_name, IFNULL(sum(products.price),0) as value from users
left join orders on orders.user_id = users.id
left join orders_details on orders_details.order_id = orders.id
left join products on products.id = orders_details.product_id
where orders.status = 'success' 
group by users.id
order by value DESC
limit 5;

#9.13.13


#9.13.14
