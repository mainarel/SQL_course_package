#3.4
#3.4.1
create table users (
    id int unsigned,
    first_name varchar(50),
    last_name varchar(60),
    bio text
    );
insert into users values 
(1, 'Антон','Кулик','С отличием окончил 39 лицей.'),
(2, 'Сергей','Давыдов',''),
(3, 'Дмитрий','Соколов','Профессиональный программист.');

#3.4.2
create table books (
    id int unsigned,
    name varchar(100),
    description varchar(1000),
    isbn varchar(13)
    );

insert into books values
(1, 'MySQL 5','Хорошая книга.',5941579284 ),
(2,'Изучаем SQL','Полезная книга.', 5932860510),
(3,'Изучаем Python. 4-е издание','Подробная книга о Python.', 9785932861592);

#3.4.3
select * from cars where year>1990 and power >120 and mark = 'Nissan';

#3.4.4
create table apartments (
    id int unsigned,
    image varchar(100),
    price int unsigned,
    square tinyint unsigned
    );
insert into apartments values
( 1, '/apartments/1/cover.jpg',5250000,90 ),
( 2, '/apartments/2/cover-3.jpg',7500000,103),
( 3, '',2300000 ,56);

#3.4.5
select mark,model,year from cars where country = 'JP' or mark = 'Peugeot'
order by year DESC;

#3.4.6
create table files (
    id int unsigned,
    file_url varchar(500),
    file_path varchar(200),
    size bigint unsigned
);

insert into files values
(1, 'http://archives.com/archives/big_archive.zip', 'files/2018/02/archive.zip',81604378624 ),
(2, 'http://movies.com/movies/movie.mp4', '',0 ),
(3, 'http://movies.com/best-songs/song.mp3', 'files/2018/03/song.mp3',5242880 );
