#3.2
#3.2.1
create table products (
    id int unsigned,
    name varchar(100),
    count tinyint unsigned,
    price mediumint unsigned
    );

insert into products values 
(1, 'Холодильник', 10, 50000),
(2, 'Стиральная машина', 0, 23570),
(3, 'Утюг', 3, 7300);

#3.2.2
create table orders (
    id int unsigned,
    product_id int unsigned,
    sale tinyint unsigned,
    amount decimal (8,2)
    );
insert into orders values
(1, 245, 0, 230.50),
(2,17,15,999999.99),
(3, 145677,21,1240.00);

#3.2.3
create table films (
    id int unsigned,
    name varchar(100),
    rating float unsigned,
    country varchar(2)
    
    );
insert into films values
(1, 'Большая буря', 3.45, 'RU'),
(2, 'Игра',7.5714, 'US'),
(3, 'Война', 10.0, 'RU');

#3.2.4
create table files (
    id int unsigned,
    filename varchar(255),
    size bigint unsigned,
    filetype varchar(3)
    );
insert into files values
(1, 'big_archive.zip',	81604378624, 'zip'),
(2, 'movie_37.mp4',7838315315, 'mp4'),
(3, 'music007.mp3',5242880, 'mp3');
