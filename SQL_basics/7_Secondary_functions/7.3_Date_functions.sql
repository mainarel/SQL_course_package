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

  
#7.3.5

  
#7.3.6

  
#7.3.7

  
#7.3.8
