#4.3
#4.3.1
create table orders (
    id int unsigned not null primary key auto_increment,
    user_id int unsigned not null,
    state varchar(8) not null default 'new',
    amount mediumint unsigned not null default 0,
    INDEX user_id (user_id),
    INDEX state (state)
    );

#4.3.2
create table products (
    id int unsigned not null primary key auto_increment,
    category_id int unsigned default null,
    name varchar(100) not null,
    count tinyint unsigned not null default 0,
    price decimal (10,2) not null default 0.00,
    INDEX category_id (category_id),
    INDEX price (price)
    );

#4.3.3
create table passports (
    id int unsigned not null primary key auto_increment,
    user_id int unsigned not null,
    series varchar(4) not null,
    number varchar(6) not null,
    state enum('active','expired') not null default 'active',
    UNIQUE key passport (series,number),
    INDEX series (series),
    INDEX number (number)
    );

#4.3.4
create table orders (
    id int unsigned not null primary key auto_increment,
    user_id int unsigned not null,
    city_id int unsigned not null,
    state enum('new','cancelled','delivered','completed') not null default 'new',
    amount mediumint unsigned not null default 0,
    
    INDEX main_search (city_id, state),
    INDEX user_id (user_id)
    );

