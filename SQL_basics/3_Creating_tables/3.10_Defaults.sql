#3.10
#3.10.1
create table orders (
    id int unsigned not null,
    user_id int unsigned not null,
    amount mediumint unsigned not null default  0,
    created datetime not null,
    state enum('new', 'cancelled', 'in_progress', 'delivered', 'completed') not null default 'new'
   );
   
insert into orders values
(1,	56,	5400,	'2018-02-01 17:46:59',	'new'),
(2,	90,	249,	'2018-02-01 19:13:04',	'new'),
(3,	78,	2200,	'2018-02-01 22:43:09',	'new');

#3.10.2
create table users (
    id int unsigned not null,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    patronymic varchar(20) not null default '',
    is_active bool default true,
    is_superuser bool default false
    );
    
insert into users values

(1,	'Дмитрий',	'Иванов','',	 	TRUE,	FALSE),
(2,	'Анатолий',	'Белый',	'Сергеевич',	TRUE,	TRUE),
(3,	'Андрей',	'Крючков',	'', 	FALSE,	FALSE);

#3.10.3
create table products (
    id int unsigned not null,
    category_id int unsigned default null,
    name varchar(100) not null,
    count tinyint unsigned not null default 0,
    price decimal(10,2) not null default 0.00
    );

insert into products values
(1,	1,	'Кружка',	5,	45.90),
(2,	17,	'Фломастеры',	0,	78.00),
(3,	NULL,	'Сникерс',	12,	50.80);

#3.10.4
create table logs (
    date datetime not null default current_timestamp,
    browser varchar(500) not null default '',
    is_bot bool not null default FALSE
    );
    
insert into logs values
('2018-03-19 19:50:01',	'Chrome 64.0.1.417',	FALSE),
('2018-03-19 19:55:11',	'Firefox 55 (yandex bot)',	True),
('2018-03-19 19:56:12',	'Chrome 63.0.0.471',	FALSE);

#3.10.5
create table reviews (
    id int unsigned not null,
    user_id int unsigned not null,
    date datetime not null default current_timestamp,
    course enum('python', 'sql', 'all') not null default 'all',
    text text not null,
    public bool not null default FALSE
    );
    
insert into reviews values 
(1,	817,	'2018-01-11 19:50:01',	'python',	'Это прекрасная возможность получить новые очки в программировании. Доступное объяснение позволяет без проблем изучить желаемый материал',	TRUE),
(2,	1289,	'2018-02-16 08:55:11',	'python',	'Проект на мой взгляд отличный: 1. Короткие видеоролики без воды 2. Интересные задачи и практика 3. Очень быстрая обратная связь',	TRUE),
(3,	2914,	'2018-03-19 12:56:12',	'all',	'Хорошая затея. Но проект ещё нуждается в развитии.',	TRUE);
