#4.2
#4.2.1
create table clients (
    id int unsigned not null primary key auto_increment,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) not null UNIQUE,
    passport varchar(10) not null UNIQUE
    );

#4.2.2
create table passports (
    id int unsigned not null primary key auto_increment,
    user_id int unsigned not null,
    series varchar(4) not null,
    number varchar(6) not null,
    state enum('active','expired') not null default 'active',
    UNIQUE key passport (series,number)
    );

#4.2.3
create table posts (
    id int unsigned not null primary key auto_increment,
    user_id int unsigned not null,
    name varchar(100) not null,
    pub_date datetime default null,
    slug varchar(50) not null,
    UNIQUE KEY uslug (user_id,slug)
    );

#4.2.4
create table products (
    id int unsigned not null primary key auto_increment,
    category_id int unsigned default null,
    name varchar(100) not null,
    slug varchar(50) not null,
    ean13 varchar(13) not null UNIQUE,
    UNIQUE KEY category_slug (category_id, slug)
    );
