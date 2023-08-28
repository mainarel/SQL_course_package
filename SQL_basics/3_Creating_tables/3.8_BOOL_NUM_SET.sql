#3.8
#3.8.1
create table articles (
    id int unsigned not null,
    name varchar(80),
    text TEXT,
    state enum('draft', 'correction','public')
    );
insert into articles values
(1,	'Новое в Python 3.6','','draft'),
(2,	'Оптимизация SQL запросов','При больших объемах данных ...','correction'),
(3,	'Транзакции в MySQL',	'По долгу службы мне приходится ...',	'public');

#3.8.2
create table rooms (
    id int unsigned not null,
    number tinyint unsigned not null,
    beds enum('1+1','2+1','2+2') not null,
    additional set('conditioner','bar','fridge','wifi')
    );

insert into rooms values
    (1,	10,	'1+1',	'conditioner,bar,wifi'),
    (2,	12,	'2+1',	 ''),
    (3,	24,	'2+2',	'fridge,bar,wifi');

#3.8.3
select id, first_name, last_name, birthday from users where pers_info is null or pers_info  = false
order by birthday;

#3.8.4
select name, price, country from products where country in ('RU','UA') and count > 0
order by country, price;

#3.8.5
select name, price, country from products where (find_in_set('RU',country) or find_in_set('BY',country)) and category_id is not null
order by price desc;

#3.8.6
select first_name, last_name, birthday, roles from users where sex = 'm' and active = true and find_in_set('manager', roles)
order by last_name, first_name;

#3.8.7
create table orders (
    id int unsigned not null,
    user_id int unsigned not null,
    amount decimal(10,2),
    created datetime not null,
    state enum('new', 'cancelled', 'in_progress', 'delivered', 'completed'),
    options set('pack', 'fitting', 'call',  'intercom')
    );
insert into orders values 

(456,	763,	14299.00,	'2018-02-01 17:45:59',	'completed',	'pack,call'),
(457,	1987,	249.50,	'2018-02-01 18:23:04',	'delivered',	'pack,intercom'),
(459,	78,	2300.12,	'2018-02-01 22:12:09',	'in_progress', '');

#3.8.8
select mark,model, year, power from cars where mark = 'Nissan' and country = 'JP'  and sold = FALSE and dealer_id is not null and year between 2010 and 2016
order by power;


