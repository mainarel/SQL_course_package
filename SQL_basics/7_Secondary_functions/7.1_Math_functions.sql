#7.1
#7.1.1
select id, abs(temperature) as temperature from experiments where temperature not between -10 and 10;

#7.1.2
select name, round(rating,2) as rating from films
order by rating DESC 
limit 5;

#7.1.3
select id, truncate(amount*(1-personal_sale/100),0) as final_amount from bills;

#7.1.4
select * , round((initial_sum * power((1+percent/100), years)),2) as final_sum  from deposits;
  
#7.1.5
select id, first_name, email from users where id %3 =0;
  
#7.1.6
select id, comments, ceiling((comments / 10)) as pages from posts;
