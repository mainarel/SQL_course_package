#5.2
#5.2.1
alter table products
modify price mediumint unsigned not null default 0;
  
#5.2.2
alter table twitts
modify message VARCHAR(280) NOT NULL;
  
#5.2.3
alter table orders
modify state ENUM('new', 'delivery', 'completed', 'cancelled','awaiting_payment') not null default 'new';
  
#5.2.4
alter table users 
change name first_name VARCHAR(20) NOT NULL DEFAULT '',
add column last_name VARCHAR(20) NOT NULL DEFAULT '';
    
  
#5.2.5
alter table passports
modify  series varchar(4) not null,
modify number varchar(6) not null;
create unique index passport on passports (series,number);

#5.2.6
alter table logs
modify date DATETIME(3) NOT NULL;
