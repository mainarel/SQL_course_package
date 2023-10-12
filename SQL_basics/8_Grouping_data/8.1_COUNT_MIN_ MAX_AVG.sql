#8.1
#8.1.1
select count(id) as women from users where sex = 'w' and age < 30;
  
#8.1.2
select sum(amount) as income  from  orders where status = 'success' and date like '2015-01%';
  
#8.1.3
select max(amount) as max_losses from orders where status = 'cancelled';

#8.1.4
select round(avg(amount),2) as avg_check from orders where status = 'success' and year(date) = '2015';

#8.1.5
select floor(avg(age)) as age, count(id) as count from clients where sex = 'm';

#8.1.6
select date_format(min(date),'%d.%m.%Y') as date from orders where status = 'cancelled';

#8.1.7
select count(id) as users from users where activity_date >= '2018-04-08 12:36:17' - interval 5 minute;

#8.1.8
select ceiling(sum(amount*0.06)) as tax from transactions where quarter(date) = '1' and no_tax = 'False' and direction = 'in';
