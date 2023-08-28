#3.5
#3.5.1
create table users (
    id int unsigned,
    email varchar(100),
    date_joined date,
    last_activity datetime
    );
insert into users values
(1, 'user1@domain.com', '2014-12-12','2016-04-08 12:34:54'),
(2, 'user2@domain.com', '2014-12-12','2017-02-13 11:46:53'),
(3, 'user3@domain.com', '2014-12-13','2017-04-04 05:12:07');

#3.5.2
create table calendar (
    id int unsigned,
    user_id int unsigned,
    doctor_id int unsigned,
    visit_date datetime
    );
insert into calendar values
(1,1914,1,'2017-04-08 12:00:00'),
(2,12,1,'2017-04-08 12:30:00'),
(3,4641,2,'2017-04-09 09:00:00'),
(4,784,1,'2017-04-08 13:00:00'),
(5,15,2,'2017-04-09 10:00:00');

#3.5.3
create table temperature (
    id int unsigned,
    city_id int unsigned,
    temperature tinyint,
    wind_speed tinyint unsigned,
    mdate datetime
    );
insert into temperature values 
    (1 , 456,17 , 7, '2017-02-08 12:00:00'),
        ( 2, 456,19 , 6, '2017-02-08 12:10:00'),
            (3 , 456, 20,6 , '2017-02-08 12:20:00'),
                ( 4, 471,-7 ,12, '2017-02-08 12:20:01'),
                    ( 5, 44, -43,17 , '2017-02-08 12:23:12');

#3.5.4
create table arrival (
    id int unsigned,
    user_id int unsigned,
    a_date date,
    a_time time
    );
insert into arrival values
(1 , 10, '2017-03-09', '08:45:41'),
( 2, 12, '2017-03-09', '08:46:12'),
(3 ,7 , '2017-03-09', '08:53:01'),
( 4,31  ,'2017-03-09', '09:01:17');

#3.5.5
create table cars (
    id int unsigned,
    mark varchar(20),
    model varchar(20),
    year YEAR,
    mileage mediumint unsigned
    );
insert into cars values 
(1,	'Toyota','Camry','2015',32000),
(2,	'Mazda','CX-5','2016',17000),
(3,	'Nissan','Patrol','2016',60000);

#3.5.6
select * from cars where mileage < 50000 and year = 2016
order by mileage asc;
