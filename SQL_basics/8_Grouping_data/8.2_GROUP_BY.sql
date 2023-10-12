#8.2
#8.2.1
select sex, count(id) as members from users
group by sex;
  
#8.2.2
select age, count(id) as clients from users
group by age
order by age desc;
  
#8.2.3
select category_id,round(avg(price), 2) as avg_price from products
where count != 0
group by category_id
order by avg_price;

#8.2.4
select year(date) as year, sum(amount) as income from orders
where status = 'success'
group by year
order by year asc;

#8.2.5
select year(date) as year, month(date) as month, sum(amount) as income, count(id) as orders from orders
where status = 'success'
group by year, month
order by year, month;
