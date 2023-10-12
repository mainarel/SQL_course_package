#7.3
#7.3.1
select * from tasks 
  where planned_date > NOW()
  order by planned_date;

#7.3.2
select first_name, last_name, DATE_FORMAT(birthday, '%d.%m.%Y')  as user_birthday from users
  where year(birthday) = '1994'
  order by birthday;

#7.3.3
select * from visits where
    DATE(date) = '2017-06-22' and
    TIME(date) between '12:00:00' and '12:59:59'
    order by date DESC;

#7.3.4
update calendar set visit_date = date_add(visit_date, interval "1:30" HOUR_MINUTE)
where DATE(visit_date) = '2017-05-14' and hour(visit_date) >= 13;
  
#7.3.5
select user_id, DATE_FORMAT(date_add(date, interval "3" HOUR), '%d.%m.%Y %H:%i') as visit_date from visits
order by date;
  
#7.3.6
select last_name, first_name, birthday from drivers 
where sex = 'm' and timestampdiff(year, birthday,'2018-08-07')>=18
order by last_name, first_name;
  
#7.3.7
select id, user_id, amount, date_format(date,'%d.%m.%Y %H:%i') as date from payments
where DATE like '2017-03%'
order by payments.date DESC
limit 5;

#7.3.8
select * from users where
weekday(birthday) in ('5','6')
order by birthday DESC;

