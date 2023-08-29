#6.1
#6.1.1
select * from users where last_name like 'А%'
order by last_name, first_name;
  
#6.1.2
select domain from domains where domain like '%.ru'
order by created;
  
#6.1.3
select domain from domains where domain like '%.___'
order by domain;
  
#6.1.4
select * from cars where color in ('желтый', 'зеленый') and mark = 'Ford' and number like '_1__ОР%';
  
#6.1.5
update wines set price = price - 1 where price like '%00';
  
#6.1.6
select * from cars where mark not like binary 'BMW' and mark like 'BMW';
