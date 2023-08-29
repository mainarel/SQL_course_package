#4.1
#4.1.1
create table users (
    id int unsigned not null primary key,
    first_name varchar(50),
    last_name varchar(50),
    birthday date default NULL
    );
insert into users values
(1,	'Дмитрий',	'Иванов',	default),
(2,	'Анатолий',	'Белый',	default),
(3,	'Денис',	'Давыдов',	'1995-09-08');

#4.1.2
create table orders (
    id int unsigned not null primary key auto_increment,
    state varchar(8),
    amount decimal(8,2)
    );
insert into orders (state,amount) values 
(	'new',	1000.50),
(	'new',	3400.10),
(	'delivery',	7300.00);

#4.1.3
create table passports (
    series varchar(4) not null,
    number varchar(6) not null,
    user_id int unsigned not null,
    date_issue date,
    primary key (series, number)
    );
insert into passports values
('3206',	'147345',	15,	'2006-08-12'),
('3216',	'147345',	234,	'2016-09-23'),
('2405',	'147345',	1,	'2015-01-07'),
('5411',	'147345',	15,	'2008-03-03');

#4.1.4
create table files (
    id int unsigned not null primary key auto_increment,
    film_id int unsigned not null,
    size bigint unsigned,
    filename varchar(100)
    );
insert into files (film_id, size, filename) values 
	(356,	28668906700,	'silicon_valley_s02_1080p.zip'),
	(4514,	2684354560,	'dunkirk.mp4'),
	(87145,	734003200,	'milk.mp4');

#4.1.5
describe products;
select * from products where price >= 5000 order by id desc;

#4.1.6
select id, name from products where id % 2 = 0
order by price asc;

#4.1.7
update users set  first_name = 'Дмитрий' where id = 7;

#4.1.8
delete from orders where id in (3,4,7);
