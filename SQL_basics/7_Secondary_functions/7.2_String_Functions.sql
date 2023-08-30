#7.2
#7.2.1
select name, price from products
where char_length(name) between 5 and 10
order by name ASC;
  
#7.2.2
select user_id, concat(series, number) as passport from passports
order by user_id ASC;
  
#7.2.3
SELECT user_id, CONCAT_WS(" ", LPAD(series,4,'0'), LPAD(number,6,'0')) as passport FROM passports
order by series ASC, number ASC;
  
#7.2.4
select id, concat_ws(' ',last_name, first_name, patronymic) as name from users
where patronymic != ''
order by last_name, first_name, patronymic;
  
#7.2.5
select * from users where age >= 18 and last_name like '%ова'
order by age, last_name;
  
#7.2.6
select id, LEFT(passport,4) as series, RIGHT(passport,6) as number from users
where passport is not null;
  
#7.2.7
update products set name = trim(name);
  
#7.2.8
update domains set domain = trim(TRAILING '.' from domain);
  
#7.2.9
alter table users
add column (first_name varchar(50) not null default '',
            last_name varchar(50) not null default '');
update users set first_name = SUBSTRING_INDEX(name,' ',1);
update users set last_name = SUBSTRING_INDEX(name,' ',-1);    

alter table users
drop column name;
