#9.9
#9.9.1
select employees.first_name, employees.last_name, roles.name as role from roles
right join employees on employees.role_id = roles.id
where employees.active = True
order by employees.last_name, employees.first_name

#9.9.2
select genres.name as genres , count(artists.name) as artists from genres
left join artists on artists.genre_id = genres.id
group by genres.name
order by genres.name; 

#9.9.3
select categories.name as category, ifnull(sum(products.count),0)  as products  from categories
left join products on products.category = categories.id
group by categories.name
order by categories.name;

#9.9.4
select products.name, products.price, categories.name as category from products
left join categories on categories.id = products.category_id
order by products.name;

#9.9.5
select roles.name as name, count(employees.id) as employees from roles
left join employees on employees.role_id = roles.id
where employees.active = True or employees.active is NULL
group by roles.name
order by employees DESC, name
