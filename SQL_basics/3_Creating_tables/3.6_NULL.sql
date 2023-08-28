#3.6
#3.6.1
create table users (
    id int unsigned not null,
    email varchar(100) not null
);
    
insert into users values
(1,	'user1@domain.com'),
(2,	'user2@domain.com'),
(3,	'user3@domain.com'),
(4,	'user4@domain.com');

#3.6.2
create table products (
    id int unsigned not null,
    name varchar(120) not null,
    category_id int unsigned,
    price decimal(10,2) not null
    );
insert into products values
(1,	'Подгузники (12 шт)',	3,	700.00),
(2,	'Подгузники (24 шт)',	3,	1250.00),
(3,	'Спиннер',	NULL,	250.40),
(4,	'Пюре слива',	4,	47.50);

#3.6.3
select name,count,price from products  where  category_id is Null
order by price asc;
