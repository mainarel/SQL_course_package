#5.1
#5.1.1
alter table articles
add column state enum('draft', 'correction', 'public') not null default 'draft';
  
#5.1.2
alter table articles
drop column state;
  
#5.1.3
alter table products
add column stock_place varchar(6) not null default '';
  
#5.1.4
alter table users add column (
    birthday date default null,
    last_visit datetime not null default current_timestamp,
    is_active bool not null default true,
    experience mediumint unsigned not null default 0
    );
  
#5.1.5
alter table films 
add column rating FLOAT NOT NULL DEFAULT 0;
update films set rating = (kinopoisk + imdb) / 2;
