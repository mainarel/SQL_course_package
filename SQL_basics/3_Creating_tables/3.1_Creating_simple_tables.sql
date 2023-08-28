#3.1
#3.1.1
create table users (
    id int,
    first_name varchar(50),
    last_name varchar(50)
    );
insert into users values 
(1, 'Дмитрий','Иванов'),
(2, 'Анатолий','Белый'),
(3, 'Денис','Давыдов');

#3.1.2
create table orders (
    id int,
    state varchar(10),
    amount int
    );
insert into orders values 
(1, 'new', 10000),
(2, 'new', 3400),
(3, 'delivery', 7300);

#3.1.3
create table users (
    id int,
    first_name varchar(20),
    last_name varchar(50),
    birthday DATE
    );
insert into users values
    (1,'Дмитрий','Иванов','1995-08-12'),
    (2,'Светлана','Демчук','1993-07-08'),
    (3,'Денис','Антонов','1996-12-23');

#3.1.4
create table messages (
    id int,
    subject varchar(100),
    message text,
    add_date datetime,
    is_public bool
    );
insert into messages values
(1, 'Первое сообщение', 'Это мое первое сообщение!', '2016-12-12 14:16:00', True);

#3.1.5
create table rating (
    id int,
    car_id int,
    user_id int,
    rating float
    );
insert into rating values 
(1,1,1,4.54),
(2,1,2,3.34),
(3,2,3,4.19),
(4,2,11,1.12);
