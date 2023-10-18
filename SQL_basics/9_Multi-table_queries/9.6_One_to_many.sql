#9.6
#9.6.1
select products.name, products.price, categories.name as category from products, categories
where products.category_id = categories.id
order by products.name;
  
#9.6.2
select users.last_name, users.first_name, sum(deals.amount) as total from users, deals
where users.id = deals.user_id
group by users.first_name, users.last_name
order by total desc;

#9.6.3
select date_format(orders.date,'%d.%m.%Y') as date, orders.amount, users.last_name, users.first_name from orders, users
where orders.user_id = users.id and orders.status = 'completed'
order by orders.date;
  
#9.6.4
select categories.name as category, count(products.name) as products from products, categories
where products.category_id = categories.id
group by categories.name
order by categories.name;

#9.6.5
select users.last_name, users.first_name, date_format(calendar.visit_date, '%H:%i') as visit_time from users, calendar
where (users.id = calendar.client_id) and calendar.doctor_id = 9 and calendar.visit_date like '2017-04-17%'
order by calendar.visit_date ASC
  
#9.6.6
select orders.* from orders, users
where users.id = orders.user_id and
      users.age >= 18 and
      users.sex = 'w' and
      orders.date like '2017-02-%'
order by orders.amount;
  
#9.6.7
select users.id, users.last_name, users.first_name from users, arrival
where users.id = arrival.user_id and
       a_date like '2017-03-%' and
       a_time > '09:00:00'
group by users.id;

#9.6.8
select id, name from categories
where parent_id = 5
order by name

#9.6.9
select products.id, products.name as name, categories.name as category, brands.name as brand from products, categories, brands
where products.count != 0 and
      products.brand = brands.id and 
      products.category = categories.id
order by products.price, products.id;

#9.6.10
select products.id, products.name, products.price from products, categories, brands
where products.count != 0 and
      products.brand = brands.id and 
      products.category = categories.id and
      brands.name = 'Mango' and
      categories.name in ('Джинсы','Юбки')
order by products.price, products.id;

#9.6.11
select products.id, products.name, products.price, categories.name as category from categories, products
where products.category_id = categories.id and
      (categories.name = 'Напитки' or categories.parent_id = 5)
order by categories.name, products.name;

#9.6.12
select books.id, books.name, books.price, CONCAT_WS(' ', authors.first_name, authors.last_name) as author 
from categories, authors, books
where books.category_id  = categories.id and
      books.author_id = authors.id and
      books.name like '%MySQL%'
order by books.name;
